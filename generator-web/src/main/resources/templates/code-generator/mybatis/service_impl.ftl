<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Autowired
	private ${classInfo.className}Biz ${classInfo.className?uncap_first}Biz;


	/**
	* 新增
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	@Override
	public Result<Boolean>  insert(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}DTO) {
	${classInfo.className}BO ${classInfo.className?uncap_first}BO = LabRecordServiceConvert.INSTANCE.convertToBo(${classInfo.className?uncap_first}DTO);

	${classInfo.className?uncap_first}Biz.insert(${classInfo.className?uncap_first}BO);
        return new Result<>(Boolean.TRUE);
	}

	/**
	* 更新
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	@Override
	public Result<Boolean> update(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}DTO) {
		${classInfo.className}BO ${classInfo.className?uncap_first}BO = LabRecordServiceConvert.INSTANCE.convertToBo(${classInfo.className?uncap_first}DTO);
		int ret = ${classInfo.className?uncap_first}Biz.update(${classInfo.className?uncap_first});
		return new Result<>(Boolean.TRUE);
	}


	/**
	* 查询 分页查询
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	@Override
	public  Result<PageDTO<${classInfo.className}ResDTO>>  pageList(@RequestBody PageDTO<${classInfo.className}ReqDTO> pageDTO) {


	    PageBO<${classInfo.className}BO> pageBO =;
		${classInfo.className?uncap_first}Biz.pageList(pageBO);

		return Result.of();
	}

}
