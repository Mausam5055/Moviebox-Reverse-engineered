package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbo extends zzatu implements zzavg {
    private static final zzaua zzb = new zzbm();
    private static final zzbo zze;
    private static volatile zzavn zzf;
    private int zzg;
    private zzatz zzh = zzatu.zzau();
    private int zzi;
    private int zzj;
    private int zzk;
    private long zzl;
    private float zzm;
    private float zzn;
    private int zzo;
    private zzbj zzp;

    static {
        zzbo zzboVar = new zzbo();
        zze = zzboVar;
        zzatu.zzaE(zzbo.class, zzboVar);
    }

    private zzbo() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            zzaty zzatyVar = zzas.zza;
            zzaty zzatyVar2 = zzbh.zza;
            return zzatu.zzaB(zze, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001ࠬ\u0002᠌\u0000\u0003᠌\u0001\u0004င\u0002\u0005ဂ\u0003\u0006ခ\u0004\u0007ခ\u0005\b᠌\u0006\tဉ\u0007", new Object[]{"zzg", "zzh", zzatyVar, "zzi", zzatyVar2, "zzj", zzatyVar2, "zzk", "zzl", "zzm", "zzn", "zzo", zzatyVar, "zzp"});
        }
        if (i12 == 3) {
            return new zzbo();
        }
        zzbg zzbgVar = null;
        if (i12 == 4) {
            return new zzbn(zzbgVar);
        }
        if (i12 == 5) {
            return zze;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zzf;
        if (zzatpVar == null) {
            synchronized (zzbo.class) {
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
