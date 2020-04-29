package com.dcs.balaji.controller;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dcs.balaji.constant.DCSBalajiConstant;
import com.dcs.balaji.model.CategoryDto;
import com.dcs.balaji.service.CategoryService;
import com.dcs.common.annotation.EnableSwagger;
import com.dcs.common.constant.APIConstant;
import com.dcs.common.constant.HeaderConstant;
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
		+ DCSBalajiConstant.Symbol.SLASH + DCSBalajiConstant.RequestPath.CATEGORY)
@Api(value = "Category Master Controller")
@EnableSwagger
public class CategoryController {

	@Autowired
	private CategoryService service;

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
	public CommonResponseDto<CategoryDto> save(@Valid @RequestBody CategoryDto dto, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<CategoryDto> response = new CommonResponseDto<>();
		response.setData(service.loadCategory(service.saveCategory(dto)));
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
	public CommonResponsesDto<CategoryDto> saveAll(@Valid @RequestBody List<CategoryDto> dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		response.setData(service.loadCategory(service.saveCategory(dto)));
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
	public CommonResponseDto<CategoryDto> update(@Valid @RequestBody CategoryDto dto, HttpServletRequest request)
			throws RuntimeException {
		CommonResponseDto<CategoryDto> response = new CommonResponseDto<>();
		response.setData(service.loadCategory(service.updateCategory(dto)));
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
	public CommonResponsesDto<CategoryDto> updateAll(@Valid @RequestBody List<CategoryDto> dto,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		service.updateCategory(dto);
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
	public CommonResponseDto<CategoryDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(APIConstant.PathVariable.ID) Integer ID, HttpServletRequest request) throws RuntimeException {
		CommonResponseDto<CategoryDto> response = new CommonResponseDto<>();
		response.setData(service.loadCategory(ID));
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
	public CommonResponsesDto<CategoryDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.PAGE, required = false) Integer PAGE,
			@PathVariable(value = APIConstant.PathVariable.SIZE, required = false) Integer SIZE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		response.setData(service.findCategory(PAGE, SIZE, SORT_BY, SORT_ORDER, ONLY_ACTIVE));
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
	public CommonResponsesDto<CategoryDto> find(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		response.setData(service.findCategory(SORT_BY, SORT_ORDER, ONLY_ACTIVE));
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
	public CommonResponsesDto<CategoryDto> findIncluding(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.PAGE, required = false) Integer PAGE,
			@PathVariable(value = APIConstant.PathVariable.SIZE, required = false) Integer SIZE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		response.setData(service.findCategory(PAGE, SIZE, SORT_BY, SORT_ORDER, ONLY_ACTIVE));
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
	public CommonResponsesDto<CategoryDto> findSorted(
			@RequestHeader(value = HeaderConstant.ONLY_ACTIVE, required = false, defaultValue = "false") boolean ONLY_ACTIVE,
			@PathVariable(value = APIConstant.PathVariable.SORT_BY, required = false) String SORT_BY,
			@PathVariable(value = APIConstant.PathVariable.SORT_ORDER, required = false) SortOrder SORT_ORDER,
			HttpServletRequest request) throws RuntimeException {
		CommonResponsesDto<CategoryDto> response = new CommonResponsesDto<>();
		response.setData(service.findCategory(SORT_BY, SORT_ORDER, ONLY_ACTIVE));
		return response;
	}

}
