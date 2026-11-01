package com.transsion.api.gateway.sercurity;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f42529a;

    public c(a aVar) {
        this.f42529a = aVar;
    }

    public final String a(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(UrlUtils.AND_MARK)) {
            int iIndexOf = str2.indexOf(UrlUtils.EQUAL_MARK);
            try {
                map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new b(this));
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry entry : arrayList) {
                if (!"".equals(entry.getKey())) {
                    String str3 = (String) entry.getKey();
                    String str4 = (String) entry.getValue();
                    sb2.append(str3);
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append(str4);
                    sb2.append(UrlUtils.AND_MARK);
                }
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
