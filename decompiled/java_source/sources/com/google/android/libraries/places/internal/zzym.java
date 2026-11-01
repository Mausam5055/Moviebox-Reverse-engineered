package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzym extends zzatu implements zzavg {
    private static final zzym zzb;
    private static volatile zzavn zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private float zzj;
    private float zzk;

    static {
        zzym zzymVar = new zzym();
        zzb = zzymVar;
        zzatu.zzaE(zzym.class, zzymVar);
    }

    private zzym() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001စ\u0000\u0002င\u0001\u0003င\u0002\u0004ခ\u0003\u0005ခ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i12 == 3) {
            return new zzym();
        }
        zzwv zzwvVar = null;
        if (i12 == 4) {
            return new zzyl(zzwvVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzym.class) {
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
