package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.File;
import java.io.InputStream;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static File f20649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f20650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f20651c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f20652g = new HashSet(Arrays.asList("js", "css", "html", "ico", "jpeg", "jpg", "png", "gif", "woff", "svg", "ttf", "woff2", "webp", "otf", "sfnt"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map.Entry<String, JSONObject> f20653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map.Entry<String, JSONObject> f20654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private INetWork f20655f;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static c f20656a = new c(0);
    }

    private c() {
    }

    /* synthetic */ c(byte b11) {
        this();
    }

    public static int a(ILoader iLoader, String str) {
        if (iLoader == null || str == null) {
            return 0;
        }
        try {
            return new com.bykv.vk.openvk.preload.falconx.loader.a(f20650b, "f36c832c8dbb162c49b46a7a6dd47fbd", f20649a).a(str + File.separator);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static c a() {
        return a.f20656a;
    }

    public static c a(Context context) {
        f20650b = context;
        if (f20649a == null) {
            f20649a = new File(f20650b.getCacheDir() + File.separator + "gecko");
        }
        return a.f20656a;
    }

    private static String a(String str, JSONObject jSONObject) {
        try {
            return jSONObject.getJSONObject(str).getString("md5");
        } catch (Throwable unused) {
            return "";
        }
    }

    private JSONObject a(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Map.Entry<String, JSONObject> entry = this.f20653d;
                if (entry == null || !str.equals(entry.getKey())) {
                    String strA = com.bykv.vk.openvk.preload.geckox.utils.b.a(new com.bykv.vk.openvk.preload.falconx.loader.a(f20650b, "f36c832c8dbb162c49b46a7a6dd47fbd", f20649a).getInputStream(str + "/manifest.json"));
                    if (TextUtils.isEmpty(strA)) {
                        return null;
                    }
                    this.f20653d = new AbstractMap.SimpleEntry(str, new JSONObject(strA));
                }
                Map.Entry<String, JSONObject> entry2 = this.f20654e;
                if (entry2 == null || !str.equals(entry2.getKey())) {
                    String strA2 = com.bykv.vk.openvk.preload.geckox.utils.b.a(new com.bykv.vk.openvk.preload.falconx.loader.a(f20650b, "f36c832c8dbb162c49b46a7a6dd47fbd", f20649a).getInputStream(str + "/md5_url_map.json"));
                    if (TextUtils.isEmpty(strA2)) {
                        return null;
                    }
                    this.f20654e = new AbstractMap.SimpleEntry(str, new JSONObject(strA2));
                }
                JSONObject value = this.f20653d.getValue();
                JSONObject value2 = this.f20654e.getValue();
                String strA3 = a(str2, value2);
                if (value.has(strA3)) {
                    JSONObject jSONObject = value.getJSONObject(strA3);
                    a(value, strA3, str2);
                    return jSONObject;
                }
                String strB = b(str2);
                if (strB == null) {
                    return null;
                }
                String strA4 = a(strB, value2);
                if (value.has(strA4)) {
                    JSONObject jSONObject2 = value.getJSONObject(strA4);
                    a(value, strA4, str2);
                    return jSONObject2;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static void a(ILoader iLoader) {
        if (iLoader != null) {
            try {
                iLoader.release();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str) {
        f20651c = str;
    }

    private void a(JSONObject jSONObject, String str, String str2) {
        try {
            if ("once".equals(jSONObject.getJSONObject(str).optJSONObject("cacheStrategy").optString("hitStrategy"))) {
                jSONObject.remove(str);
                c(str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static com.bykv.vk.openvk.preload.falconx.loader.a b() {
        try {
            return new com.bykv.vk.openvk.preload.falconx.loader.a(f20650b, "f36c832c8dbb162c49b46a7a6dd47fbd", f20649a);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String b(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(UrlUtils.QUESTION_MARK);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    private void c(String str) {
        try {
            if (this.f20655f == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f20655f.syncDoGet(str);
        } catch (Throwable unused) {
        }
    }

    public final WebResourceResponseModel a(ILoader iLoader, String str, String str2) {
        String strOptString;
        try {
            if (iLoader == null) {
                return new WebResourceResponseModel(-1, null);
            }
            if (!TextUtils.isEmpty(str2) && !str2.matches("^https?:\\/\\/www\\.google-analytics\\.com/(?:ga|urchin|analytics)\\.js") && !str2.matches("^https?:\\/\\/www\\.googletagmanager\\.com\\/(gtag\\/js|gtm\\.js)") && !str2.matches("^https?:\\/\\/analytics\\.tiktok\\.com\\/i18n\\/pixel") && !str2.matches("https?:\\/\\/connect\\.facebook\\.net\\/(.*)\\/fbevents\\.js") && !str2.matches("https?:\\/\\/mc\\.yandex\\.ru\\/") && !str2.contains("jsonp") && !str2.contains("Callback") && !str2.contains("analytics.tiktok.com/i18n/pixel") && !str2.contains("google-analytics.com/analytics") && !str2.contains("connect.facebook.net")) {
                JSONObject jSONObjectA = a(str, str2);
                Set<String> set = f20652g;
                String strB = b(str2);
                int iLastIndexOf = strB.lastIndexOf(".");
                int i11 = set.contains(iLastIndexOf == -1 ? "" : strB.substring(iLastIndexOf + 1)) ? 2 : -1;
                if (jSONObjectA != null && (strOptString = jSONObjectA.optString("fileName", null)) != null) {
                    JSONObject jSONObject = jSONObjectA.has("respHeader") ? jSONObjectA.getJSONObject("respHeader") : null;
                    if (jSONObject == null) {
                        return new WebResourceResponseModel(i11, null);
                    }
                    String str3 = str + File.separator + strOptString;
                    InputStream inputStream = !iLoader.exist(str3) ? null : iLoader.getInputStream(str3);
                    if (inputStream == null) {
                        return new WebResourceResponseModel(i11, null);
                    }
                    HashMap map = new HashMap();
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        map.put(next, jSONObject.getString(next));
                    }
                    return new WebResourceResponseModel(i11, com.bykv.vk.openvk.preload.falconx.a.a.a(inputStream, map));
                }
                return new WebResourceResponseModel(i11, null);
            }
            return new WebResourceResponseModel(1, null);
        } catch (Throwable unused) {
            return new WebResourceResponseModel(-1, null);
        }
    }

    public final void a(String str, IStatisticMonitor iStatisticMonitor, Set<String> set, INetWork iNetWork) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = new b(new b.a(f20650b).b("f36c832c8dbb162c49b46a7a6dd47fbd").a("f36c832c8dbb162c49b46a7a6dd47fbd").b().b(str).a("9999999.0.0").a(new com.bykv.vk.openvk.preload.geckox.a.a.a.C0192a().a().a(com.bykv.vk.openvk.preload.geckox.a.a.b.f20590b).b()).a(f20649a).a().c(f20651c).a(iStatisticMonitor).a(iNetWork).a(SystemClock.elapsedRealtime()), (byte) 0);
        this.f20655f = iNetWork;
        com.bykv.vk.openvk.preload.geckox.a aVarA = com.bykv.vk.openvk.preload.geckox.a.a(bVar);
        HashMap map = new HashMap();
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            linkedList.add(new CheckRequestBodyModel.TargetChannel(it.next()));
        }
        map.put("f36c832c8dbb162c49b46a7a6dd47fbd", linkedList);
        aVarA.a(map);
    }
}
