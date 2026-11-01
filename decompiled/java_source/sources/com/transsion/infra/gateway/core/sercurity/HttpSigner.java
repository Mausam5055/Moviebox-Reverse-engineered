package com.transsion.infra.gateway.core.sercurity;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.infra.gateway.core.bean.RequestBean;
import com.transsion.infra.gateway.core.utils.d;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class HttpSigner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f45995a;

    public HttpSigner(c cVar) {
        this.f45995a = cVar;
    }

    private String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            URI uri = new URI(str);
            sb2.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                String strF = f(uri.getQuery());
                if (!TextUtils.isEmpty(strF)) {
                    sb2.append(UrlUtils.QUESTION_MARK);
                    sb2.append(strF);
                }
            }
            return sb2.toString();
        } catch (URISyntaxException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static String b(RequestBean requestBean) {
        if (requestBean == null) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request bean is null");
            return null;
        }
        if (requestBean.getMethod() == null) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request method is null");
            return null;
        }
        if (TextUtils.isEmpty(requestBean.getUrl())) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request url is null");
            return null;
        }
        if (requestBean.getKey() == null) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request key is null");
            return null;
        }
        if (requestBean.getKey().getKey() == null) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request key is null");
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() + d.a(com.transsion.infra.gateway.core.utils.a.a()).b("time_offset");
        String str = jCurrentTimeMillis + "|" + requestBean.getKey().getKeyVersion() + "|" + new HttpSigner(new a(requestBean.getKey().getKey())).e(requestBean.getMethod(), requestBean.getAccept(), requestBean.getContentType(), requestBean.getUrl(), requestBean.getBody(), jCurrentTimeMillis, requestBean.getKey().getAlgorithm());
        com.transsion.infra.gateway.core.utils.c.f46026a.g("x-tr-signature: " + str);
        return str;
    }

    private String c(Map map) {
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new Comparator<Map.Entry<String, String>>() { // from class: com.transsion.infra.gateway.core.sercurity.HttpSigner.1
                @Override // java.util.Comparator
                public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
                    return entry.getKey().compareTo(entry2.getKey());
                }
            });
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry entry : arrayList) {
                if (!"".equals(entry.getKey())) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    sb2.append(str);
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append(str2);
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

    private String d(String str, String str2, String str3, String str4, String str5, long j11) {
        long length;
        String strC;
        StringBuilder sb2 = new StringBuilder();
        if (TextUtils.isEmpty(str5)) {
            com.transsion.infra.gateway.core.utils.c.f46026a.g("request body is null");
            strC = "";
            length = 0;
        } else {
            try {
                length = str5.length();
                try {
                    System.currentTimeMillis();
                    strC = str5.length() > 102400 ? com.transsion.infra.gateway.core.utils.b.c(str5.substring(0, 102400)) : com.transsion.infra.gateway.core.utils.b.c(str5);
                } catch (Exception e11) {
                    e = e11;
                    com.transsion.infra.gateway.core.utils.c.f46026a.i("generateContent exception" + e.toString());
                    strC = "";
                }
            } catch (Exception e12) {
                e = e12;
                length = 0;
            }
        }
        sb2.append(str.toUpperCase());
        sb2.append("\n");
        sb2.append(str2 == null ? "" : str2);
        sb2.append("\n");
        sb2.append(str3 == null ? "" : str3);
        sb2.append("\n");
        sb2.append(length == 0 ? "" : Long.valueOf(length));
        sb2.append("\n");
        sb2.append(j11);
        sb2.append("\n");
        sb2.append(TextUtils.isEmpty(strC) ? "" : strC);
        sb2.append("\n");
        sb2.append(a(str4));
        com.transsion.infra.gateway.core.utils.c.f46026a.g(sb2.toString());
        return sb2.toString();
    }

    private String f(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(UrlUtils.AND_MARK)) {
            int iIndexOf = str2.indexOf(UrlUtils.EQUAL_MARK);
            try {
                map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return c(map);
    }

    public String e(String str, String str2, String str3, String str4, String str5, long j11, SignAlgorithm signAlgorithm) {
        return this.f45995a.a(signAlgorithm, d(str, str2, str3, str4, str5, j11));
    }
}
