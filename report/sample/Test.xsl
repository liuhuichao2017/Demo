<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

	<!-- 根元素  -->
	<xsl:template match="/">
		<xsl:apply-templates select="Wcjyzmsqbd" />
	</xsl:template>

	<!--主模板//-->
	<xsl:template match="Wcjyzmsqbd">
		<xsl:processing-instruction name="cocoon-format">type="text/xslfo"</xsl:processing-instruction>
		<!--在此可以定义一些全局的风格信息，如字体等-->
		<fo:root font-family="SimSun" xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--版面定义//-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="main" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
					<!--主体//-->
					<fo:region-body margin-top="1cm" margin-bottom="1cm" />
					<!--页眉//-->
					<fo:region-before extent="1cm" />
					<!--页脚//-->
					<fo:region-after extent="1cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="main">
				<!--页眉显示内容-->
				<fo:static-content flow-name="xsl-region-before">
					<fo:block font-size="10pt" text-align="end" line-height="12pt"></fo:block>
					<!-- <fo:block text-align="end">
						<fo:external-graphic src="report/sample/title.jpg"/>
				    </fo:block> -->
				</fo:static-content>
				<!--页脚显示内容-->
				<fo:static-content flow-name="xsl-region-after">
					<fo:block line-height="10pt" font-size="10pt" text-align="center">
						共<fo:page-number-citation ref-id="endofdoc"/>页<xsl:text>       </xsl:text>第<fo:page-number/>页
					</fo:block>
				</fo:static-content>
				<!--页面主体内容-->
				<fo:flow flow-name="xsl-region-body">
					<!--报表头-->
					<xsl:apply-templates select="ReportHeader" />
					<!--报表体(若有多个部分内容，参照下面一行重复)-->
					<xsl:apply-templates select="zmWcjyhdssglzmxxbdVO" />
					<!--报表尾-->
					<xsl:apply-templates select="ReportFooter" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>



	<!--报表主体（一般只有一个表格）//-->
	<xsl:template match="zmWcjyhdssglzmxxbdVO">
		<xsl:apply-templates select="Table" />

	</xsl:template>

	<!--报表尾//-->
	<xsl:template match="ReportFooter">
		<fo:block font-size="12pt" line-height="15pt" text-align="start" space-before.optimum="12pt">
			<xsl:text>签订时间：</xsl:text>
			<xsl:value-of select="PrintDate" />
		</fo:block>
		<fo:block id="endofdoc"></fo:block>
		<fo:block font-family="Code39Seven" font-size="14pt" line-height="18pt">*<xsl:value-of select="ReportNo" />*</fo:block>
	</xsl:template>

	<!--表格数据//-->
	<xsl:template match="Table">
		<fo:block font-size="12pt">
	        <fo:block text-align="center" font-size="25pt" ><xsl:value-of select="swjgmc" /></fo:block>
	        <fo:block text-align="center"   space-before.optimum="12pt"  font-size="17pt"><xsl:value-of select="wszg" /></fo:block>
			<fo:table table-layout="fixed" width="100%" border-collapse="separate"
				text-align="center" border-width="0.5pt" border-style="solid" empty-cells="show">
				<!-- 定义列（与实际列数严格一致） //-->
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="3cm" />
			
<fo:table-body>
			<fo:table-row>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >
			纳税人名称</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="3">
			<fo:block text-align="start"><xsl:value-of select="nsrmc" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >纳税人识别号
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2">
			<fo:block text-align="start"><xsl:value-of select="nsrsbh" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >法定代表人(负责人)
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" >
			<fo:block text-align="start"><xsl:value-of select="fddbrxm" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2">
			<fo:block >身份证件名称
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" >
			<fo:block text-align="start"><xsl:value-of select="fddbrsfzjlxmc" />
		    </fo:block>
			</fo:table-cell>
				<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" >
			<fo:block >身份证件号码
		    </fo:block>
			</fo:table-cell>
				<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fddbrsfzjhm" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >税务登记地
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="3" >
			<fo:block text-align="start"><xsl:value-of select="swdjd" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >外出经营地
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="wcjyd" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >登记注册类型
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="3" >
			<fo:block text-align="start"><xsl:value-of select="djzclxmc" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >经营方式
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="jyfsdmjh" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="7" >
			<fo:block >外出经营活动情况
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block >应税劳务
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block >劳务地点
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block >有效期限
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >合同金额
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>	
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="wcjylwmc1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="wcjylwdd1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="yxqx1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="wcjylwdhtje1" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>	
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="wcjylwmc2" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="wcjylwdd2" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="yxqx2" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="wcjylwdhtje2" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>	
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >货物名称
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >数量
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  number-columns-spanned="2" >
			<fo:block >销售地点
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block >有效期限
			</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >货物总值
		    </fo:block>
			</fo:table-cell>		    
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="hwmc" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="hwsl" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="xsdd" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="yxqx3" />
			</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="hwzz" />
		    </fo:block>
			</fo:table-cell>	
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="hwmc1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="hwsl1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="xsdd1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="start"><xsl:value-of select="yxqx4" />
			</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="hwzz1" />
		    </fo:block>
			</fo:table-cell>	
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="6" >
			<fo:block >合同总金额
			</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="wcjyhtzje" />
		    </fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row  number-rows-spanned="5">
			<fo:table-cell  border-color="black" border-width="0.2pt" border-top-style="solid"  number-columns-spanned="7"  >
			<fo:block text-align="start" font-size="12pt">税务登记地税务机关意见：<xsl:value-of select="swdjdswjgyj" /></fo:block></fo:table-cell>
			
			</fo:table-row>
			<fo:table-row><fo:table-cell><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block></fo:table-cell></fo:table-row>
			<fo:table-row border-color="black" border-width="0.2pt" border-style="solid">
			<fo:table-cell  number-columns-spanned="2"  >
			<fo:block text-align="start">经办人：<xsl:value-of select="jbr1" /></fo:block>
			</fo:table-cell>
			<fo:table-cell   number-columns-spanned="2"> 
			<fo:block text-align="start">负责人：<xsl:value-of select="fzr1"/></fo:block></fo:table-cell>
			<fo:table-cell number-columns-spanned="3"  >
			<fo:block text-align="end">税务机关（签章）</fo:block> </fo:table-cell>
			</fo:table-row>
			<fo:table-row ><fo:table-cell number-columns-spanned="2"  >
			<fo:block text-align="start"><xsl:value-of select="rq1" />
			</fo:block>	
				
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="2" border-color="black" border-width="0.2pt"  >
			<fo:block text-align="start"><xsl:value-of select="rq2" /></fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="3" ><fo:block text-align="end">
			<xsl:value-of select="swjgqz_y1" />年<xsl:value-of select="swjgqz_m1" />月
			<xsl:value-of select="swjgqz_d1" />日
			</fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start">有效日期</fo:block></fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="6" >
			 <fo:block text-align="start">自<xsl:value-of select="yxrq_q_y" />年<xsl:value-of select="yxrq_q_m" />月
			<xsl:value-of select="yxrq_q_d" />日至<xsl:value-of select="yxrq_z_y" />年<xsl:value-of select="yxrq_z_m" />月
			<xsl:value-of select="yxrq_z_d" />日</fo:block> </fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="7">
			<fo:block >以下由外出经营地税务机关填写</fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >应税劳务
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block >营业额
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >缴纳税款
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >使用发票名称
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >发票份数
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >发票号码
		    </fo:block>
			</fo:table-cell>		
			</fo:table-row>
			<fo:table-row ><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="yslw3" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="end"><xsl:value-of select="yye1" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="jnsk1" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="syfpmc1" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fpfs1" /><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block>
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fphm1" />
		    </fo:block>
			</fo:table-cell>		
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="yslw4" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="end"><xsl:value-of select="yye2" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="jnsk2" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="syfpmc2" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fpfs2" /><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block>
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fphm2" />
		    </fo:block>
			</fo:table-cell>		
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="yslw5" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="end"><xsl:value-of select="yye3" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="jnsk3" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="syfpmc3" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fpfs3" /><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block>
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fphm3" />
		    </fo:block>
			</fo:table-cell>		
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block >合计金额
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid" number-columns-spanned="2" >
			<fo:block text-align="end"><xsl:value-of select="yye4" />
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="end"><xsl:value-of select="jnsk4" />
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block>... ...
		    </fo:block>
			</fo:table-cell>		
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fpfs4" /><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block>
		    </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid"  >
			<fo:block text-align="start"><xsl:value-of select="fphm4" />
		    </fo:block>
			</fo:table-cell>		
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >货物名称</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >销售数量</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >销售额</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >缴纳税款</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >使用发票名称</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >发票份数</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >发票号码</fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="hwmc2" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="xssl1" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="xse1" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="jnsk5" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="syfpmc4" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fpfs5" /></fo:block><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">. </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fphm5" /></fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="hwmc3" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="xssl2" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="xse2" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="jnsk6" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="syfpmc5" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start" white-space-collapse="true" 
 white-space-treatment="preserve" ><xsl:value-of select="fpfs6" /></fo:block><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">. </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fphm6" /></fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="hwmc4" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="xssl3" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="xse3" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="jnsk7" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="syfpmc6" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fpfs7" /></fo:block><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">. </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fphm7" /></fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="hwmc5" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="xssl4" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="xse4" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="jnsk8" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="syfpmc7" /></fo:block>
			</fo:table-cell>
			<fo:table-cell  border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start" ><xsl:value-of select="fpfs8" /></fo:block><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">. </fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fphm8" /></fo:block>
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row><fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block >合计金额</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block>... ...</fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="xse5" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="end"><xsl:value-of select="jnsk9" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="syfpmc8" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fpfs9" /></fo:block>
			</fo:table-cell>
			<fo:table-cell border-color="black" border-width="0.2pt" border-style="solid">
			<fo:block text-align="start"><xsl:value-of select="fphm9" /></fo:block>
			
			</fo:table-cell>
			</fo:table-row>
			<fo:table-row number-rows-spanned="5" >
			<fo:table-cell    number-columns-spanned="7"  >
			<fo:block  font-size="12pt" border-color="black" border-width="0.2pt" border-top-style="solid" text-align="start">
			外出经营地税务机关意见：<xsl:value-of select="wcjydswjgyj" /></fo:block></fo:table-cell>
			
			</fo:table-row>
			<fo:table-row><fo:table-cell><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="15px">.</fo:block></fo:table-cell></fo:table-row>
			<fo:table-row border-color="black" border-width="0.2pt" border-style="solid">
			<fo:table-cell  number-columns-spanned="2" >
			<fo:block text-align="start" >经办人：<xsl:value-of select="jbr2" /></fo:block>
			</fo:table-cell>
			<fo:table-cell   number-columns-spanned="2"> 
			<fo:block text-align="start" >负责人：<xsl:value-of select="fzr2"/></fo:block></fo:table-cell>
			<fo:table-cell number-columns-spanned="3"  >
			<fo:block text-align="end">税务机关（签章）</fo:block> </fo:table-cell>
			</fo:table-row>
			<fo:table-row ><fo:table-cell number-columns-spanned="2" border-width="0.2pt"  border-bottom-style="solid">
			<fo:block  text-align="start"><xsl:value-of select="rq3" />
			</fo:block>	
				
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="2" border-color="black" border-width="0.2pt" border-bottom-style="solid" >
			<fo:block  text-align="start"><xsl:value-of select="rq4" /></fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="3" border-width="0.2pt" border-bottom-style="solid">
			<fo:block text-align="end">
			<xsl:value-of select="rq5" /></fo:block>
			</fo:table-cell>
			</fo:table-row>
						<fo:table-row><fo:table-cell><fo:block white-space-collapse="false" 
 white-space-treatment="preserve" 
 font-size="0pt" line-height="20pt">.</fo:block></fo:table-cell></fo:table-row>
			<fo:table-row ><fo:table-cell  number-columns-spanned="7">
			<fo:block text-align="center" font-size="20pt" >使用说明
			</fo:block>
<fo:block text-align="start" font-size="17pt">&#160;&#160;&#160;&#160;1.本表依据《征管法实施细则》第二十一条、《税务登记管理办</fo:block>
<fo:block text-align="start" font-size="17pt" space-before.optimum="15pt">法》第三十二条设置。</fo:block>
<fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">
&#160;&#160;&#160;&#160;2.适用范围：纳税人需要临时到外埠从事生产经营活动时使用。</fo:block>

<fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">&#160;&#160;&#160;&#160;3.表中主要内容填表说明：</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;经营方式：填批发零售、工业加工、修理修配、建筑安装、服</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">务、其他。</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;劳务地点：填劳务实际发生的地点。</fo:block>
<fo:block text-align="start" space-before.optimum="15pt" font-size="17pt"> &#160;&#160;&#160;&#160;4.本表由纳税人在外出经营前向税务登记地税务机关领取并填写</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">有关内容；到达外出经营地在开始经营前向外出经营地税务机关报验登</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">记；外出经营活动结束后，经外出经营地税务机关签章，由纳税人持本</fo:block>
 <fo:block text-align="start" space-before.optimum="15pt" font-size="17pt">表返税务登记地税务机关办理有关事项。</fo:block>
			</fo:table-cell></fo:table-row>
			</fo:table-body>
			</fo:table>
			
		</fo:block>
		
	</xsl:template>


</xsl:stylesheet>