package com.google.android.gms.measurement.internal;

import java.util.EnumMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzah {
    private final EnumMap<zzje.zza, zzak> zza;

    zzah() {
        this.zza = new EnumMap<>(zzje.zza.class);
    }

    private zzah(EnumMap<zzje.zza, zzak> enumMap) {
        EnumMap<zzje.zza, zzak> enumMap2 = new EnumMap<>(zzje.zza.class);
        this.zza = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public static zzah zza(String str) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        if (str.length() >= zzje.zza.values().length) {
            int i11 = 0;
            if (str.charAt(0) == '1') {
                zzje.zza[] zzaVarArrValues = zzje.zza.values();
                int length = zzaVarArrValues.length;
                int i12 = 1;
                while (i11 < length) {
                    enumMap.put(zzaVarArrValues[i11], zzak.zza(str.charAt(i12)));
                    i11++;
                    i12++;
                }
                return new zzah(enumMap);
            }
        }
        return new zzah();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("1");
        for (zzje.zza zzaVar : zzje.zza.values()) {
            zzak zzakVar = this.zza.get(zzaVar);
            if (zzakVar == null) {
                zzakVar = zzak.UNSET;
            }
            sb2.append(zzakVar.zzl);
        }
        return sb2.toString();
    }

    public final zzak zza(zzje.zza zzaVar) {
        zzak zzakVar = this.zza.get(zzaVar);
        return zzakVar == null ? zzak.UNSET : zzakVar;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final void zza(zzje.zza zzaVar, int i11) {
        zzak zzakVar = zzak.UNSET;
        if (i11 == -30) {
            zzakVar = zzak.TCF;
        } else if (i11 == -20) {
            zzakVar = zzak.API;
        } else if (i11 == -10) {
            zzakVar = zzak.MANIFEST;
        } else if (i11 == 0) {
            zzakVar = zzak.API;
        } else if (i11 == 30) {
            zzakVar = zzak.INITIALIZATION;
        }
        this.zza.put(zzaVar, zzakVar);
    }

    public final void zza(zzje.zza zzaVar, zzak zzakVar) {
        this.zza.put(zzaVar, zzakVar);
    }
}
