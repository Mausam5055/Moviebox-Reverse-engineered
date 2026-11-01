package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaqr extends zzatu implements zzavg {
    private static final zzaqr zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzatc zzg;
    private int zzh;

    static {
        zzaqr zzaqrVar = new zzaqr();
        zzb = zzaqrVar;
        zzatu.zzaE(zzaqr.class, zzaqrVar);
    }

    private zzaqr() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u0004", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzaqr();
        }
        zzaqo zzaqoVar = null;
        if (i12 == 4) {
            return new zzaqq(zzaqoVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaqr.class) {
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
