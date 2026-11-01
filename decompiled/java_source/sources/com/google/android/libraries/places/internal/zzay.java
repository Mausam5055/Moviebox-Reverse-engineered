package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzay extends zzatu implements zzavg {
    private static final zzay zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzco zzg;
    private zzai zzh;
    private zzbc zzi;

    static {
        zzay zzayVar = new zzay();
        zzb = zzayVar;
        zzatu.zzaE(zzay.class, zzayVar);
    }

    private zzay() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0001\u0002ဉ\u0002\u0003ဉ\u0000", new Object[]{"zzf", "zzh", "zzi", "zzg"});
        }
        if (i12 == 3) {
            return new zzay();
        }
        zzaw zzawVar = null;
        if (i12 == 4) {
            return new zzax(zzawVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzay.class) {
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
