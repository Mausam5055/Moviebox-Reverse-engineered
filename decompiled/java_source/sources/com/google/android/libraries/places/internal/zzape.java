package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzape extends zzatu implements zzavg {
    private static final zzape zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzapd zzg;
    private zzapd zzh;

    static {
        zzape zzapeVar = new zzape();
        zzb = zzapeVar;
        zzatu.zzaE(zzape.class, zzapeVar);
    }

    private zzape() {
    }

    public final zzapd zza() {
        zzapd zzapdVar = this.zzh;
        return zzapdVar == null ? zzapd.zzf() : zzapdVar;
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
            return new zzape();
        }
        zzaok zzaokVar = null;
        if (i12 == 4) {
            return new zzapb(zzaokVar);
        }
        if (i12 == 5) {
            return zzb;
        }
        if (i12 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzape.class) {
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

    public final zzapd zzc() {
        zzapd zzapdVar = this.zzg;
        return zzapdVar == null ? zzapd.zzf() : zzapdVar;
    }

    public final boolean zze() {
        return (this.zzf & 2) != 0;
    }

    public final boolean zzf() {
        return (this.zzf & 1) != 0;
    }
}
