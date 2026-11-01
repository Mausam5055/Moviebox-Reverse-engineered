package com.cloud.tmc.kernel.utils;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class BundleUtils {
    private static final String TAG = "TmcKernel:BundleUtils";

    public static Bundle clone(Bundle bundle) {
        return bundle == null ? new Bundle() : (Bundle) bundle.clone();
    }

    public static boolean contains(Bundle bundle, String str) {
        if (bundle == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return bundle.containsKey(str);
    }

    public static boolean getBoolean(Bundle bundle, String str, boolean z10) {
        return ((Boolean) getValue(bundle, str, Boolean.valueOf(z10))).booleanValue();
    }

    public static byte[] getByteArray(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return bundle.getByteArray(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static int getInt(Bundle bundle, String str) {
        return getInt(bundle, str, 0);
    }

    public static int getInt(Bundle bundle, String str, int i11) {
        Integer num;
        if (bundle != null) {
            try {
                return (TextUtils.isEmpty(str) || !bundle.containsKey(str) || (num = (Integer) bundle.get(str)) == null) ? i11 : num.intValue();
            } catch (Exception e11) {
                TmcLogger.e("get json value exception", e11);
            }
        }
        return i11;
    }

    public static long getLong(Bundle bundle, String str) {
        return getLong(bundle, str, 0L);
    }

    public static long getLong(Bundle bundle, String str, long j11) {
        Long l11;
        if (bundle != null) {
            try {
                return (TextUtils.isEmpty(str) || !bundle.containsKey(str) || (l11 = (Long) bundle.get(str)) == null) ? j11 : l11.longValue();
            } catch (Exception e11) {
                TmcLogger.e("get json value exception", e11);
            }
        }
        return j11;
    }

    public static <T extends Parcelable> T getParcelable(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return (T) bundle.getParcelable(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Object getSerializable(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return bundle.getSerializable(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String getString(Bundle bundle, String str) {
        return getString(bundle, str, "");
    }

    public static String getString(Bundle bundle, String str, String str2) {
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        if (bundle != null) {
            try {
                if (!TextUtils.isEmpty(str) && bundle.containsKey(str) && (str3 = (String) bundle.get(str)) != null) {
                    return str3;
                }
            } catch (Exception e11) {
                TmcLogger.e("get json value exception", e11);
            }
        }
        return str2;
    }

    public static <T> T getValue(Bundle bundle, String str, T t11) {
        T t12;
        if (bundle != null) {
            try {
                return (TextUtils.isEmpty(str) || t11 == null || !bundle.containsKey(str) || (t12 = (T) bundle.get(str)) == null || !t11.getClass().isAssignableFrom(t12.getClass())) ? t11 : t12;
            } catch (Exception e11) {
                TmcLogger.e("get json value exception", e11);
            }
        }
        return t11;
    }

    @NonNull
    public static Map<String, Object> toHashMap(@Nullable Bundle bundle) {
        HashMap map = new HashMap();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                map.put(str, bundle.get(str));
            }
        }
        return map;
    }

    public static void tryUnparcel(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.get("aaa");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "unparcel exception!", th2);
            }
        }
    }
}
