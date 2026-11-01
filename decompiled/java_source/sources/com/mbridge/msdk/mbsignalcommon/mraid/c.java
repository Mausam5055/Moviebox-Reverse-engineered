package com.mbridge.msdk.mbsignalcommon.mraid;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ConcurrentHashMap<String, String> f36506a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ArrayList<String> f36507b = new ArrayList<>();

    public static com.mbridge.msdk.mbsignalcommon.windvane.a a(WindVaneWebView windVaneWebView, String str) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.contains(CampaignEx.JSON_KEY_MRAID)) {
            return null;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.a aVar = new com.mbridge.msdk.mbsignalcommon.windvane.a();
        aVar.f36543d = i0.a("n+ztLkxpVTzBLkxgHN==");
        aVar.f36544e = uri.getHost();
        if (f36507b.size() == 0) {
            a();
        }
        if (!f36507b.contains(aVar.f36544e) && windVaneWebView != null) {
            a(windVaneWebView.getCampaignId(), aVar.f36544e);
            a.a().b(windVaneWebView, aVar.f36544e);
            a.a().a(windVaneWebView, aVar.f36544e, "Specified command is not implemented");
            return null;
        }
        Set<String> setA = a(uri);
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str2 : setA) {
                jSONObject.put(str2, uri.getQueryParameter(str2));
            }
            aVar.f36545f = jSONObject.toString();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return aVar;
    }

    private static Set<String> a(Uri uri) {
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i11 = 0;
        do {
            int iIndexOf = encodedQuery.indexOf(38, i11);
            if (iIndexOf == -1) {
                iIndexOf = encodedQuery.length();
            }
            int iIndexOf2 = encodedQuery.indexOf(61, i11);
            if (iIndexOf2 > iIndexOf || iIndexOf2 == -1) {
                iIndexOf2 = iIndexOf;
            }
            linkedHashSet.add(Uri.decode(encodedQuery.substring(i11, iIndexOf2)));
            i11 = iIndexOf + 1;
        } while (i11 < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static void a() {
        for (Method method : b.class.getDeclaredMethods()) {
            f36507b.add(method.getName());
        }
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f36506a.remove(str);
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!f36506a.containsKey(str)) {
            f36506a.put(str, str2);
            return;
        }
        String strConcat = f36506a.get(str);
        if (TextUtils.isEmpty(str2) || strConcat.contains(str2)) {
            return;
        }
        if (strConcat.length() > 0) {
            strConcat = strConcat.concat(",");
        }
        f36506a.put(str, strConcat.concat(str2));
    }

    public static String b(String str) {
        if (f36506a.containsKey(str)) {
            return f36506a.get(str);
        }
        return null;
    }
}
