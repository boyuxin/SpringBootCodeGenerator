
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
<#if isAutoImport?exists && isAutoImport==true>
import java.util.Map;
</#if>
import java.util.List;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Mapper
public interface ${classInfo.className}Convert {

    ${classInfo.className}Convert INSTANCE = Mappers.getMapper(${classInfo.className}Convert.class);

    ${classInfo.className}BO  convertReqToBO(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}DO  convertBOToDO(${classInfo.className}BO ${classInfo.className?uncap_first}BO);

    ${classInfo.className}BO  convertDOToBO(${classInfo.className}DO ${classInfo.className?uncap_first}DO);

    ${classInfo.className}ResDTO  convertBOToResDTO(${classInfo.className}BO ${classInfo.className?uncap_first}BO);

    List<${classInfo.className}BO> convertDOsToBOs(List<${classInfo.className}DO> ${classInfo.className?uncap_first}DOList);

    PageBO<${classInfo.className}BO> convertPageDTOToPageBO(PageDTO<${classInfo.className}ReqDTO> pageDTO);

    PageDTO<${classInfo.className}ResDTO> convertPageBOToPageDTO(PageBO<${classInfo.className}BO> pageBO);

}
