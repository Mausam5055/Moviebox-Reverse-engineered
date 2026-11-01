package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzco extends zzatu implements zzavg {
    private static final zzco zzb;
    private static volatile zzavn zze;
    private int zzf;
    private double zzg = 1.0d;
    private double zzh = 1.0d;

    static {
        zzco zzcoVar = new zzco();
        zzb = zzcoVar;
        zzatu.zzaE(zzco.class, zzcoVar);
    }

    private zzco() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001က\u0000\u0002က\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzco();
        }
        zzcm zzcmVar = null;
        if (i12 == 4) {
            return new zzcn(zzcmVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzco.class) {
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
