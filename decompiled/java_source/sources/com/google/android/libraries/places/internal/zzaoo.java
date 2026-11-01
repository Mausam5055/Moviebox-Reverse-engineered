package com.google.android.libraries.places.internal;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaoo extends zzatu implements zzavg {
    private static final zzaoo zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";
    private zzauc zzh = zzatu.zzax();
    private String zzi = "";

    static {
        zzaoo zzaooVar = new zzaoo();
        zzb = zzaooVar;
        zzatu.zzaE(zzaoo.class, zzaooVar);
    }

    private zzaoo() {
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ț\u0004Ȉ", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i12 == 3) {
            return new zzaoo();
        }
        zzaok zzaokVar = null;
        if (i12 == 4) {
            return new zzaon(zzaokVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaoo.class) {
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

    public final String zzc() {
        return this.zzf;
    }

    public final String zzd() {
        return this.zzg;
    }

    public final List zze() {
        return this.zzh;
    }
}
