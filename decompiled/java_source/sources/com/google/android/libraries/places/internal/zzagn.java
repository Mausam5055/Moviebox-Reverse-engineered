package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagn extends zzatu implements zzavg {
    private static final zzaua zzb = new zzagl();
    private static final zzagn zze;
    private static volatile zzavn zzf;
    private zzatz zzg = zzatu.zzau();

    static {
        zzagn zzagnVar = new zzagn();
        zze = zzagnVar;
        zzatu.zzaE(zzagn.class, zzagnVar);
    }

    private zzagn() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001ࠞ", new Object[]{"zzg", zzadw.zza});
        }
        if (i12 == 3) {
            return new zzagn();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzagm(zzaduVar);
        }
        if (i12 == 5) {
            return zze;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zzf;
        if (zzatpVar == null) {
            synchronized (zzagn.class) {
                try {
                    zzatpVar = zzf;
                    if (zzatpVar == null) {
                        zzatpVar = new zzatp(zze);
                        zzf = zzatpVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzatpVar;
    }
}
