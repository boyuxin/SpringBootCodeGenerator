<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
</#if>
import lombok.extern.slf4j.Slf4j;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
@Slf4j
public class ${classInfo.className}Biz {

	@Autowired
	private ${classInfo.className}Manager ${classInfo.className?uncap_first}Manager;


	/**
	* 新增
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	public Boolean  insert(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {

	    return ${classInfo.className?uncap_first}Manager.insert(${classInfo.className?uncap_first}BO);
	}

	/**
	* 更新
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	public Boolean update(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
		return ${classInfo.className?uncap_first}Manager.update(${classInfo.className?uncap_first}BO);
	}


	/**
	* 查询 分页查询
	* @author ${authorName}
	* @date ${.now?string('yyyy/MM/dd')}
	**/
	public  void pageList(PageBO<${classInfo.className}BO> pageBO) {
	    ${classInfo.className?uncap_first}Manager.pageList(pageBO);
	}

	public ${classInfo.className}BO selectOne(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
		return ${classInfo.className?uncap_first}Manager.selectOne(${classInfo.className?uncap_first}BO);
	}
}
