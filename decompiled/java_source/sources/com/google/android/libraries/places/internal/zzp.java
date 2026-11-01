package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends zzatu implements zzavg {
    private static final zzp zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzcd zzg;
    private int zzh;

    static {
        zzp zzpVar = new zzp();
        zzb = zzpVar;
        zzatu.zzaE(zzp.class, zzpVar);
    }

    private zzp() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001", new Object[]{"zzf", "zzg", "zzh", zzo.zza});
        }
        if (i12 == 3) {
            return new zzp();
        }
        zza zzaVar = null;
        if (i12 == 4) {
            return new zzn(zzaVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzp.class) {
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
