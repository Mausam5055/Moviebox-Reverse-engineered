package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaki extends zzatu implements zzavg {
    private static final zzaki zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzaxp zzg;
    private zzaxp zzh;

    static {
        zzaki zzakiVar = new zzaki();
        zzb = zzakiVar;
        zzatu.zzaE(zzaki.class, zzakiVar);
    }

    private zzaki() {
    }

    public static zzakh zza() {
        return (zzakh) zzb.zzar();
    }

    public static zzaki zzd() {
        return zzb;
    }

    static /* synthetic */ void zzg(zzaki zzakiVar, zzaxp zzaxpVar) {
        zzaxpVar.getClass();
        zzakiVar.zzg = zzaxpVar;
        zzakiVar.zzf |= 1;
    }

    static /* synthetic */ void zzh(zzaki zzakiVar, zzaxp zzaxpVar) {
        zzaxpVar.getClass();
        zzakiVar.zzh = zzaxpVar;
        zzakiVar.zzf |= 2;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i12 == 3) {
            return new zzaki();
        }
        zzakg zzakgVar = null;
        if (i12 == 4) {
            return new zzakh(zzakgVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaki.class) {
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

    public final zzaxp zze() {
        zzaxp zzaxpVar = this.zzh;
        return zzaxpVar == null ? zzaxp.zzh() : zzaxpVar;
    }

    public final zzaxp zzf() {
        zzaxp zzaxpVar = this.zzg;
        return zzaxpVar == null ? zzaxp.zzh() : zzaxpVar;
    }
}
