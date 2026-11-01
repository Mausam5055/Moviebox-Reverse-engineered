package com.mbridge.msdk.foundation.same.net.wrapper;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f35496c = "e";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f35497d = "h";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f35498e = "i";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f35499f = "coppa";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f35500g = "d";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f35501h = "e";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f35502i = "a";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f35503j = "f";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f35504k = "g";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, com.mbridge.msdk.foundation.same.net.model.a> f35505a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f35506b = new LinkedHashMap();

    public Map<String, String> a() {
        return this.f35506b;
    }

    public void a(String str) {
        this.f35506b.remove(str);
        this.f35505a.remove(str);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            o0.b(f35496c, "add() value is null!");
        }
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        this.f35506b.put(str, str2);
    }

    public String b() {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : this.f35506b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return sb2.toString();
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : this.f35506b.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry.getKey(), "UTF-8"), URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f35505a.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry2.getKey(), "UTF-8"), URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException unused) {
        } catch (JSONException e11) {
            o0.b(f35496c, e11.getMessage());
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(28);
        try {
            for (Map.Entry<String, String> entry : this.f35506b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f35505a.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry2.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException e11) {
            o0.b(f35496c, e11.getMessage());
        }
        return sb2.toString();
    }
}
