package oe;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.iab.omid.library.mmadbridge.adsession.OutputDeviceStatus;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WindowManager f70966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f70967b = {"x", "y", "width", "height"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static float f70968c = Resources.getSystem().getDisplayMetrics().density;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f70969a;

        static {
            int[] iArr = new int[OutputDeviceStatus.values().length];
            f70969a = iArr;
            try {
                iArr[OutputDeviceStatus.NOT_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f70970a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f70971b;

        b(float f11, float f12) {
            this.f70970a = f11;
            this.f70971b = f12;
        }
    }

    static float a(int i11) {
        return i11 / f70968c;
    }

    private static b b(JSONObject jSONObject) {
        float fA;
        float fA2;
        if (f70966a != null) {
            Point point = new Point(0, 0);
            f70966a.getDefaultDisplay().getRealSize(point);
            fA = a(point.x);
            fA2 = a(point.y);
        } else {
            fA = 0.0f;
            fA2 = 0.0f;
        }
        return new b(fA, fA2);
    }

    public static JSONObject c(int i11, int i12, int i13, int i14) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(i11));
            jSONObject.put("y", a(i12));
            jSONObject.put("width", a(i13));
            jSONObject.put("height", a(i14));
        } catch (JSONException e11) {
            d.b("Error with creating viewStateObject", e11);
        }
        return jSONObject;
    }

    public static void d(Context context) {
        if (context != null) {
            f70968c = context.getResources().getDisplayMetrics().density;
            f70966a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void e(JSONObject jSONObject, OutputDeviceStatus outputDeviceStatus) {
        try {
            jSONObject.put("noOutputDevice", k(outputDeviceStatus));
        } catch (JSONException e11) {
            d.b("Error with setting output device status", e11);
        }
    }

    public static void f(JSONObject jSONObject, com.iab.omid.library.mmadbridge.walking.a.C0462a c0462a) {
        com.iab.omid.library.mmadbridge.internal.e eVarA = c0462a.a();
        JSONArray jSONArray = new JSONArray();
        Iterator it = c0462a.c().iterator();
        while (it.hasNext()) {
            jSONArray.put((String) it.next());
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", eVarA.d());
            jSONObject.put("friendlyObstructionPurpose", eVarA.b());
            jSONObject.put("friendlyObstructionReason", eVarA.a());
        } catch (JSONException e11) {
            d.b("Error with setting friendly obstruction", e11);
        }
    }

    public static void g(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e11) {
            d.b("Error with setting has window focus", e11);
        }
    }

    public static void h(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e11) {
            d.b("Error with setting ad session id", e11);
        }
    }

    public static void i(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e11) {
            d.b("JSONException during JSONObject.put for name [" + str + "]", e11);
        }
    }

    public static void j(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    private static boolean k(OutputDeviceStatus outputDeviceStatus) {
        return a.f70969a[outputDeviceStatus.ordinal()] == 1;
    }

    private static boolean l(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    public static void m(JSONObject jSONObject) {
        b bVarB = b(jSONObject);
        try {
            jSONObject.put("width", bVarB.f70970a);
            jSONObject.put("height", bVarB.f70971b);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    public static void n(JSONObject jSONObject, Boolean bool) {
        if (bool.booleanValue()) {
            try {
                jSONObject.put("isPipActive", bool);
            } catch (JSONException e11) {
                d.b("Error with setting is picture-in-picture active", e11);
            }
        }
    }

    public static void o(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e11) {
            d.b("Error with setting not visible reason", e11);
        }
    }

    private static boolean p(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!l(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
            if (!v(jSONArrayOptJSONArray.optJSONObject(i11), jSONArrayOptJSONArray2.optJSONObject(i11))) {
                return false;
            }
        }
        return true;
    }

    private static boolean q(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!l(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
            if (!jSONArrayOptJSONArray.optString(i11, "").equals(jSONArrayOptJSONArray2.optString(i11, ""))) {
                return false;
            }
        }
        return true;
    }

    private static boolean r(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    private static boolean s(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice")));
    }

    private static boolean t(JSONObject jSONObject, JSONObject jSONObject2) {
        for (String str : f70967b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean u(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    public static boolean v(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        return t(jSONObject, jSONObject2) && u(jSONObject, jSONObject2) && s(jSONObject, jSONObject2) && r(jSONObject, jSONObject2) && q(jSONObject, jSONObject2) && p(jSONObject, jSONObject2);
    }
}
