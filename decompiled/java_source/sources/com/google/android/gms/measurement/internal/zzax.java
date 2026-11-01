package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzax {
    private static final zzax zza = new zzax(null, 100);
    private final int zzb;
    private final String zzc;
    private final Boolean zzd;
    private final String zze;
    private final EnumMap<zzje.zza, zzjh> zzf;

    zzax(Boolean bool, int i11) {
        this((Boolean) null, i11, (Boolean) null, (String) null);
    }

    zzax(Boolean bool, int i11, Boolean bool2, String str) {
        EnumMap<zzje.zza, zzjh> enumMap = new EnumMap<>(zzje.zza.class);
        this.zzf = enumMap;
        enumMap.put(zzje.zza.AD_USER_DATA, zzje.zza(bool));
        this.zzb = i11;
        this.zzc = zzh();
        this.zzd = bool2;
        this.zze = str;
    }

    private zzax(EnumMap<zzje.zza, zzjh> enumMap, int i11, Boolean bool, String str) {
        EnumMap<zzje.zza, zzjh> enumMap2 = new EnumMap<>(zzje.zza.class);
        this.zzf = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzb = i11;
        this.zzc = zzh();
        this.zzd = bool;
        this.zze = str;
    }

    public static zzax zza(Bundle bundle, int i11) {
        if (bundle == null) {
            return new zzax(null, i11);
        }
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            enumMap.put(zzaVar, zzje.zza(bundle.getString(zzaVar.zze)));
        }
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, i11, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    static zzax zza(zzjh zzjhVar, int i11) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        enumMap.put(zzje.zza.AD_USER_DATA, zzjhVar);
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, -10, (Boolean) null, (String) null);
    }

    public static zzax zza(String str) {
        if (str == null || str.length() <= 0) {
            return zza;
        }
        String[] strArrSplit = str.split(":");
        int i11 = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        zzje.zza[] zzaVarArrZza = zzjg.DMA.zza();
        int length = zzaVarArrZza.length;
        int i12 = 1;
        int i13 = 0;
        while (i13 < length) {
            enumMap.put(zzaVarArrZza[i13], zzje.zza(strArrSplit[i12].charAt(0)));
            i13++;
            i12++;
        }
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, i11, (Boolean) null, (String) null);
    }

    public static Boolean zza(Bundle bundle) {
        zzjh zzjhVarZza;
        if (bundle == null || (zzjhVarZza = zzje.zza(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int i11 = zzba.zza[zzjhVarZza.ordinal()];
        if (i11 == 3) {
            return Boolean.FALSE;
        }
        if (i11 != 4) {
            return null;
        }
        return Boolean.TRUE;
    }

    private final String zzh() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.zzb);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb2.append(":");
            sb2.append(zzje.zza(this.zzf.get(zzaVar)));
        }
        return sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzax)) {
            return false;
        }
        zzax zzaxVar = (zzax) obj;
        if (this.zzc.equalsIgnoreCase(zzaxVar.zzc) && Objects.equals(this.zzd, zzaxVar.zzd)) {
            return Objects.equals(this.zze, zzaxVar.zze);
        }
        return false;
    }

    public final int hashCode() {
        int i11;
        Boolean bool = this.zzd;
        if (bool == null) {
            i11 = 3;
        } else {
            i11 = bool == Boolean.TRUE ? 7 : 13;
        }
        String str = this.zze;
        return this.zzc.hashCode() + (i11 * 29) + ((str == null ? 17 : str.hashCode()) * Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(zzje.zza(this.zzb));
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb2.append(",");
            sb2.append(zzaVar.zze);
            sb2.append(UrlUtils.EQUAL_MARK);
            zzjh zzjhVar = this.zzf.get(zzaVar);
            if (zzjhVar == null) {
                sb2.append("uninitialized");
            } else {
                int i11 = zzba.zza[zzjhVar.ordinal()];
                if (i11 == 1) {
                    sb2.append("uninitialized");
                } else if (i11 == 2) {
                    sb2.append("eu_consent_policy");
                } else if (i11 == 3) {
                    sb2.append("denied");
                } else if (i11 == 4) {
                    sb2.append("granted");
                }
            }
        }
        if (this.zzd != null) {
            sb2.append(",isDmaRegion=");
            sb2.append(this.zzd);
        }
        if (this.zze != null) {
            sb2.append(",cpsDisplayStr=");
            sb2.append(this.zze);
        }
        return sb2.toString();
    }

    public final int zza() {
        return this.zzb;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzf.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strZzb = zzje.zzb((zzjh) entry.getValue());
            if (strZzb != null) {
                bundle.putString(((zzje.zza) entry.getKey()).zze, strZzb);
            }
        }
        Boolean bool = this.zzd;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final zzjh zzc() {
        zzjh zzjhVar = this.zzf.get(zzje.zza.AD_USER_DATA);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final Boolean zzd() {
        return this.zzd;
    }

    public final String zze() {
        return this.zze;
    }

    public final String zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        Iterator<zzjh> it = this.zzf.values().iterator();
        while (it.hasNext()) {
            if (it.next() != zzjh.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }
}
