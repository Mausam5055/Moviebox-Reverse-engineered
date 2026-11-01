package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyu extends zzatu implements zzavg {
    private static final zzyu zzb;
    private static volatile zzavn zze;
    private int zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private long zzj;

    static {
        zzyu zzyuVar = new zzyu();
        zzb = zzyuVar;
        zzatu.zzaE(zzyu.class, zzyuVar);
    }

    private zzyu() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ခ\u0000\u0002ခ\u0001\u0003ခ\u0002\u0004ဂ\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i12 == 3) {
            return new zzyu();
        }
        zzwv zzwvVar = null;
        if (i12 == 4) {
            return new zzyt(zzwvVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzyu.class) {
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
