package com.cisetech.put.utils.fop;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.avalon.framework.logger.ConsoleLogger;
import org.apache.avalon.framework.logger.Logger;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;

/*
 * 编辑XML空模板、XSL模板时生成PDF效果
 */
public class FopReportFile {
    private static Logger log = new ConsoleLogger(ConsoleLogger.LEVEL_DEBUG);
    private static final FopFactory fopFactory = FopFactory.newInstance();
    
    public static ReportData createReport(String xsltFile, String xmlFile) throws Exception {
        ReportData reportData = new ReportData();
        reportData.setContentType("application/pdf");
        fopFactory.setUserConfig("conf/fop.xml");
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, out);
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(new File(xsltFile)));
            Source src = new StreamSource(new File(xmlFile));
            Result res = new SAXResult(fop.getDefaultHandler());
            transformer.transform(src, res);
            reportData.setData(out.toByteArray());
        } catch(Exception e) {
            throw e;
        } finally {
            out.close();
        }
        return reportData;
    }

    public static void main(String[] args) {
        long t0 = System.currentTimeMillis();
        try {
            long t = System.currentTimeMillis();
            ReportData data = FopReportFile.createReport("D:\\外出经营证明.xsl","D:\\外出经营证明.xml");
            long t1 = System.currentTimeMillis();
            log.debug("time:" + (t1 - t));
            FileOutputStream fos = new FileOutputStream("D:/sampleFile1.pdf");
            fos.write(data.getData());
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        log.debug("use time:" + (System.currentTimeMillis() - t0));
    }
}
