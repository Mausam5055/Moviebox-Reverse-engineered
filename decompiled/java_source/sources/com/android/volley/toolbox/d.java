package com.android.volley.toolbox;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    static List a(List list, com.android.volley.c.a aVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(((com.android.volley.e) it.next()).a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List list2 = aVar.f19227h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.android.volley.e eVar : aVar.f19227h) {
                    if (!treeSet.contains(eVar.a())) {
                        arrayList.add(eVar);
                    }
                }
            }
        } else if (!aVar.f19226g.isEmpty()) {
            for (Map.Entry entry : aVar.f19226g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.android.volley.e((String) entry.getKey(), (String) entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    static String b(long j11) {
        return d("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j11));
    }

    static Map c(com.android.volley.c.a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = aVar.f19221b;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j11 = aVar.f19223d;
        if (j11 > 0) {
            map.put("If-Modified-Since", b(j11));
        }
        return map;
    }

    private static SimpleDateFormat d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static com.android.volley.c.a e(com.android.volley.g gVar) {
        boolean z10;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map map = gVar.f19236c;
        if (map == null) {
            return null;
        }
        String str = (String) map.get(HttpHeaders.DATE);
        long jG = str != null ? g(str) : 0L;
        String str2 = (String) map.get(HttpHeaders.CACHE_CONTROL);
        int i11 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            z10 = false;
            j11 = 0;
            j12 = 0;
            while (i11 < strArrSplit.length) {
                String strTrim = strArrSplit[i11].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j11 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j12 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z10 = true;
                }
                i11++;
            }
            i11 = 1;
        } else {
            z10 = false;
            j11 = 0;
            j12 = 0;
        }
        String str3 = (String) map.get(HttpHeaders.EXPIRES);
        long jG2 = str3 != null ? g(str3) : 0L;
        String str4 = (String) map.get("Last-Modified");
        long jG3 = str4 != null ? g(str4) : 0L;
        String str5 = (String) map.get("ETag");
        if (i11 != 0) {
            j14 = jCurrentTimeMillis + (j11 * 1000);
            if (z10) {
                j15 = j14;
            } else {
                Long.signum(j12);
                j15 = (j12 * 1000) + j14;
            }
            j13 = j15;
        } else {
            j13 = 0;
            if (jG <= 0 || jG2 < jG) {
                j14 = 0;
            } else {
                j14 = jCurrentTimeMillis + (jG2 - jG);
                j13 = j14;
            }
        }
        com.android.volley.c.a aVar = new com.android.volley.c.a();
        aVar.f19220a = gVar.f19235b;
        aVar.f19221b = str5;
        aVar.f19225f = j14;
        aVar.f19224e = j13;
        aVar.f19222c = jG;
        aVar.f19223d = jG3;
        aVar.f19226g = map;
        aVar.f19227h = gVar.f19237d;
        return aVar;
    }

    public static String f(Map map, String str) {
        String str2;
        if (map != null && (str2 = (String) map.get(HttpHeaders.CONTENT_TYPE)) != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i11 = 1; i11 < strArrSplit.length; i11++) {
                String[] strArrSplit2 = strArrSplit[i11].trim().split(UrlUtils.EQUAL_MARK, 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    public static long g(String str) {
        try {
            return d("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e11) {
            if ("0".equals(str) || TmcConstants.COLD_OPEN_TYPE.equals(str)) {
                com.android.volley.l.e("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            com.android.volley.l.d(e11, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    static List h(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new com.android.volley.e((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    static Map i(List list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.volley.e eVar = (com.android.volley.e) it.next();
            treeMap.put(eVar.a(), eVar.b());
        }
        return treeMap;
    }
}
