package com.cloud.tmc.integration.utils;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.storage.TmcStorage;
import com.cloud.tmc.storage.impl.IStorage;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bJ\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J#\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00132\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0002\u0010\u0014J \u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J&\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000bJ&\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000fJ&\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011J&\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u001e\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/utils/MiniAppStorage;", "", "()V", "TAG", "", "clear", "", "context", "Landroid/content/Context;", "fileName", "getBoolean", "", "key", "defaultValue", "getInt", "", "getLong", "", "getMMKVFileAllKeys", "", "(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;", "getString", "putBoolean", AppMeasurementSdk.ConditionalUserProperty.VALUE, "putInt", "putLong", "putString", "remove", "warmUpMMKVFile", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppStorage {
    public static final MiniAppStorage INSTANCE = new MiniAppStorage();
    private static final String TAG = "MiniAppStorage";

    private MiniAppStorage() {
    }

    public final void clear(Context context, String fileName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        new TmcStorage(context, fileName, true, null, 8, null).clearAll();
    }

    public final boolean getBoolean(Context context, String fileName, String key, boolean defaultValue) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        return new TmcStorage(context, fileName, true, null, 8, null).getBoolean(key, defaultValue);
    }

    public final int getInt(Context context, String fileName, String key) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        return IStorage.DefaultImpls.getInt$default(new TmcStorage(context, fileName, true, null, 8, null), key, 0, 2, null);
    }

    public final long getLong(Context context, String fileName, String key) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        return IStorage.DefaultImpls.getLong$default(new TmcStorage(context, fileName, true, null, 8, null), key, 0L, 2, null);
    }

    public final String[] getMMKVFileAllKeys(Context context, String fileName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        try {
            return new TmcStorage(context, fileName, true, null, 8, null).getKv().a();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    public final String getString(Context context, String fileName, String key) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        return IStorage.DefaultImpls.getString$default(new TmcStorage(context, fileName, true, null, 8, null), key, null, 2, null);
    }

    public final void putBoolean(Context context, String fileName, String key, boolean value) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).putBoolean(key, value);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void putInt(Context context, String fileName, String key, int value) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).putInt(key, value);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void putLong(Context context, String fileName, String key, long value) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).putLong(key, value);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void putString(Context context, String fileName, String key, String value) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).putString(key, value);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void remove(Context context, String fileName, String key) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(key, "key");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).removeKey(key);
        } catch (Throwable unused) {
            TmcLogger.e(TAG);
        }
    }

    public final void warmUpMMKVFile(Context context, String fileName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        try {
            new TmcStorage(context, fileName, true, null, 8, null).getKv().mmapID();
        } catch (Throwable th2) {
            TmcLogger.e("warmUpMMKVFile error: " + th2.getMessage());
        }
    }
}
