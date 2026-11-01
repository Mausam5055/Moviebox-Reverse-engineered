package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaij extends zzatu implements zzavg {
    private static final zzaij zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzwf zzg;
    private int zzh;
    private int zzi;
    private int zzk;
    private byte zzl = 2;
    private String zzj = "";

    static {
        zzaij zzaijVar = new zzaij();
        zzb = zzaijVar;
        zzatu.zzaE(zzaij.class, zzaijVar);
    }

    private zzaij() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return Byte.valueOf(this.zzl);
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0001\u0001ᐉ\u0000\u0002င\u0001\u0003င\u0002\u0004ဈ\u0003\u0005᠌\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzaii.zza});
        }
        if (i12 == 3) {
            return new zzaij();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzaih(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            this.zzl = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaij.class) {
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
