package com.google.android.libraries.places.internal;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzamn extends zzatu implements zzavg {
    private static final zzamn zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();

    static {
        zzamn zzamnVar = new zzamn();
        zzb = zzamnVar;
        zzatu.zzaE(zzamn.class, zzamnVar);
    }

    private zzamn() {
    }

    public static zzamn zzc() {
        return zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzamm.class});
        }
        if (i12 == 3) {
            return new zzamn();
        }
        zzalz zzalzVar = null;
        if (i12 == 4) {
            return new zzama(zzalzVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzamn.class) {
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

    public final List zzd() {
        return this.zzf;
    }
}
