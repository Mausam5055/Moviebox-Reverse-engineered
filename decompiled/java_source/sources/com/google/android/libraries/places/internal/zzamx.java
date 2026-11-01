package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzamx extends zzatu implements zzavg {
    private static final zzamx zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzaxs zzg;
    private zzauc zzh = zzatu.zzax();

    static {
        zzamx zzamxVar = new zzamx();
        zzb = zzamxVar;
        zzatu.zzaE(zzamx.class, zzamxVar);
    }

    private zzamx() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b", new Object[]{"zzf", "zzg", "zzh", zzaqh.class});
        }
        if (i12 == 3) {
            return new zzamx();
        }
        zzamu zzamuVar = null;
        if (i12 == 4) {
            return new zzamw(zzamuVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzamx.class) {
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
