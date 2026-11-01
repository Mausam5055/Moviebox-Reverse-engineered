package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class Multimap extends LinkedHashMap<String, List<String>> implements Iterable<w> {
    public static final c QUERY_DECODER = new a();
    public static final c URL_DECODER = new b();

    class a implements c {
        a() {
        }

        @Override // com.transsion.transfer.androidasync.http.Multimap.c
        public String decode(String str) {
            return Uri.decode(str);
        }
    }

    class b implements c {
        b() {
        }

        @Override // com.transsion.transfer.androidasync.http.Multimap.c
        public String decode(String str) {
            return URLDecoder.decode(str);
        }
    }

    public interface c {
        String decode(String str);
    }

    public Multimap() {
    }

    public Multimap(Multimap multimap) {
        putAll(multimap);
    }

    public Multimap(List<w> list) {
        for (w wVar : list) {
            add(wVar.getName(), wVar.getValue());
        }
    }

    public static Multimap parse(String str, String str2, String str3, boolean z10, c cVar) {
        Multimap multimap = new Multimap();
        if (str == null) {
            return multimap;
        }
        for (String str4 : str.split(str2)) {
            String[] strArrSplit = str4.split(str3, 2);
            String strTrim = strArrSplit[0].trim();
            if (!TextUtils.isEmpty(strTrim)) {
                String strDecode = strArrSplit.length > 1 ? strArrSplit[1] : null;
                if (strDecode != null && z10 && strDecode.endsWith("\"") && strDecode.startsWith("\"")) {
                    strDecode = strDecode.substring(1, strDecode.length() - 1);
                }
                if (strDecode != null && cVar != null) {
                    strTrim = cVar.decode(strTrim);
                    strDecode = cVar.decode(strDecode);
                }
                multimap.add(strTrim, strDecode);
            }
        }
        return multimap;
    }

    public static Multimap parse(String str, String str2, boolean z10, c cVar) {
        return parse(str, str2, UrlUtils.EQUAL_MARK, z10, cVar);
    }

    public static Multimap parseCommaDelimited(String str) {
        return parse(str, ",", true, null);
    }

    public static Multimap parseQuery(String str) {
        return parse(str, UrlUtils.AND_MARK, false, QUERY_DECODER);
    }

    public static Multimap parseSemicolonDelimited(String str) {
        return parse(str, ";", true, null);
    }

    public static Multimap parseUrlEncoded(String str) {
        return parse(str, UrlUtils.AND_MARK, false, URL_DECODER);
    }

    public void add(String str, String str2) {
        ensure(str).add(str2);
    }

    public List<String> ensure(String str) {
        List<String> list = get(str);
        if (list != null) {
            return list;
        }
        List<String> listNewList = newList();
        put(str, listNewList);
        return listNewList;
    }

    public String getAllString(String str, String str2) {
        List<String> list = get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (String str3 : list) {
            if (!z10) {
                sb2.append(str2);
            }
            sb2.append(str3);
            z10 = false;
        }
        return sb2.toString();
    }

    public String getString(String str) {
        List<String> list = get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    @Override // java.lang.Iterable
    public Iterator<w> iterator() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            Iterator it = ((List) get(str)).iterator();
            while (it.hasNext()) {
                arrayList.add(new u(str, (String) it.next()));
            }
        }
        return arrayList.iterator();
    }

    protected List<String> newList() {
        return new ArrayList();
    }

    public void put(String str, String str2) {
        List<String> listNewList = newList();
        listNewList.add(str2);
        put(str, listNewList);
    }

    public Map<String, String> toSingleMap() {
        HashMap map = new HashMap();
        for (String str : keySet()) {
            map.put(str, getString(str));
        }
        return map;
    }
}
