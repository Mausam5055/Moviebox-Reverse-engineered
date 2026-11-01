package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbf extends zzatu implements zzavg {
    private static final zzbf zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzco zzg;
    private String zzh = "";
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        zzbf zzbfVar = new zzbf();
        zzb = zzbfVar;
        zzatu.zzaE(zzbf.class, zzbfVar);
    }

    private zzbf() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0001\u0002ဉ\u0000\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzf", "zzh", "zzg", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i12 == 3) {
            return new zzbf();
        }
        zzbd zzbdVar = null;
        if (i12 == 4) {
            return new zzbe(zzbdVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzbf.class) {
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
