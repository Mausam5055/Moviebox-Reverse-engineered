package com.amazonaws.regions;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RegionMetadataParser {
    @Deprecated
    public RegionMetadataParser() {
    }

    private static void a(Region region, Element element, boolean z10) {
        String strB = b("ServiceName", element);
        String strB2 = b("Hostname", element);
        String strB3 = b("Http", element);
        String strB4 = b("Https", element);
        if (!z10 || f(strB2)) {
            region.h().put(strB, strB2);
            region.b().put(strB, Boolean.valueOf("true".equals(strB3)));
            region.c().put(strB, Boolean.valueOf("true".equals(strB4)));
        } else {
            throw new IllegalStateException("Invalid service endpoint (" + strB2 + ") is detected.");
        }
    }

    private static String b(String str, Element element) {
        Node nodeItem = element.getElementsByTagName(str).item(0);
        if (nodeItem == null) {
            return null;
        }
        return nodeItem.getChildNodes().item(0).getNodeValue();
    }

    private static List c(InputStream inputStream, boolean z10) {
        try {
            try {
                Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream);
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
                NodeList elementsByTagName = document.getElementsByTagName("Region");
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < elementsByTagName.getLength(); i11++) {
                    Node nodeItem = elementsByTagName.item(i11);
                    if (nodeItem.getNodeType() == 1) {
                        arrayList.add(d((Element) nodeItem, z10));
                    }
                }
                return arrayList;
            } catch (Throwable th2) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new IOException("Unable to parse region metadata file: " + e12.getMessage(), e12);
        }
    }

    private static Region d(Element element, boolean z10) {
        Region region = new Region(b("Name", element), b("Domain", element));
        NodeList elementsByTagName = element.getElementsByTagName("Endpoint");
        for (int i11 = 0; i11 < elementsByTagName.getLength(); i11++) {
            a(region, (Element) elementsByTagName.item(i11), z10);
        }
        return region;
    }

    private static boolean f(String str) {
        return str.endsWith(".amazonaws.com");
    }

    public List e(InputStream inputStream) {
        return c(inputStream, false);
    }
}
