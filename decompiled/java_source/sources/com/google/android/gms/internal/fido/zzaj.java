package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaj {
    private final String zza;
    private final zzah zzb;
    private zzah zzc;

    /* synthetic */ zzaj(String str, zzai zzaiVar) {
        zzah zzahVar = new zzah(null);
        this.zzb = zzahVar;
        this.zzc = zzahVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.zza);
        sb2.append('{');
        zzah zzahVar = this.zzb.zzc;
        String str = "";
        while (zzahVar != null) {
            Object obj = zzahVar.zzb;
            boolean z10 = zzahVar instanceof zzaf;
            sb2.append(str);
            String str2 = zzahVar.zza;
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
            zzahVar = zzahVar.zzc;
            str = ", ";
        }
        sb2.append('}');
        return sb2.toString();
    }

    public final zzaj zza(String str, int i11) {
        String strValueOf = String.valueOf(i11);
        zzaf zzafVar = new zzaf(null);
        this.zzc.zzc = zzafVar;
        this.zzc = zzafVar;
        zzafVar.zzb = strValueOf;
        zzafVar.zza = "errorCode";
        return this;
    }

    public final zzaj zzb(String str, Object obj) {
        zzah zzahVar = new zzah(null);
        this.zzc.zzc = zzahVar;
        this.zzc = zzahVar;
        zzahVar.zzb = obj;
        zzahVar.zza = str;
        return this;
    }
}
