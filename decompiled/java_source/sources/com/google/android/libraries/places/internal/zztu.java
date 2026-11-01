package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zztu extends zzatu implements zzavg {
    private static final zztu zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzauc zzg = zzatu.zzax();
    private int zzh;

    static {
        zztu zztuVar = new zztu();
        zzb = zztuVar;
        zzatu.zzaE(zztu.class, zztuVar);
    }

    private zztu() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002င\u0000", new Object[]{"zzf", "zzg", zztp.class, "zzh"});
        }
        if (i12 == 3) {
            return new zztu();
        }
        zztn zztnVar = null;
        if (i12 == 4) {
            return new zztt(zztnVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zztu.class) {
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
