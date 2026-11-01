package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.PartETag;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RequestXmlFactory {
    public static byte[] a(List list) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.d("CompleteMultipartUpload");
        if (list != null) {
            Collections.sort(list, new Comparator<PartETag>() { // from class: com.amazonaws.services.s3.model.transform.RequestXmlFactory.1
                @Override // java.util.Comparator
                public int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.b() < partETag2.b()) {
                        return -1;
                    }
                    return partETag.b() > partETag2.b() ? 1 : 0;
                }
            });
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PartETag partETag = (PartETag) it.next();
                xmlWriter.d("Part");
                xmlWriter.d("PartNumber").e(Integer.toString(partETag.b())).b();
                xmlWriter.d("ETag").e(partETag.a()).b();
                xmlWriter.b();
            }
        }
        xmlWriter.b();
        return xmlWriter.c();
    }
}
