package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzafo extends zzatu implements zzavg {
    private static final zzafo zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzwd zzh;
    private byte zzm = 2;
    private String zzg = "";
    private String zzi = "";
    private zzauc zzj = zzatu.zzax();
    private String zzk = "";
    private String zzl = "";

    static {
        zzafo zzafoVar = new zzafo();
        zzb = zzafoVar;
        zzatu.zzaE(zzafo.class, zzafoVar);
    }

    private zzafo() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return Byte.valueOf(this.zzm);
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဈ\u0000\u0002ᐉ\u0001\u0003ဈ\u0002\u0004\u001a\u0005ဈ\u0003\u0006ဈ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i12 == 3) {
            return new zzafo();
        }
        zzadu zzaduVar = null;
        if (i12 == 4) {
            return new zzafn(zzaduVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            this.zzm = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzafo.class) {
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
