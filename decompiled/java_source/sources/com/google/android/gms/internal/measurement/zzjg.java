package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class zzjg {
    static final zzjg zza = new zzjg(true);
    private static volatile boolean zzb;
    private static volatile zzjg zzc;
    private final Map<zza, zzjt.zzf<?, ?>> zzd;

    private static final class zza {
        private final Object zza;
        private final int zzb;

        zza(Object obj, int i11) {
            this.zza = obj;
            this.zzb = i11;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zza == zzaVar.zza && this.zzb == zzaVar.zzb;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.zza) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.zzb;
        }
    }

    zzjg() {
        this.zzd = new HashMap();
    }

    private zzjg(boolean z10) {
        this.zzd = Collections.emptyMap();
    }

    public static zzjg zza() {
        zzjg zzjgVar = zzc;
        if (zzjgVar != null) {
            return zzjgVar;
        }
        synchronized (zzjg.class) {
            try {
                zzjg zzjgVar2 = zzc;
                if (zzjgVar2 != null) {
                    return zzjgVar2;
                }
                zzjg zzjgVarZza = zzjr.zza(zzjg.class);
                zzc = zzjgVarZza;
                return zzjgVarZza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final <ContainingType extends zzlc> zzjt.zzf<ContainingType, ?> zza(ContainingType containingtype, int i11) {
        return (zzjt.zzf) this.zzd.get(new zza(containingtype, i11));
    }
}
