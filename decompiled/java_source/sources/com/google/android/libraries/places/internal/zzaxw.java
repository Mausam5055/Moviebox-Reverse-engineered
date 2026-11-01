package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaxw implements zzaxy {
    private static final Object zza = new Object();
    private volatile zzaxy zzb;
    private volatile Object zzc = zza;

    private zzaxw(zzaxy zzaxyVar) {
        this.zzb = zzaxyVar;
    }

    public static zzaxy zza(zzaxy zzaxyVar) {
        return zzaxyVar instanceof zzaxw ? zzaxyVar : new zzaxw(zzaxyVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbvt
    public final Object zzb() {
        Object objZzb = this.zzc;
        Object obj = zza;
        if (objZzb == obj) {
            synchronized (this) {
                try {
                    objZzb = this.zzc;
                    if (objZzb == obj) {
                        objZzb = this.zzb.zzb();
                        Object obj2 = this.zzc;
                        if (obj2 != obj && obj2 != objZzb) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + objZzb + ". This is likely due to a circular dependency.");
                        }
                        this.zzc = objZzb;
                        this.zzb = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return objZzb;
    }
}
