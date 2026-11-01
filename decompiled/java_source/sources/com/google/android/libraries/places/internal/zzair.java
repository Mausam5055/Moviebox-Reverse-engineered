package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzair extends zzatu implements zzavg {
    private static final zzair zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zzauc zzh = zzatu.zzax();
    private zzauc zzi = zzatu.zzax();

    static {
        zzair zzairVar = new zzair();
        zzb = zzairVar;
        zzatu.zzaE(zzair.class, zzairVar);
    }

    private zzair() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001င\u0000\u0002\u001a\u0003\u001b", new Object[]{"zzf", "zzg", "zzh", "zzi", zzait.class});
        }
        if (i12 == 3) {
            return new zzair();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaiq(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzair.class) {
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
