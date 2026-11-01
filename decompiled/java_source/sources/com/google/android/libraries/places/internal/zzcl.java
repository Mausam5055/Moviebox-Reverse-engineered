package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcl extends zzatu implements zzavg {
    private static final zzcl zzb;
    private static volatile zzavn zze;
    private int zzA;
    private int zzf;
    private int zzg;
    private int zzh;
    private float zzi;
    private int zzj;
    private int zzk;
    private float zzl;
    private int zzm;
    private int zzn;
    private float zzo;
    private int zzp;
    private int zzq;
    private float zzr;
    private int zzs;
    private float zzt;
    private float zzu;
    private double zzv;
    private int zzw;
    private boolean zzx;
    private int zzy;
    private boolean zzz;

    static {
        zzcl zzclVar = new zzcl();
        zzb = zzclVar;
        zzatu.zzaE(zzcl.class, zzclVar);
    }

    private zzcl() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ခ\u0002\u0004င\u0003\u0005င\u0004\u0006ခ\u0005\u0007င\u0006\bင\u0007\tခ\b\nင\t\u000bင\n\fခ\u000b\rင\f\u000eခ\r\u000fခ\u000e\u0010က\u000f\u0011᠌\u0010\u0012ဇ\u0011\u0013᠌\u0012\u0014ဇ\u0013\u0015᠌\u0014", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", zzck.zza, "zzx", "zzy", zzci.zza, "zzz", "zzA", zzcj.zza});
        }
        if (i12 == 3) {
            return new zzcl();
        }
        zzce zzceVar = null;
        if (i12 == 4) {
            return new zzch(zzceVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzcl.class) {
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
