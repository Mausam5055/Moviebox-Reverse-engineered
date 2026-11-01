package com.bytedance.sdk.openadsdk.multipro.EjP;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
class sP {
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> Sj;

    @Nullable
    public static SharedPreferences Sj(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(Sj(str), 0);
        } catch (Throwable th2) {
            sU.sP("SPMultiHelperImpl", "getSharedPreferences error ", th2.getMessage());
            return null;
        }
    }

    private static Object Sj(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = Sj;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(Sj(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    static String Sj(Context context, String str, String str2, String str3) {
        Object objSj = Sj(str, str2);
        if (objSj != null) {
            return String.valueOf(objSj);
        }
        Object objSP = sP(context, str, str2, str3);
        Sj(str, str2, objSP);
        return String.valueOf(objSP);
    }

    private static String Sj(String str) {
        return TextUtils.isEmpty(str) ? "sphelper_ttopenadsdk" : str;
    }

    static synchronized <T> void Sj(Context context, String str, String str2, T t11) {
        String strSj = Sj.Sj(str, str2);
        if (uA.Jcg(strSj)) {
            com.bytedance.sdk.component.Sj Sj2 = com.bytedance.sdk.component.Sj.Sj(context, strSj);
            if (t11.equals(Sj(strSj, str2))) {
                return;
            }
            com.bytedance.sdk.component.Sj.TKC tkcSP = Sj2.sP();
            Sj(tkcSP, str2, (Object) t11);
            tkcSP.apply();
            Sj(strSj, str2, t11);
            return;
        }
        SharedPreferences sharedPreferencesSj = Sj(context, strSj);
        if (sharedPreferencesSj == null) {
            return;
        }
        if (t11.equals(Sj(strSj, str2))) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesSj.edit();
        Sj(editorEdit, str2, t11);
        editorEdit.apply();
        Sj(strSj, str2, t11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void Sj(SharedPreferences.Editor editor, String str, T t11) {
        if (t11 instanceof Integer) {
            editor.putInt(str, ((Integer) t11).intValue());
        }
        if (t11 instanceof Long) {
            editor.putLong(str, ((Long) t11).longValue());
        }
        if (t11 instanceof Float) {
            editor.putFloat(str, ((Float) t11).floatValue());
        }
        if (t11 instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t11).booleanValue());
        }
        if (t11 instanceof String) {
            editor.putString(str, (String) t11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void Sj(com.bytedance.sdk.component.Sj.TKC tkc, String str, T t11) {
        if (t11 instanceof Integer) {
            tkc.putInt(str, ((Integer) t11).intValue());
        }
        if (t11 instanceof Long) {
            tkc.putLong(str, ((Long) t11).longValue());
        }
        if (t11 instanceof Float) {
            tkc.putFloat(str, ((Float) t11).floatValue());
        }
        if (t11 instanceof Boolean) {
            tkc.putBoolean(str, ((Boolean) t11).booleanValue());
        }
        if (t11 instanceof String) {
            tkc.putString(str, (String) t11);
        }
    }

    private static void Sj(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = Sj;
        if (softReference == null || softReference.get() == null) {
            Sj = new SoftReference<>(new ConcurrentHashMap());
        }
        String strSj = Sj(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = Sj.get();
        if (concurrentHashMap.get(strSj) == null) {
            concurrentHashMap.put(strSj, new HashMap());
        }
        concurrentHashMap.get(strSj).put(str2, obj);
    }

    static boolean Sj(Context context, String str, String str2) {
        String strSj = Sj.Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2);
        }
        SharedPreferences sharedPreferencesSj = Sj(context, strSj);
        return sharedPreferencesSj != null && sharedPreferencesSj.contains(str2);
    }

    static Map<String, ?> TKC(Context context, String str) {
        SharedPreferences sharedPreferencesSj = Sj(context, str);
        if (sharedPreferencesSj == null) {
            return null;
        }
        return sharedPreferencesSj.getAll();
    }

    private static Object sP(Context context, String str, String str2, String str3) {
        String strSj = Sj(str);
        if (!Sj(context, strSj, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase("string")) {
            return Sj.Sj(context, strSj, str2, (String) null);
        }
        if (str3.equalsIgnoreCase("boolean")) {
            return Boolean.valueOf(Sj.Sj(context, strSj, str2, false));
        }
        if (str3.equalsIgnoreCase("int")) {
            return Integer.valueOf(Sj.Sj(context, strSj, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(Sj.Sj(context, strSj, str2, 0L));
        }
        if (str3.equalsIgnoreCase("float")) {
            return Float.valueOf(Sj.Sj(context, strSj, str2, 0.0f));
        }
        if (str3.equalsIgnoreCase("string_set")) {
            return Sj.Sj(context, strSj, str2, (String) null);
        }
        return null;
    }

    static void sP(Context context, String str) {
        if (uA.Jcg(str)) {
            com.bytedance.sdk.component.Sj.Sj(context, str).sP().clear().apply();
            sP(str);
            return;
        }
        SharedPreferences sharedPreferencesSj = Sj(context, str);
        if (sharedPreferencesSj == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesSj.edit();
        editorEdit.clear();
        editorEdit.apply();
        sP(str);
    }

    public static void sP(Context context, String str, String str2) {
        try {
            String strSj = Sj.Sj(str, str2);
            if (uA.Jcg(strSj)) {
                com.bytedance.sdk.component.Sj.Sj(context, strSj).sP().remove(str2).apply();
                return;
            }
            SharedPreferences sharedPreferencesSj = Sj(context, strSj);
            if (sharedPreferencesSj == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesSj.edit();
            editorEdit.remove(str2);
            editorEdit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = Sj;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            Map<String, Object> map = Sj.get().get(Sj(strSj));
            if (map != null && map.size() != 0) {
                map.remove(str2);
            }
        } catch (Throwable unused) {
        }
    }

    private static void sP(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = Sj;
        if (softReference == null || softReference.get() == null || (map = Sj.get().get(Sj(str))) == null) {
            return;
        }
        map.clear();
    }
}
