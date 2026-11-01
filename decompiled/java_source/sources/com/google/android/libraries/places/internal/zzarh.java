package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzarh extends zzatu implements zzavg {
    private static final zzaua zzb = new zzarf();
    private static final zzarh zze;
    private static volatile zzavn zzf;
    private double zzg;
    private zzatz zzh = zzatu.zzau();
    private zzauc zzi = zzatu.zzax();

    static {
        zzarh zzarhVar = new zzarh();
        zze = zzarhVar;
        zzatu.zzaE(zzarh.class, zzarhVar);
    }

    private zzarh() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zze, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u0000\u0002,\u0003Ț", new Object[]{"zzg", "zzh", "zzi"});
        }
        if (i12 == 3) {
            return new zzarh();
        }
        zzard zzardVar = null;
        if (i12 == 4) {
            return new zzarg(zzardVar);
        }
        if (i12 == 5) {
            return zze;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zzf;
        if (zzatpVar == null) {
            synchronized (zzarh.class) {
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
