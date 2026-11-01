package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zztk extends zzatu implements zzavg {
    private static final zztk zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zztg zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    static {
        zztk zztkVar = new zztk();
        zzb = zztkVar;
        zzatu.zzaE(zztk.class, zztkVar);
    }

    private zztk() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001\u0003ဋ\u0002\u0004ဋ\u0003\u0005ဋ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i12 == 3) {
            return new zztk();
        }
        zzsu zzsuVar = null;
        if (i12 == 4) {
            return new zztj(zzsuVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zztk.class) {
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
