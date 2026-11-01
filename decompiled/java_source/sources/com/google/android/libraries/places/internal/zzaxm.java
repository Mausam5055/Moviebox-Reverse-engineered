package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaxm extends zzatu implements zzavg {
    private static final zzaxm zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzaxm zzaxmVar = new zzaxm();
        zzb = zzaxmVar;
        zzatu.zzaE(zzaxm.class, zzaxmVar);
    }

    private zzaxm() {
    }

    public static zzaxm zzh() {
        return zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzaxm();
        }
        zzaxk zzaxkVar = null;
        if (i12 == 4) {
            return new zzaxl(zzaxkVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaxm.class) {
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

    public final int zzc() {
        return this.zzh;
    }

    public final int zze() {
        return this.zzg;
    }

    public final int zzf() {
        return this.zzf;
    }
}
