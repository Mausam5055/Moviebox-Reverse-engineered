package com.google.android.gms.internal.play_billing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcz {
    private static final String[] zza = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    private static final zzdd zzb;

    static {
        zzdd zzdeVar;
        for (int i11 = 0; i11 < 2; i11++) {
            zzdeVar = null;
            try {
                zzdeVar = (zzdd) Class.forName(zza[i11]).asSubclass(zzdd.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (zzdeVar != null) {
                zzb = zzdeVar;
            }
        }
        zzdeVar = new zzde();
        zzb = zzdeVar;
    }

    @NullableDecl
    public static StackTraceElement zza(Class cls, int i11) {
        zzda.zza(cls, "target");
        return zzb.zza(cls, 2);
    }
}
