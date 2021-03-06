package com.dcs.balaji.controller;

import java.io.InputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.dcs.balaji.constant.DCSBalajiConstant;
import com.dcs.balaji.model.ConsigneeDto;
import com.dcs.balaji.model.CustomerDto;
import com.dcs.balaji.model.OtpDto;
import com.dcs.balaji.model.VerifyOtpDto;
import com.dcs.balaji.service.CustomerService;
import com.dcs.common.annotation.EnableSwagger;
import com.dcs.common.constant.APIConstant;
import com.dcs.common.constant.HeaderConstant;
import com.dcs.common.file.response.CommonFileUploadResponse;
import com.dcs.common.model.CommonResponseDto;
import com.dcs.common.model.CommonResponsesDto;
import com.dcs.datasource.enm.SortOrder;
import com.dcs.logging.annotation.LogAfter;
import com.dcs.logging.annotation.LogBefore;
import com.dcs.logging.annotation.LogExceptionaly;

import io.swagger.annotations.Api;

@RestController
@CrossOrigin
@RequestMapping(value = DCSBalajiConstant.Symbol.SLASH + DCSBalajiConstant.APIConstant.PATH_PATTERN
		+ DCSBalajiConstant.Symbol.SLASH + DCSBalajiConstant.RequestPath.CUST)
@Api(value = "Customer Master Controller")
@EnableSwagger
public class CustomerController {

	@Autowired
	private CustomerService service;

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */

	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = APIConstant.APIPath.SAVE, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> save(@Valid @RequestBody CustomerDto dto, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.loadCustomer(service.saveCustomer(dto)));
		return response;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponsesDto<T>}
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = APIConstant.APIPath.SAVE_ALL, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> saveAll(@Valid @RequestBody List<CustomerDto> dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.loadCustomer(service.saveCustomer(dto)));
		return response;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = APIConstant.APIPath.UPDATE, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> update(@Valid @RequestBody CustomerDto dto, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.loadCustomer(service.updateCustomer(dto)));
		return response;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = APIConstant.APIPath.UPDATE_ALL, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> updateAll(@Valid @RequestBody List<CustomerDto> dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		service.updateCustomer(dto);
		response.setData(dto);
		return response;
	}

	/**
	 * 
	 * @param ID
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = APIConstant.APIPath.ACTIVE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> active(@PathVariable(APIConstant.PathVariable.ID) Integer ID,
			HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.activate(new HashSet<>(Arrays.asList(ID))).get(0));
		return response;
	}

	/**
	 * 
	 * @param IDS
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = APIConstant.APIPath.ACTIVE_ALL, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> activeAll(@PathVariable(APIConstant.PathVariable.IDS) Set<Integer> IDS,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.activate(IDS));
		return response;
	}

	/**
	 * 
	 * @param ID
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@DeleteMapping(value = APIConstant.APIPath.DEACTIVE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> deactive(@PathVariable(APIConstant.PathVariable.ID) Integer ID,
			HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.deactivate(new HashSet<>(Arrays.asList(ID))).get(0));
		return response;
	}

	/**
	 * 
	 * @param IDS
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@DeleteMapping(value = APIConstant.APIPath.DEACTIVE_ALL, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> deactiveAll(@PathVariable(APIConstant.PathVariable.IDS) Set<Integer> IDS,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.deactivate(IDS));
		return response;
	}

	/**
	 * 
	 * @param ID
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@DeleteMapping(value = APIConstant.APIPath.DELETE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<Integer> delete(@PathVariable(APIConstant.PathVariable.ID) Integer ID,
			HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<Integer> response = new CommonResponseDto<>();
		response.setData(service.delete(new HashSet<>(Arrays.asList(ID))));
		return response;
	}

	/**
	 * 
	 * @param IDS
	 * @param request
	 * @return
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@DeleteMapping(value = APIConstant.APIPath.DELETE_MULTIPLE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<Integer> deleteAll(@PathVariable(APIConstant.PathVariable.IDS) Set<Integer> IDS,
			HttpServletRequest request) {
		CommonResponseDto<Integer> response = new CommonResponseDto<>();
		response.setData(service.delete(IDS));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param TEXT
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.SEARCH, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> search(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(APIConstant.PathVariable.TEXT) String TEXT, HttpServletRequest request)
			throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.search(TEXT, ONLY_ACTIVE));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param ID
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.FIND, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(APIConstant.PathVariable.ID) Integer ID, HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.loadCustomer(ID));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param PAGE
	 * @param SIZE
	 * @param SORT_BY
	 * @param SORT_ORDER
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.FIND_ALL_WITH_PAGE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.PAGE, required = false) Integer PAGE,
			@PathVariable(value = APIConstant.PathVariable.SIZE, required = false) Integer SIZE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.findCustomer(PAGE, SIZE, SORT_BY, SORT_ORDER, ONLY_ACTIVE));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param SORT_BY
	 * @param SORT_ORDER
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.FIND_ALL_SORTED, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.findCustomer(SORT_BY, SORT_ORDER, ONLY_ACTIVE));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param PAGE
	 * @param SIZE
	 * @param SORT_BY
	 * @param SORT_ORDER
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.FIND_ALL_WITH_PAGE_AND_INCLUSION, produces = {
			MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> findIncluding(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.PAGE, required = false) Integer PAGE,
			@PathVariable(value = APIConstant.PathVariable.SIZE, required = false) Integer SIZE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.findCustomer(PAGE, SIZE, SORT_BY, SORT_ORDER, ONLY_ACTIVE));
		return response;
	}

	/**
	 * 
	 * @param ONLY_ACTIVE
	 * @param SORT_BY
	 * @param SORT_ORDER
	 * @param request
	 * @return
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.FIND_ALL_SORTED_AND_INCLUSION, produces = {
			MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public CommonResponsesDto<CustomerDto> findSorted(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CustomerDto> response = new CommonResponsesDto<>();
		response.setData(service.findCustomer(SORT_BY, SORT_ORDER, ONLY_ACTIVE));
		return response;
	}

	/**
	 * 
	 * @param EXCEL_TYPE
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = APIConstant.APIPath.GET_EXCEL_TEMPLATE, produces = { MediaType.APPLICATION_OCTET_STREAM_VALUE,
			MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public ResponseEntity<InputStreamResource> getTemplate(
			@PathVariable(value = APIConstant.PathVariable.EXCEL_TYPE, required = false) String EXCEL_TYPE,
			HttpServletRequest request) throws Exception {
		return null;
	}

	/**
	 * 
	 * @param EXCEL_FILE
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = APIConstant.APIPath.UPLOAD_EXCEL, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public ResponseEntity<InputStreamResource> uploadExcel(
			@RequestPart(APIConstant.RequestPart.EXCEL) MultipartFile EXCEL_FILE, HttpServletRequest request)
			throws Exception {
		return null;
	}

	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = APIConstant.APIPath.SHOP_IMAGE, consumes = {
			MediaType.MULTIPART_FORM_DATA_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CommonFileUploadResponse> uploadShopImage(
			@RequestParam(APIConstant.RequestPart.ID) Integer ID,
			@RequestPart(APIConstant.RequestPart.IMAGE) MultipartFile file, HttpServletRequest request)
			throws Exception {
		CommonResponseDto<CommonFileUploadResponse> dto = new CommonResponseDto<>();
		dto.setData(service.uploadShopImage(file, ID));
		return dto;
	}

	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = APIConstant.APIPath.PERSON_IMAGE, consumes = {
			MediaType.MULTIPART_FORM_DATA_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CommonFileUploadResponse> uploadPersonImage(
			@RequestParam(APIConstant.RequestPart.ID) Integer ID,
			@RequestPart(value = APIConstant.RequestPart.IMAGE, required = false) MultipartFile file,
			HttpServletRequest request) throws Exception {
		CommonResponseDto<CommonFileUploadResponse> dto = new CommonResponseDto<>();
		dto.setData(service.uploadPersonImage(file, ID));
		return dto;
	}

	/**
	 * 
	 * @param EXCEL_FILE
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = DCSBalajiConstant.APIPath.DOWNLOAD_FILE, produces = { MediaType.ALL_VALUE })
	public ResponseEntity<InputStreamResource> getImage(
			@PathVariable(APIConstant.PathVariable.IMAGE_KEY) String IMAGE_KEY, HttpServletRequest request)
			throws Exception {
		InputStream in = service.loadImage(IMAGE_KEY);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return ResponseEntity.ok().headers(headers).body(new InputStreamResource(in));

	}

	/**
	 * 
	 * @param EXCEL_FILE
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = DCSBalajiConstant.APIPath.GET_OTP, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<OtpDto> getOtp(@PathVariable("MOB") String MOB, HttpServletRequest request)
			throws Exception {
		CommonResponseDto<OtpDto> dto = new CommonResponseDto<>();
		dto.setData(service.getOtp(MOB));
		return dto;
	}

	/**
	 * 
	 * @param EXCEL_FILE
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = DCSBalajiConstant.APIPath.VERIFY_OTP, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<VerifyOtpDto> verifyOtp(@PathVariable("OTP") Integer OTP, @PathVariable("MOB") String MOB,
			HttpServletRequest request) throws Exception {
		CommonResponseDto<VerifyOtpDto> dto = new CommonResponseDto<>();
		dto.setData(service.verifyOtp(OTP, MOB));
		return dto;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */

	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = DCSBalajiConstant.APIPath.SAVE_CONSIGNEE, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<ConsigneeDto> saveConsignee(@Valid @RequestBody ConsigneeDto dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<ConsigneeDto> response = new CommonResponseDto<>();
		response.setData(service.saveConsignee(dto));
		return response;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PutMapping(value = DCSBalajiConstant.APIPath.UPDATE_CONSIGNEE, consumes = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<ConsigneeDto> updateConsignee(@Valid @RequestBody ConsigneeDto dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<ConsigneeDto> response = new CommonResponseDto<>();
		response.setData(service.updateConsignee(dto));
		return response;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = DCSBalajiConstant.APIPath.GET_CONSIGNEE, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<ConsigneeDto> getConsignee(@PathVariable("MOB") String MOB, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<ConsigneeDto> response = new CommonResponseDto<>();
		response.setData(service.getConsignee(MOB));
		return response;
	}

	@LogBefore
	@LogAfter
	@LogExceptionaly
	@PostMapping(value = DCSBalajiConstant.APIPath.PUSH_CONSIGNEE_IMAGE, consumes = {
			MediaType.MULTIPART_FORM_DATA_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CommonFileUploadResponse> uploadConsigneeImage(
			@RequestParam(APIConstant.RequestPart.ID) Integer ID,
			@RequestPart(value = APIConstant.RequestPart.IMAGE, required = false) MultipartFile file,
			HttpServletRequest request) throws Exception {
		CommonResponseDto<CommonFileUploadResponse> dto = new CommonResponseDto<>();
		dto.setData(service.uploadConsigneeImage(file, ID));
		return dto;
	}

	/**
	 * 
	 * @param dto
	 * @param request
	 * @return {@link CommonResponseDto<T>}
	 * @throws RuntimeException
	 */
	@LogBefore
	@LogAfter
	@LogExceptionaly
	@GetMapping(value = DCSBalajiConstant.APIPath.GET_CUSTOMER, produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public CommonResponseDto<CustomerDto> getCustomer(@PathVariable("MOB") String MOB, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<CustomerDto> response = new CommonResponseDto<>();
		response.setData(service.getCustomer(MOB));
		return response;
	}

}
