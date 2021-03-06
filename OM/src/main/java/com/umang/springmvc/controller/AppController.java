package com.umang.springmvc.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.umang.springmvc.client.ItemCategoryClient;
import com.umang.springmvc.client.ItemsClient;
import com.umang.springmvc.client.SortOrder;
import com.umang.springmvc.client.StockClient;
import com.umang.springmvc.common.AESCryptUtils;
import com.umang.springmvc.dao.ContactDAO;
import com.umang.springmvc.entities.AppItemList;
import com.umang.springmvc.entities.AppUser;
import com.umang.springmvc.entities.Item;
import com.umang.springmvc.entities.ItemListWithCategory;
import com.umang.springmvc.entities.ItemType;
import com.umang.springmvc.entities.Order;
import com.umang.springmvc.model.CategoryDto;
import com.umang.springmvc.model.ItemsCategoryResponses;
import com.umang.springmvc.model.ItemsDto;
import com.umang.springmvc.model.StockDto;
import com.umang.springmvc.model.StockResponse;
import com.umang.springmvc.model.StockResponses;
import com.umang.springmvc.webservices.EmpRestURIConstants;
import com.umang.springmvc.webservices.Employee;
import com.umang.springmvc.webservices.ManuscriptService;
import com.umang.springmvc.webservices.ManuscriptServiceImpl;

@Controller
@SessionAttributes("appUser")
public class AppController {

	@Autowired
	ManuscriptService manuscriptService;

	@Autowired
	ContactDAO contactDao;

	AESCryptUtils encription = new AESCryptUtils();

	private static final Logger logger = LogManager.getLogger(ManuscriptServiceImpl.class);
	Map<Integer, Employee> empData = new HashMap<Integer, Employee>();

	private ItemsClient ItemClient = new ItemsClient();

	private StockClient stockClient = new StockClient();

	private ItemCategoryClient itemCatClient = new ItemCategoryClient();

	@ModelAttribute("appUser")
	public AppUser setUpUserForm() {
		return new AppUser();
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView homePage(ModelMap model, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, RuntimeException, IOException {
		AppUser user = (AppUser) request.getSession().getAttribute("user");
		ItemsCategoryResponses categoryResponses = itemCatClient.findAllSorted("category_name", SortOrder.ASC,
				(user == null ? null : (user == null ? null : user.getRouting())));
		List<CategoryDto> categoryDtos = categoryResponses.getData();
		StockResponses stocRes = stockClient.findAllSortedByValue("item_name", SortOrder.ASC,
				(user == null ? null : user.getRouting()));
		model.put("item_categories", categoryDtos);
		model.put("stock_list", divideList(stocRes.getData()));
		//model.put("specialOffer_list", stocRes.getData().stream().limit(9).collect(Collectors.toCollection(() -> featuredArtifactList)));
		return new ModelAndView("home", "", "");
	}

	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	public ModelAndView itemByCat(ModelMap model, @RequestParam("id") Integer id, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, RuntimeException, IOException {
		AppUser user = (AppUser) request.getSession().getAttribute("user");
		ItemsCategoryResponses categoryResponses = itemCatClient.findAllSorted("category_name", SortOrder.ASC,
				(user == null ? null : user.getRouting()));
		List<CategoryDto> categoryDtos = categoryResponses.getData();
		StockResponses stocRes = stockClient.findAllSortedByValue("item_name", SortOrder.ASC,
				(user == null ? null : user.getRouting()));
		model.put("item_categories", categoryDtos);
		List<StockDto> stockDtos = stocRes.getData();
		model.put("stock_list", divideList(stockDtos.parallelStream()
				.filter(ST -> ST.getDto().getProductCat().getId() == id).collect(Collectors.toList())));
		return new ModelAndView("home", "", "");
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView itemDetailt(ModelMap model, @RequestParam("id") Integer id, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, RuntimeException, IOException {
		AppUser user = (AppUser) request.getSession().getAttribute("user");
		StockResponse stocRes = stockClient.findById(id, (user == null ? null : user.getRouting()));
		model.put("stock", stocRes.getData());
		return new ModelAndView("detail", "stock", stocRes.getData());
	}

	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
	public String lockScreen(ModelMap model) {
		return "admin";
	}

	@RequestMapping(value = { "/CA" }, method = RequestMethod.GET)
	public String clientlockScreen(ModelMap model) {
		return "cadmin";
	}

	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET)
	public String checkout(ModelMap model, HttpServletRequest request) {
		HttpSession objHttpSession = request.getSession(true);
		Object obj = objHttpSession.getAttribute("user");
		AppUser user = (AppUser) obj;
		if (user != null) {
			return "redirect:/shopping-cart";
		} else {
			return "checkout";
		}
	}

	@RequestMapping(value = { "/shopping-cart" }, method = RequestMethod.GET)
	public String shoppingCart(ModelMap model) {
		return "shoppingcart";
	}

	@RequestMapping(value = { "/signIn" }, method = RequestMethod.GET)
	public String signIn(ModelMap model) {
		return "signIn";
	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(ModelMap model) {
		return "contact";
	}

	@RequestMapping(value = { "/dashboard" }, method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		return "dashboard";
	}

	@RequestMapping(value = { "/products" }, method = RequestMethod.GET)
	public String productsPage(ModelMap model) {
		return "products";
	}

	@RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
	public String contactUsPage(ModelMap model) {
		return "contactus";
	}

	@RequestMapping(value = { "/items" }, method = RequestMethod.GET)
	public ModelAndView itemBook(ModelMap model) {
		List<Item> itemList = contactDao.itemList();
		return new ModelAndView("items", "itemList", itemList);
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.GET)
	public ModelAndView createProduct(ModelMap model) {
		List<ItemType> types = contactDao.ItemTypeList();
		// model.addAttribute("types",types);
		// return "create";
		return new ModelAndView("create", "types", types);
	}

	@RequestMapping(value = { "/createUser" }, method = RequestMethod.GET)
	public String createUser(ModelMap model) {
		return "createUser";
	}

	@RequestMapping(value = EmpRestURIConstants.ITEM_TYPE, method = RequestMethod.GET)
	public @ResponseBody ItemType saveType(ModelMap model, @PathVariable("name") String name,
			@PathVariable("status") String status) {
		ItemType type = new ItemType();
		try {
			int i = contactDao.insertType(name, status);
			if (i > 0) {
				type.setStatus("Success");
			} else {
				type.setStatus("Fail");
			}
		} catch (Exception e) {
			type.setStatus("Fail");
			return type;
			// e.printStackTrace();
		}
		// return "createUser";
		return type;
	}

	@RequestMapping(value = { "/itemTypeList" }, method = RequestMethod.GET)
	public ModelAndView itemTypeList(ModelMap model, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, RuntimeException, IOException {
		AppUser user = (AppUser) request.getSession().getAttribute("user");
		ItemsCategoryResponses categoryResponses = itemCatClient.findAllSorted("category_name", SortOrder.ASC,
				(user == null ? null : user.getRouting()));
		List<CategoryDto> categoryDtos = categoryResponses.getData();
		return new ModelAndView("itemTypeList", "itemTypeList", categoryDtos);
	}

	@RequestMapping(value = EmpRestURIConstants.DELETE_USR, method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody AppUser deleteUser(ModelMap model, @PathVariable("id") int id) {
		AppUser user = new AppUser();
		try {
			int i = contactDao.delete(id);
			if (i > 0) {
				user.setStatus("Success");
			} else {
				user.setStatus("Fail");
			}

		} catch (Exception e) {
			user.setStatus("Fail");
			return user;
		}
		return user;
	}

	@RequestMapping(value = { "/currentReq" }, method = RequestMethod.GET)
	public String currentReqList(ModelMap model) {
		return "currentReq";
	}

	@RequestMapping(value = { "/previousReq" }, method = RequestMethod.GET)
	public String previousReqList(ModelMap model) {
		return "previousReq";
	}

	@RequestMapping(value = { "/orderList" }, method = RequestMethod.GET)
	public String orderList(ModelMap model) {
		return "orderList";
	}

	@RequestMapping(value = { "/invoiceList" }, method = RequestMethod.GET)
	public String invoiceList(ModelMap model) {
		return "invoiceList";
	}

	@RequestMapping("/index")
	public String handle(ModelMap model, @RequestParam String password, @ModelAttribute("appUser") AppUser user,
			HttpSession session) {
		try {
			user = contactDao.getUser(password, "");
			if (user == null) {
				model.addAttribute("error", "Your mobile no. is not authorized. Please contact with Admin team!");
				return "redirect:/admin";
			} else {
				session.setAttribute("user", user);
				if (user.getUserType().equalsIgnoreCase("Admin")) {
					return "redirect:/dashboard";
				} else if (user.getUserType().equalsIgnoreCase("Customer")) {
					return "redirect:/customerdashboard";
				}else if (user.getUserType().equalsIgnoreCase("Client")) {
					return "redirect:/clientdashboard";
				} else {
					return "redirect:/dashboard";
				}
			}
		} catch (Exception e) {
			model.addAttribute("error", "Invalid. Please try again!");
			return "redirect:/";
		}
	}

	@RequestMapping(value = EmpRestURIConstants.DUMMY_EMP, method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody Employee getDummyEmployee() {
		logger.info("Start getDummyEmployee");
		Employee emp = new Employee();
		emp.setId(9999);
		emp.setName("Dummy");
		emp.setCreatedDate(new Date());
		empData.put(9999, emp);
		return emp;
	}

	@RequestMapping(value = EmpRestURIConstants.GET_EMP, method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody AppUser getEmployee(@PathVariable("id") String empNo) {
		String otp = encription.generaeOTP();
		logger.info("Start getEmployee. ID=" + empNo);
		AppUser user = new AppUser();
		try {
			user.setOTP(otp);
			user.setUsername(empNo);
			user.setStatus("1");
			user.setPassword(encription.encrypt(empNo));
			user.setUserType("App");
			int i = contactDao.insertUserData(user);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	@RequestMapping(value = EmpRestURIConstants.GET_OTP, method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody AppUser getOTPValidation(@PathVariable("id") String OTP,
			@PathVariable("userid") String userId) {
		List<Employee> employeeLst = new ArrayList<Employee>();
		String otp = encription.generaeOTP();
		logger.info("Start getEmployee. ID=" + OTP);
		AppUser user = new AppUser();
		try {
			user = contactDao.getUser(userId, OTP);
			if (user.getOTP().equals(OTP)) {
				user.setStatus("Success");
			} else {
				user.setUsername(OTP);
				user.setStatus("Fail");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	@RequestMapping(value = { "/create/item/save" }, method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody Item itemSave(ModelMap model, @RequestBody Item item, HttpServletRequest request,
			HttpServletResponse response) {
		Item iteamValue = new Item();
		try {
			String rpath = request.getRealPath("/");
			rpath = rpath + "/" + item.getImagepath(); // whatever path you used for storing the file
			Path path = Paths.get(rpath);
			String dataDirectory = request.getServletContext().getRealPath("/WEB-INF/views/appImage/");
			Path file = Paths.get(dataDirectory, item.getImagepath());
			long result = contactDao.saveItem(item);
			if (result > 0) {
				iteamValue.setStatus("Success");
			} else {
				iteamValue.setStatus("Fail");
			}

		} catch (Exception e) {
			e.printStackTrace();
			iteamValue.setStatus("Fail");
			return iteamValue;
			// e.printStackTrace();
		}
		return iteamValue;
	}

	@RequestMapping(value = EmpRestURIConstants.GET_ITEMLIST, produces = "application/json")
	public ResponseEntity<ItemListWithCategory> appitemlist(@PathVariable("category") String category) {
		List<AppItemList> itemList = contactDao.appitemList(category, 0);
		ItemListWithCategory item = new ItemListWithCategory();
		if (itemList.size() > 0) {
			item.setItemData(itemList);
			item.setStatus("Success");
			return new ResponseEntity<ItemListWithCategory>(item, HttpStatus.OK);
		} else {
			item.setStatus("404" + "Not Found");
		}
		return new ResponseEntity(HttpStatus.NOT_FOUND);
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
	@ResponseBody
	public List<String> saveOrder(@RequestBody Order order, ModelMap model) {
		List<String> response = new ArrayList<String>();
		String orderNo = RandomStringUtils.random(12, "123456789012abcdefghijklmnopqrstuvwxyz").toUpperCase();
		response.add("Refrence No.: " + orderNo);
		response.add("Status : " + "Success");
		return response;
	}

	@RequestMapping("/invalidate")
	public String destroySession(HttpServletRequest request) {
		AppUser user =(AppUser)request.getSession().getAttribute("user");
		if(user.getUserType().equals("Client")) {
			user= new AppUser();
			request.getSession().invalidate();
			return "redirect:/CA";
		}else if(user.getUserType().equals("Customer")){
			user= new AppUser();
			request.getSession().invalidate();
			return "redirect:/admin";
		}else {
			return "redirect:/";
		}
		//request.getSession().invalidate();
		
		//user= new AppUser();
		//return "redirect:/";
	}

	/**
	 * API Realated Screen
	 * 
	 * @throws IOException
	 * @throws RuntimeException
	 * @throws JsonMappingException
	 * @throws JsonParseException
	 */
	@RequestMapping(value = { "/itemCreate" }, method = RequestMethod.GET)
	public ModelAndView itemCreate(ModelMap model, @ModelAttribute("item") ItemsDto item, HttpServletRequest request)
			throws JsonParseException, JsonMappingException, RuntimeException, IOException {
		AppUser user = (AppUser) request.getSession().getAttribute("user");
		ItemsCategoryResponses categoryResponses = itemCatClient.findAllSorted("category_name", SortOrder.ASC,
				(user == null ? null : user.getRouting()));
		List<CategoryDto> categoryDtos = categoryResponses.getData();
		return new ModelAndView("itemCreate", "types", categoryDtos);
	}

	private static <T> List<List<T>> divideList(List<T> dataList) {
		int size = dataList.size();
		if (size > 15)
			return divideList(dataList, 4);
		else if (size > 11)
			return divideList(dataList, 3);
		else if (size > 7)
			return divideList(dataList, 2);
		else
			return divideList(dataList, 1);
	}

	/**
	 * This method is used to divide a list of elements in to multiple lists of
	 * elements
	 * 
	 * 
	 * @param List<T> to divide
	 * @param int     part <br>
	 *                parts how many the given list is going to device
	 * 
	 * @return List<List<T>> sublist
	 * 
	 *         If given list size is greater or equal to given part, division will
	 *         take place else returns only one part of list
	 **/
	public static <T> List<List<T>> divideList(List<T> dataList, int part) {
		List<List<T>> subList = new ArrayList<>();
		if (dataList != null && dataList.size() > 0) {
			if (dataList.size() >= part) {
				int reminder = dataList.size() % part;
				int totalSizeOfList = dataList.size();
				totalSizeOfList = totalSizeOfList - reminder;
				int totalPart = 0;

				if (totalSizeOfList >= part) {
					totalPart = totalSizeOfList / part;

					int from = 0;
					int to = totalPart + reminder;

					for (int i = 0; i < part; i++) {
						subList.add(dataList.subList(from, to));

						from = to;
						to = to + totalPart;
					}

				} else {
					subList.add(dataList);
				}

			} else
				subList.add(dataList);
		}

		return subList;
	}
}