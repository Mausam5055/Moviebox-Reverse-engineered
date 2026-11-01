package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzti extends zzatu implements zzavg {
    private static final zzti zzb;
    private static volatile zzavn zze;
    private int zzf;
    private boolean zzg;
    private int zzh;
    private boolean zzi;
    private int zzj;
    private boolean zzk;
    private int zzl;
    private boolean zzm;
    private int zzn;
    private boolean zzo;
    private int zzp;
    private boolean zzq;
    private int zzr;
    private boolean zzs;
    private int zzt;
    private boolean zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private int zzy;

    static {
        zzti zztiVar = new zzti();
        zzb = zztiVar;
        zzatu.zzaE(zzti.class, zztiVar);
    }

    private zzti() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004င\u0003\u0005ဇ\u0004\u0006င\u0005\u0007ဇ\u0006\bင\u0007\tဇ\b\nင\t\u000bဇ\n\fင\u000b\rဇ\f\u000eင\r\u000fဇ\u000e\u0010င\u000f\u0011င\u0010\u0012င\u0011\u0013င\u0012", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
        }
        if (i12 == 3) {
            return new zzti();
        }
        zzsu zzsuVar = null;
        if (i12 == 4) {
            return new zzth(zzsuVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzti.class) {
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
