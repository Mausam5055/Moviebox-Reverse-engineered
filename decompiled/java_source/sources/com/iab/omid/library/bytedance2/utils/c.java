package com.iab.omid.library.bytedance2.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.adsession.OutputDeviceStatus;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WindowManager f33488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f33489b = {"x", "y", "width", "height"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static float f33490c = Resources.getSystem().getDisplayMetrics().density;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33491a;

        static {
            int[] iArr = new int[OutputDeviceStatus.values().length];
            f33491a = iArr;
            try {
                iArr[OutputDeviceStatus.NOT_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f33492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f33493b;

        b(float f11, float f12) {
            this.f33492a = f11;
            this.f33493b = f12;
        }
    }

    static float a(int i11) {
        return i11 / f33490c;
    }

    private static b a(JSONObject jSONObject) {
        float fA;
        float fA2;
        if (f33488a != null) {
            Point point = new Point(0, 0);
            f33488a.getDefaultDisplay().getRealSize(point);
            fA = a(point.x);
            fA2 = a(point.y);
        } else {
            fA = 0.0f;
            fA2 = 0.0f;
        }
        return new b(fA, fA2);
    }

    public static JSONObject a(int i11, int i12, int i13, int i14) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(i11));
            jSONObject.put("y", a(i12));
            jSONObject.put("width", a(i13));
            jSONObject.put("height", a(i14));
        } catch (JSONException e11) {
            d.a("Error with creating viewStateObject", e11);
        }
        return jSONObject;
    }

    public static void a(Context context) {
        if (context != null) {
            f33490c = context.getResources().getDisplayMetrics().density;
            f33488a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void a(JSONObject jSONObject, OutputDeviceStatus outputDeviceStatus) {
        try {
            jSONObject.put("noOutputDevice", a(outputDeviceStatus));
        } catch (JSONException e11) {
            d.a("Error with setting output device status", e11);
        }
    }

    public static void a(JSONObject jSONObject, com.iab.omid.library.bytedance2.walking.a.C0457a c0457a) {
        com.iab.omid.library.bytedance2.internal.e eVarA = c0457a.a();
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = c0457a.b().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", eVarA.d());
            jSONObject.put("friendlyObstructionPurpose", eVarA.b());
            jSONObject.put("friendlyObstructionReason", eVarA.a());
        } catch (JSONException e11) {
            d.a("Error with setting friendly obstruction", e11);
        }
    }

    public static void a(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e11) {
            d.a("Error with setting has window focus", e11);
        }
    }

    public static void a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e11) {
            d.a("Error with setting ad session id", e11);
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e11) {
            d.a("JSONException during JSONObject.put for name [" + str + "]", e11);
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException unused) {
        }
    }

    private static boolean a(OutputDeviceStatus outputDeviceStatus) {
        return a.f33491a[outputDeviceStatus.ordinal()] == 1;
    }

    private static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    public static void b(JSONObject jSONObject) {
        b bVarA = a(jSONObject);
        try {
            jSONObject.put("width", bVarA.f33492a);
            jSONObject.put("height", bVarA.f33493b);
        } catch (JSONException unused) {
        }
    }

    public static void b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e11) {
            d.a("Error with setting not visible reason", e11);
        }
    }

    private static boolean b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!a(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
            if (!h(jSONArrayOptJSONArray.optJSONObject(i11), jSONArrayOptJSONArray2.optJSONObject(i11))) {
                return false;
            }
        }
        return true;
    }

    private static boolean c(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!a(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
            if (!jSONArrayOptJSONArray.optString(i11, "").equals(jSONArrayOptJSONArray2.optString(i11, ""))) {
                return false;
            }
        }
        return true;
    }

    private static boolean d(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    private static boolean e(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice")));
    }

    private static boolean f(JSONObject jSONObject, JSONObject jSONObject2) {
        for (String str : f33489b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean g(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    public static boolean h(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        return jSONObject != null && jSONObject2 != null && f(jSONObject, jSONObject2) && g(jSONObject, jSONObject2) && e(jSONObject, jSONObject2) && d(jSONObject, jSONObject2) && c(jSONObject, jSONObject2) && b(jSONObject, jSONObject2);
    }
}
