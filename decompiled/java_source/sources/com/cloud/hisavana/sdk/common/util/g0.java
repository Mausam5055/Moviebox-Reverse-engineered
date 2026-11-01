package com.cloud.hisavana.sdk.common.util;

import android.os.Bundle;
import android.util.Log;
import com.cloud.hisavana.sdk.e4;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g0 {
    public static final String a(ConcurrentHashMap concurrentHashMap, String key) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(key, "key");
        try {
            Object obj = concurrentHashMap.get(key);
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        } catch (Throwable th2) {
            Log.e("adsdk", "safeGetString: ", th2);
            return null;
        }
    }

    public static final void b(ConcurrentHashMap concurrentHashMap, Bundle bundle) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(bundle, "bundle");
        try {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null) {
                    concurrentHashMap.put(str, obj);
                }
            }
        } catch (Throwable th2) {
            Log.e("adsdk", "safePutAll: ", th2);
        }
    }

    public static final void c(ConcurrentHashMap concurrentHashMap, String key, boolean z10) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(key, "key");
        try {
            concurrentHashMap.put(key, Boolean.valueOf(z10));
        } catch (Throwable th2) {
            Log.e("adsdk", "safePutBoolean: ", th2);
        }
    }

    public static final void d(Bundle bundle, String key, int i11) {
        Intrinsics.h(bundle, "<this>");
        Intrinsics.h(key, "key");
        try {
            bundle.putInt(key, i11);
        } catch (Throwable th2) {
            Log.e("adsdk", "bundleSafePutInt: ", th2);
        }
    }

    public static final void e(ConcurrentHashMap concurrentHashMap, String key, int i11) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(key, "key");
        try {
            concurrentHashMap.put(key, Integer.valueOf(i11));
        } catch (Throwable th2) {
            Log.e("adsdk", "safePutInt: ", th2);
        }
    }

    public static final void f(Bundle bundle, String str, long j11) {
        Intrinsics.h(bundle, "<this>");
        try {
            bundle.putLong(str, j11);
        } catch (Throwable th2) {
            Log.e("adsdk", "bundleSafePutLong: ", th2);
        }
    }

    public static final void g(Bundle bundle, String str, String str2) {
        Intrinsics.h(bundle, "<this>");
        try {
            bundle.putString(str, str2);
        } catch (Throwable th2) {
            Log.e("adsdk", "bundleSafePutString: ", th2);
        }
    }

    public static final void h(ConcurrentHashMap concurrentHashMap, String key, String str) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(key, "key");
        if (str != null) {
            try {
                concurrentHashMap.put(key, str);
            } catch (Throwable th2) {
                Log.e("adsdk", "safePutString: ", th2);
            }
        }
    }

    public static final void i(Bundle bundle, String key) {
        Intrinsics.h(bundle, "<this>");
        Intrinsics.h(key, "key");
        try {
            bundle.remove(key);
        } catch (Throwable th2) {
            Log.e("adsdk", "bundleSafeRemove: ", th2);
        }
    }

    public static final void j(ConcurrentHashMap concurrentHashMap, String key) {
        Intrinsics.h(concurrentHashMap, "<this>");
        Intrinsics.h(key, "key");
        try {
            concurrentHashMap.remove(key);
        } catch (Throwable th2) {
            Log.e("adsdk", "safeRemove: ", th2);
        }
    }

    public static final Bundle k(Map map) {
        Intrinsics.h(map, "<this>");
        Bundle bundle = new Bundle();
        try {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value instanceof String) {
                    bundle.putString(str, (String) value);
                } else if (value instanceof Integer) {
                    bundle.putInt(str, ((Number) value).intValue());
                } else if (value instanceof Long) {
                    bundle.putLong(str, ((Number) value).longValue());
                } else if (value instanceof Boolean) {
                    bundle.putBoolean(str, ((Boolean) value).booleanValue());
                } else if (value instanceof Double) {
                    bundle.putDouble(str, ((Number) value).doubleValue());
                } else if (value instanceof Float) {
                    bundle.putFloat(str, ((Number) value).floatValue());
                } else if (value instanceof byte[]) {
                    bundle.putByteArray(str, (byte[]) value);
                } else {
                    e4.b().w("MapToBundle", "Unsupported type for key '" + str + "': " + value.getClass().getName());
                }
            }
        } catch (Throwable th2) {
            Log.e("adsdk", "toBundle: ", th2);
        }
        return bundle;
    }
}
