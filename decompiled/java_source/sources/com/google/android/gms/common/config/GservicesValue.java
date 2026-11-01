package com.google.android.gms.common.config;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class GservicesValue<T> {
    private static final Object zzc = new Object();

    @NonNull
    protected final String zza;

    @NonNull
    protected final Object zzb;

    @Nullable
    private Object zzd = null;

    protected GservicesValue(@NonNull String str, @NonNull Object obj) {
        this.zza = str;
        this.zzb = obj;
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static boolean isInitialized() {
        synchronized (zzc) {
        }
        return false;
    }

    @NonNull
    @KeepForSdk
    public static GservicesValue<Float> value(@NonNull String str, @NonNull Float f11) {
        return new zzd(str, f11);
    }

    @NonNull
    @KeepForSdk
    public static GservicesValue<Integer> value(@NonNull String str, @NonNull Integer num) {
        return new zzc(str, num);
    }

    @NonNull
    @KeepForSdk
    public static GservicesValue<Long> value(@NonNull String str, @NonNull Long l11) {
        return new zzb(str, l11);
    }

    @NonNull
    @KeepForSdk
    public static GservicesValue<String> value(@NonNull String str, @NonNull String str2) {
        return new zze(str, str2);
    }

    @NonNull
    @KeepForSdk
    public static GservicesValue<Boolean> value(@NonNull String str, boolean z10) {
        return new zza(str, Boolean.valueOf(z10));
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public final T get() {
        T t11;
        T t12 = (T) this.zzd;
        if (t12 != null) {
            return t12;
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        Object obj = zzc;
        synchronized (obj) {
        }
        synchronized (obj) {
            try {
            } catch (Throwable th2) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th2;
            }
        }
        try {
            t11 = (T) zza(this.zza);
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Object objZza = zza(this.zza);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                t11 = (T) objZza;
            } catch (Throwable th3) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th3;
            }
        }
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        return t11;
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    @KeepForSdk
    public void override(@NonNull T t11) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.zzd = t11;
        Object obj = zzc;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    @KeepForSdk
    public void resetOverride() {
        this.zzd = null;
    }

    @NonNull
    protected abstract Object zza(@NonNull String str);
}
