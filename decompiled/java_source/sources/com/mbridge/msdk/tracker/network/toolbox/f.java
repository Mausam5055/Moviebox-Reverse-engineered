package com.mbridge.msdk.tracker.network.toolbox;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.tracker.network.c0;
import com.mbridge.msdk.tracker.network.q;
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
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    public static com.mbridge.msdk.tracker.network.b.a a(q qVar) {
        boolean z10;
        long j11;
        long j12;
        long j13;
        long j14;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = qVar.f38617c;
        if (map == null) {
            return null;
        }
        String str = map.get(HttpHeaders.DATE);
        long jB = str != null ? b(str) : 0L;
        String str2 = map.get(HttpHeaders.CACHE_CONTROL);
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
        String str3 = map.get(HttpHeaders.EXPIRES);
        long jB2 = str3 != null ? b(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jB3 = str4 != null ? b(str4) : 0L;
        String str5 = map.get("ETag");
        if (i11 != 0) {
            j14 = jCurrentTimeMillis + (j11 * 1000);
            if (z10) {
                j13 = j14;
            } else {
                Long.signum(j12);
                j13 = j14;
                j14 += j12 * 1000;
            }
        } else {
            j13 = 0;
            if (jB <= 0 || jB2 < jB) {
                j14 = 0;
            } else {
                j14 = jCurrentTimeMillis + (jB2 - jB);
                j13 = j14;
            }
        }
        com.mbridge.msdk.tracker.network.b.a aVar = new com.mbridge.msdk.tracker.network.b.a();
        aVar.f38552a = qVar.f38616b;
        aVar.f38553b = str5;
        aVar.f38557f = j13;
        aVar.f38556e = j14;
        aVar.f38554c = jB;
        aVar.f38555d = jB3;
        aVar.f38558g = map;
        aVar.f38559h = qVar.f38618d;
        return aVar;
    }

    static String a(long j11) {
        return a("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j11));
    }

    public static String a(Map<String, String> map) {
        return a(map, "ISO-8859-1");
    }

    public static String a(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get(HttpHeaders.CONTENT_TYPE)) != null) {
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

    private static SimpleDateFormat a(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    static List<com.mbridge.msdk.tracker.network.g> a(List<com.mbridge.msdk.tracker.network.g> list, com.mbridge.msdk.tracker.network.b.a aVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<com.mbridge.msdk.tracker.network.g> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<com.mbridge.msdk.tracker.network.g> list2 = aVar.f38559h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.mbridge.msdk.tracker.network.g gVar : aVar.f38559h) {
                    if (!treeSet.contains(gVar.a())) {
                        arrayList.add(gVar);
                    }
                }
            }
        } else if (!aVar.f38558g.isEmpty()) {
            for (Map.Entry<String, String> entry : aVar.f38558g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.mbridge.msdk.tracker.network.g(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    static Map<String, String> a(com.mbridge.msdk.tracker.network.b.a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = aVar.f38553b;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j11 = aVar.f38555d;
        if (j11 > 0) {
            map.put("If-Modified-Since", a(j11));
        }
        return map;
    }

    public static long b(String str) {
        try {
            Date date = a("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str);
            if (date != null) {
                return date.getTime();
            }
            return 0L;
        } catch (ParseException e11) {
            if ("0".equals(str) || TmcConstants.COLD_OPEN_TYPE.equals(str)) {
                c0.d("Unable to parse dateStr: %s, falling back to 0", str);
            } else {
                c0.a(e11, "Unable to parse dateStr: %s, falling back to 0", str);
            }
            return 0L;
        }
    }
}
