package com.google.android.libraries.places.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmm {
    private final String zza;
    private final zzmk zzb;
    private zzmk zzc;
    private boolean zzd;

    /* synthetic */ zzmm(String str, zzml zzmlVar) {
        zzmk zzmkVar = new zzmk();
        this.zzb = zzmkVar;
        this.zzc = zzmkVar;
        this.zzd = false;
        str.getClass();
        this.zza = str;
    }

    private final zzmk zzh() {
        zzmk zzmkVar = new zzmk();
        this.zzc.zzc = zzmkVar;
        this.zzc = zzmkVar;
        return zzmkVar;
    }

    private final zzmm zzi(String str, Object obj) {
        zzmj zzmjVar = new zzmj(null);
        this.zzc.zzc = zzmjVar;
        this.zzc = zzmjVar;
        zzmjVar.zzb = obj;
        zzmjVar.zza = str;
        return this;
    }

    public final String toString() {
        boolean z10 = this.zzd;
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.zza);
        sb2.append('{');
        String str = "";
        for (zzmk zzmkVar = this.zzb.zzc; zzmkVar != null; zzmkVar = zzmkVar.zzc) {
            boolean z11 = zzmkVar instanceof zzmj;
            Object obj = zzmkVar.zzb;
            if (z11 || obj != null || !z10) {
                sb2.append(str);
                String str2 = zzmkVar.zza;
                if (str2 != null) {
                    sb2.append(str2);
                    sb2.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb2.append(obj);
                } else {
                    String strDeepToString = Arrays.deepToString(new Object[]{obj});
                    sb2.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                }
                str = ", ";
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public final zzmm zza(String str, double d11) {
        zzi("backoffMultiplier", String.valueOf(d11));
        return this;
    }

    public final zzmm zzb(String str, int i11) {
        zzi(str, String.valueOf(i11));
        return this;
    }

    public final zzmm zzc(String str, long j11) {
        zzi(str, String.valueOf(j11));
        return this;
    }

    public final zzmm zzd(String str, Object obj) {
        zzmk zzmkVarZzh = zzh();
        zzmkVarZzh.zzb = obj;
        zzmkVarZzh.zza = str;
        return this;
    }

    public final zzmm zze(String str, boolean z10) {
        zzi(str, String.valueOf(z10));
        return this;
    }

    public final zzmm zzf(Object obj) {
        zzh().zzb = obj;
        return this;
    }

    public final zzmm zzg() {
        this.zzd = true;
        return this;
    }
}
