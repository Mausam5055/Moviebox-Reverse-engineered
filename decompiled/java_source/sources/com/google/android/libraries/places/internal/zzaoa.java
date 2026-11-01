package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaoa extends zzatu implements zzavg {
    private static final zzaoa zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzaoa zzaoaVar = new zzaoa();
        zzb = zzaoaVar;
        zzatu.zzaE(zzaoa.class, zzaoaVar);
    }

    private zzaoa() {
    }

    public static zzanz zza() {
        return (zzanz) zzb.zzar();
    }

    public static zzaoa zzd() {
        return zzb;
    }

    static /* synthetic */ void zzf(zzaoa zzaoaVar, String str) {
        str.getClass();
        zzaoaVar.zzi = str;
    }

    static /* synthetic */ void zzg(zzaoa zzaoaVar, String str) {
        str.getClass();
        zzaoaVar.zzg = str;
    }

    @Override // com.google.android.libraries.places.internal.zzatu
    protected final Object zzb(int i11, Object obj, Object obj2) {
        int i12 = i11 - 1;
        if (i12 == 0) {
            return (byte) 1;
        }
        if (i12 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i12 == 3) {
            return new zzaoa();
        }
        zzany zzanyVar = null;
        if (i12 == 4) {
            return new zzanz(zzanyVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaoa.class) {
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
