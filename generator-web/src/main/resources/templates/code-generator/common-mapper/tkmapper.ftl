<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.mapper;</#if>
<#if isAutoImport?exists && isAutoImport==true>
 import org.mapstruct.Mapper;
 import org.mapstruct.factory.Mappers;
</#if>
/**
 * @description ${classInfo.classComment}Mapper
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Mapper
public interface ${classInfo.className}Convert  {

      ${classInfo.className}Convert INSTANCE = Mappers.getMapper(${classInfo.className}Convert.class);

      ${classInfo.className}BO  convertToBo(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}DTO);

}
