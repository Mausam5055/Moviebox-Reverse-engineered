package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrq {
    private static final String[] zza = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    private static final zzru zzb;

    static {
        zzru zzrvVar;
        for (int i11 = 0; i11 < 2; i11++) {
            zzrvVar = null;
            try {
                zzrvVar = (zzru) Class.forName(zza[i11]).asSubclass(zzru.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (zzrvVar != null) {
                zzb = zzrvVar;
            }
        }
        zzrvVar = new zzrv();
        zzb = zzrvVar;
    }

    public static StackTraceElement zza(Class cls, int i11) {
        zzrr.zza(cls, "target");
        return zzb.zza(cls, 2);
    }
}
