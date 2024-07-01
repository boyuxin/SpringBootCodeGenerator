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
public class ${classInfo.className}Biz {

	@Autowired
	private ${classInfo.className}Manager ${classInfo.className?uncap_first}Manager;


	/**
	* 新增
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	public Result<Boolean>  insert(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
	    ${classInfo.className?uncap_first}Manager.insert(${classInfo.className?uncap_first}BO);
	    return new Result<>(Boolean.TRUE);
	}

	/**
	* 更新
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	@Override
	public Result<Boolean> update(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
		int ret = ${classInfo.className?uncap_first}Manager..update(${classInfo.className?uncap_first}BO);
		return new Result<>(Boolean.TRUE);
	}


	/**
	* 查询 分页查询
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	@Override
	public  void pageList(PageBO<${classInfo.className}ReqDTO> pageBO) {

		${classInfo.className?uncap_first}Biz.pageList(pageBO);

		return Result.of();
	}

}
