package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzts extends zzatu implements zzavg {
    private static final zzts zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zztu zzh;
    private zzuc zzi;
    private zztx zzj;
    private zzua zzk;

    static {
        zzts zztsVar = new zzts();
        zzb = zztsVar;
        zzatu.zzaE(zzts.class, zztsVar);
    }

    private zzts() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"zzf", "zzg", zztr.zza, "zzh", "zzi", "zzj", "zzk"});
        }
        if (i12 == 3) {
            return new zzts();
        }
        zztn zztnVar = null;
        if (i12 == 4) {
            return new zztq(zztnVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzts.class) {
                try {
                    zzatpVar = zze;
                    if (zzatpVar == null) {
                        zzatpVar = new zzatp(zzb);
                        zze = zzatpVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzatpVar;
    }
}
