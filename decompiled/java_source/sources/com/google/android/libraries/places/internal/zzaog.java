package com.google.android.libraries.places.internal;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaog extends zzatu implements zzavg {
    private static final zzaog zzb;
    private static volatile zzavn zze;
    private int zzg;
    private int zzh;
    private String zzf = "";
    private zzauc zzi = zzatu.zzax();

    static {
        zzaog zzaogVar = new zzaog();
        zzb = zzaogVar;
        zzatu.zzaE(zzaog.class, zzaogVar);
    }

    private zzaog() {
    }

    public final int zza() {
        return this.zzh;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u001b", new Object[]{"zzf", "zzg", "zzh", "zzi", zzalr.class});
        }
        if (i12 == 3) {
            return new zzaog();
        }
        zzaoe zzaoeVar = null;
        if (i12 == 4) {
            return new zzaof(zzaoeVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaog.class) {
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

    public final int zzc() {
        return this.zzg;
    }

    public final String zze() {
        return this.zzf;
    }

    public final List zzf() {
        return this.zzi;
    }
}
