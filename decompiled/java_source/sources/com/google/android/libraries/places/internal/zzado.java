package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzado extends zzatu implements zzavg {
    private static final zzado zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private long zzh;

    static {
        zzado zzadoVar = new zzado();
        zzb = zzadoVar;
        zzatu.zzaE(zzado.class, zzadoVar);
    }

    private zzado() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဃ\u0001", new Object[]{"zzf", "zzg", zzadn.zza, "zzh"});
        }
        if (i12 == 3) {
            return new zzado();
        }
        zzabf zzabfVar = null;
        if (i12 == 4) {
            return new zzadm(zzabfVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzado.class) {
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
