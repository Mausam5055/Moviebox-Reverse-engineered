package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes2.dex */
public class XpathUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Log f19022a = LogFactory.b(XpathUtils.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DocumentBuilderFactory f19023b = DocumentBuilderFactory.newInstance();

    public static Node a(String str, Node node) {
        if (node == null) {
            return null;
        }
        return (Node) g().evaluate(str, node, XPathConstants.NODE);
    }

    public static String b(String str, Node node) {
        return e(str, node);
    }

    public static Document c(InputStream inputStream) throws SAXException, IOException {
        NamespaceRemovingInputStream namespaceRemovingInputStream = new NamespaceRemovingInputStream(inputStream);
        Document document = f19023b.newDocumentBuilder().parse(namespaceRemovingInputStream);
        namespaceRemovingInputStream.close();
        return document;
    }

    public static Document d(String str) {
        return c(new ByteArrayInputStream(str.getBytes(StringUtils.f19004a)));
    }

    private static String e(String str, Node node) {
        if (f(node)) {
            return null;
        }
        if (".".equals(str) || a(str, node) != null) {
            return g().evaluate(str, node).trim();
        }
        return null;
    }

    public static boolean f(Node node) {
        return node == null;
    }

    public static XPath g() {
        return XPathFactory.newInstance().newXPath();
    }
}
