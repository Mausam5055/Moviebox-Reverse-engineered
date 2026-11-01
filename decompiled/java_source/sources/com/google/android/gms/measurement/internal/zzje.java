package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzje {
    public static final zzje zza = new zzje(null, null, 100);
    private final EnumMap<zza, zzjh> zzb;
    private final int zzc;

    public enum zza {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");

        public final String zze;

        zza(String str) {
            this.zze = str;
        }
    }

    public zzje(Boolean bool, Boolean bool2, int i11) {
        EnumMap<zza, zzjh> enumMap = new EnumMap<>(zza.class);
        this.zzb = enumMap;
        enumMap.put(zza.AD_STORAGE, zza((Boolean) null));
        enumMap.put(zza.ANALYTICS_STORAGE, zza((Boolean) null));
        this.zzc = i11;
    }

    private zzje(EnumMap<zza, zzjh> enumMap, int i11) {
        EnumMap<zza, zzjh> enumMap2 = new EnumMap<>(zza.class);
        this.zzb = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzc = i11;
    }

    static char zza(zzjh zzjhVar) {
        if (zzjhVar == null) {
            return '-';
        }
        int iOrdinal = zzjhVar.ordinal();
        if (iOrdinal == 1) {
            return '+';
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static zzje zza(Bundle bundle, int i11) {
        if (bundle == null) {
            return new zzje(null, null, i11);
        }
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzjg.STORAGE.zzd) {
            enumMap.put(zzaVar, zza(bundle.getString(zzaVar.zze)));
        }
        return new zzje(enumMap, i11);
    }

    public static zzje zza(zzjh zzjhVar, zzjh zzjhVar2, int i11) {
        EnumMap enumMap = new EnumMap(zza.class);
        enumMap.put(zza.AD_STORAGE, zzjhVar);
        enumMap.put(zza.ANALYTICS_STORAGE, zzjhVar2);
        return new zzje(enumMap, -10);
    }

    public static zzje zza(String str, int i11) {
        EnumMap enumMap = new EnumMap(zza.class);
        if (str == null) {
            str = "";
        }
        zza[] zzaVarArrZza = zzjg.STORAGE.zza();
        for (int i12 = 0; i12 < zzaVarArrZza.length; i12++) {
            zza zzaVar = zzaVarArrZza[i12];
            int i13 = i12 + 2;
            if (i13 < str.length()) {
                enumMap.put(zzaVar, zza(str.charAt(i13)));
            } else {
                enumMap.put(zzaVar, zzjh.UNINITIALIZED);
            }
        }
        return new zzje(enumMap, i11);
    }

    static zzjh zza(char c11) {
        if (c11 == '+') {
            return zzjh.POLICY;
        }
        if (c11 != '0') {
            return c11 != '1' ? zzjh.UNINITIALIZED : zzjh.GRANTED;
        }
        return zzjh.DENIED;
    }

    static zzjh zza(Boolean bool) {
        if (bool == null) {
            return zzjh.UNINITIALIZED;
        }
        return bool.booleanValue() ? zzjh.GRANTED : zzjh.DENIED;
    }

    static zzjh zza(String str) {
        if (str == null) {
            return zzjh.UNINITIALIZED;
        }
        if (str.equals("granted")) {
            return zzjh.GRANTED;
        }
        return str.equals("denied") ? zzjh.DENIED : zzjh.UNINITIALIZED;
    }

    static String zza(int i11) {
        if (i11 == -30) {
            return "TCF";
        }
        if (i11 == -20) {
            return "API";
        }
        if (i11 == -10) {
            return "MANIFEST";
        }
        if (i11 == 0) {
            return "1P_API";
        }
        if (i11 == 30) {
            return "1P_INIT";
        }
        if (i11 != 90) {
            return i11 != 100 ? "OTHER" : NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
        return "REMOTE_CONFIG";
    }

    public static String zza(Bundle bundle) {
        String string;
        zza[] zzaVarArr = zzjg.STORAGE.zzd;
        int length = zzaVarArr.length;
        int i11 = 0;
        while (true) {
            Boolean bool = null;
            if (i11 >= length) {
                return null;
            }
            zza zzaVar = zzaVarArr[i11];
            if (bundle.containsKey(zzaVar.zze) && (string = bundle.getString(zzaVar.zze)) != null) {
                if (string.equals("granted")) {
                    bool = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    bool = Boolean.FALSE;
                }
                if (bool == null) {
                    return string;
                }
            }
            i11++;
        }
    }

    public static boolean zza(int i11, int i12) {
        if (i11 == -20 && i12 == -30) {
            return true;
        }
        return (i11 == -30 && i12 == -20) || i11 == i12 || i11 < i12;
    }

    public static zzje zzb(String str) {
        return zza(str, 100);
    }

    static String zzb(zzjh zzjhVar) {
        int iOrdinal = zzjhVar.ordinal();
        if (iOrdinal == 2) {
            return "denied";
        }
        if (iOrdinal != 3) {
            return null;
        }
        return "granted";
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzje)) {
            return false;
        }
        zzje zzjeVar = (zzje) obj;
        for (zza zzaVar : zzjg.STORAGE.zzd) {
            if (this.zzb.get(zzaVar) != zzjeVar.zzb.get(zzaVar)) {
                return false;
            }
        }
        return this.zzc == zzjeVar.zzc;
    }

    public final int hashCode() {
        int iHashCode = this.zzc * 17;
        Iterator<zzjh> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + it.next().hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(zza(this.zzc));
        for (zza zzaVar : zzjg.STORAGE.zzd) {
            sb2.append(",");
            sb2.append(zzaVar.zze);
            sb2.append(UrlUtils.EQUAL_MARK);
            zzjh zzjhVar = this.zzb.get(zzaVar);
            if (zzjhVar == null) {
                zzjhVar = zzjh.UNINITIALIZED;
            }
            sb2.append(zzjhVar);
        }
        return sb2.toString();
    }

    public final int zza() {
        return this.zzc;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    public final zzje zza(zzje zzjeVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzjg.STORAGE.zzd) {
            zzjh zzjhVar = this.zzb.get(zzaVar);
            zzjh zzjhVar2 = zzjeVar.zzb.get(zzaVar);
            if (zzjhVar == null) {
                zzjhVar = zzjhVar2;
            } else if (zzjhVar2 != null) {
                zzjh zzjhVar3 = zzjh.UNINITIALIZED;
                if (zzjhVar == zzjhVar3) {
                    zzjhVar = zzjhVar2;
                } else if (zzjhVar2 != zzjhVar3) {
                    zzjh zzjhVar4 = zzjh.POLICY;
                    if (zzjhVar == zzjhVar4) {
                        zzjhVar = zzjhVar2;
                    } else if (zzjhVar2 != zzjhVar4) {
                        zzjh zzjhVar5 = zzjh.DENIED;
                        zzjhVar = (zzjhVar == zzjhVar5 || zzjhVar2 == zzjhVar5) ? zzjhVar5 : zzjh.GRANTED;
                    }
                }
            }
            if (zzjhVar != null) {
                enumMap.put(zzaVar, zzjhVar);
            }
        }
        return new zzje(enumMap, 100);
    }

    public final boolean zza(zza zzaVar) {
        return this.zzb.get(zzaVar) != zzjh.DENIED;
    }

    public final boolean zza(zzje zzjeVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            if (!zzjeVar.zza(zzaVar) && zza(zzaVar)) {
                return true;
            }
        }
        return false;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzb.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strZzb = zzb((zzjh) entry.getValue());
            if (strZzb != null) {
                bundle.putString(((zza) entry.getKey()).zze, strZzb);
            }
        }
        return bundle;
    }

    public final zzje zzb(zzje zzjeVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzjg.STORAGE.zzd) {
            zzjh zzjhVar = this.zzb.get(zzaVar);
            if (zzjhVar == zzjh.UNINITIALIZED) {
                zzjhVar = zzjeVar.zzb.get(zzaVar);
            }
            if (zzjhVar != null) {
                enumMap.put(zzaVar, zzjhVar);
            }
        }
        return new zzje(enumMap, this.zzc);
    }

    public final boolean zzb(zzje zzjeVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            zzjh zzjhVar = this.zzb.get(zzaVar);
            zzjh zzjhVar2 = zzjeVar.zzb.get(zzaVar);
            zzjh zzjhVar3 = zzjh.DENIED;
            if (zzjhVar == zzjhVar3 && zzjhVar2 != zzjhVar3) {
                return true;
            }
        }
        return false;
    }

    public final zzjh zzc() {
        zzjh zzjhVar = this.zzb.get(zza.AD_STORAGE);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final boolean zzc(zzje zzjeVar) {
        return zzb(zzjeVar, (zza[]) this.zzb.keySet().toArray(new zza[0]));
    }

    public final zzjh zzd() {
        zzjh zzjhVar = this.zzb.get(zza.ANALYTICS_STORAGE);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    public final String zze() {
        int iOrdinal;
        StringBuilder sb2 = new StringBuilder("G1");
        for (zza zzaVar : zzjg.STORAGE.zza()) {
            zzjh zzjhVar = this.zzb.get(zzaVar);
            char c11 = '-';
            if (zzjhVar != null && (iOrdinal = zzjhVar.ordinal()) != 0) {
                if (iOrdinal == 1) {
                    c11 = '1';
                } else if (iOrdinal == 2) {
                    c11 = '0';
                } else if (iOrdinal == 3) {
                    c11 = '1';
                }
            }
            sb2.append(c11);
        }
        return sb2.toString();
    }

    public final String zzf() {
        StringBuilder sb2 = new StringBuilder("G1");
        for (zza zzaVar : zzjg.STORAGE.zza()) {
            sb2.append(zza(this.zzb.get(zzaVar)));
        }
        return sb2.toString();
    }

    public final boolean zzg() {
        return zza(zza.AD_STORAGE);
    }

    public final boolean zzh() {
        return zza(zza.ANALYTICS_STORAGE);
    }

    public final boolean zzi() {
        Iterator<zzjh> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            if (it.next() != zzjh.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }
}
