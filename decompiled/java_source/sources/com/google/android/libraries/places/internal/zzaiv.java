package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaiv extends zzatu implements zzavg {
    private static final zzaiv zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zzauc zzh = zzatu.zzax();
    private zzauc zzi = zzatu.zzax();
    private zzauc zzj = zzatu.zzax();

    static {
        zzaiv zzaivVar = new zzaiv();
        zzb = zzaivVar;
        zzatu.zzaE(zzaiv.class, zzaivVar);
    }

    private zzaiv() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0003\u0000\u0001င\u0000\u0002\u001a\u0003\u001b\u0004\u001b", new Object[]{"zzf", "zzg", "zzh", "zzi", zzaix.class, "zzj", zzadz.class});
        }
        if (i12 == 3) {
            return new zzaiv();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaiu(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaiv.class) {
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
