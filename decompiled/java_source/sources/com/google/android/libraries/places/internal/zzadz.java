package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzadz extends zzatu implements zzavg {
    private static final zzadz zzb;
    private static volatile zzavn zze;
    private int zzf;
    private String zzg = "";
    private int zzh;

    static {
        zzadz zzadzVar = new zzadz();
        zzb = zzadzVar;
        zzatu.zzaE(zzadz.class, zzadzVar);
    }

    private zzadz() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001", new Object[]{"zzf", "zzg", "zzh", zzady.zza});
        }
        if (i12 == 3) {
            return new zzadz();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzadx(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzadz.class) {
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
