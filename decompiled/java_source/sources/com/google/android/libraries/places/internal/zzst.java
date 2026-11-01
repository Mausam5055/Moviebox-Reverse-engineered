package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzst extends zzatu implements zzavg {
    private static final zzst zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzh;
    private int zzi;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private String zzg = "";
    private String zzj = "";

    static {
        zzst zzstVar = new zzst();
        zzb = zzstVar;
        zzatu.zzaE(zzst.class, zzstVar);
    }

    private zzst() {
    }

    public static zzso zza() {
        return (zzso) zzb.zzar();
    }

    static /* synthetic */ void zzd(zzst zzstVar, String str) {
        zzstVar.zzf |= 1;
        zzstVar.zzg = str;
    }

    static /* synthetic */ void zze(zzst zzstVar, int i11) {
        zzstVar.zzf |= 2;
        zzstVar.zzh = i11;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003င\u0002\u0004ဈ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007\t᠌\b", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzsp.zza, "zzm", zzsr.zza, "zzn", zzsq.zza, "zzo", zzss.zza});
        }
        if (i12 == 3) {
            return new zzst();
        }
        zzsn zzsnVar = null;
        if (i12 == 4) {
            return new zzso(zzsnVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzst.class) {
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
