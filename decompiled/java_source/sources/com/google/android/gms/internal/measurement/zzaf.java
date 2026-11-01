package com.google.android.gms.internal.measurement;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.transsion.mpush.core.config.PushMsgSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaf implements zzak, zzaq, Iterable<zzaq> {
    private final SortedMap<Integer, zzaq> zza;
    private final Map<String, zzaq> zzb;

    public zzaf() {
        this.zza = new TreeMap();
        this.zzb = new TreeMap();
    }

    public zzaf(List<zzaq> list) {
        this();
        if (list != null) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                zzb(i11, list.get(i11));
            }
        }
    }

    public zzaf(zzaq... zzaqVarArr) {
        this((List<zzaq>) Arrays.asList(zzaqVarArr));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaf)) {
            return false;
        }
        zzaf zzafVar = (zzaf) obj;
        if (zzb() != zzafVar.zzb()) {
            return false;
        }
        if (this.zza.isEmpty()) {
            return zzafVar.zza.isEmpty();
        }
        for (int iIntValue = this.zza.firstKey().intValue(); iIntValue <= this.zza.lastKey().intValue(); iIntValue++) {
            if (!zza(iIntValue).equals(zzafVar.zza(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzaq> iterator() {
        return new zzah(this);
    }

    public final String toString() {
        return zzb(",");
    }

    public final int zza() {
        return this.zza.size();
    }

    public final zzaq zza(int i11) {
        zzaq zzaqVar;
        if (i11 < zzb()) {
            return (!zzc(i11) || (zzaqVar = this.zza.get(Integer.valueOf(i11))) == null) ? zzaq.zzc : zzaqVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzaq zza(String str) {
        zzaq zzaqVar;
        if ("length".equals(str)) {
            return new zzai(Double.valueOf(zzb()));
        }
        return (!zzc(str) || (zzaqVar = this.zzb.get(str)) == null) ? zzaq.zzc : zzaqVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || TmcStartParams.BACK_BEHAVIOR_POP.equals(str) || PushMsgSource.SOURCE_PUSH.equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? zzbe.zza(str, this, zzhVar, list) : zzan.zza(this, new zzas(str), zzhVar, list);
    }

    public final void zza(int i11, zzaq zzaqVar) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Invalid value index: " + i11);
        }
        if (i11 >= zzb()) {
            zzb(i11, zzaqVar);
            return;
        }
        for (int iIntValue = this.zza.lastKey().intValue(); iIntValue >= i11; iIntValue--) {
            zzaq zzaqVar2 = this.zza.get(Integer.valueOf(iIntValue));
            if (zzaqVar2 != null) {
                zzb(iIntValue + 1, zzaqVar2);
                this.zza.remove(Integer.valueOf(iIntValue));
            }
        }
        zzb(i11, zzaqVar);
    }

    public final void zza(zzaq zzaqVar) {
        zzb(zzb(), zzaqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void zza(String str, zzaq zzaqVar) {
        if (zzaqVar == null) {
            this.zzb.remove(str);
        } else {
            this.zzb.put(str, zzaqVar);
        }
    }

    public final int zzb() {
        if (this.zza.isEmpty()) {
            return 0;
        }
        return this.zza.lastKey().intValue() + 1;
    }

    public final String zzb(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (!this.zza.isEmpty()) {
            for (int i11 = 0; i11 < zzb(); i11++) {
                zzaq zzaqVarZza = zza(i11);
                sb2.append(str);
                if (!(zzaqVarZza instanceof zzax) && !(zzaqVarZza instanceof zzao)) {
                    sb2.append(zzaqVarZza.zzf());
                }
            }
            sb2.delete(0, str.length());
        }
        return sb2.toString();
    }

    public final void zzb(int i11) {
        int iIntValue = this.zza.lastKey().intValue();
        if (i11 > iIntValue || i11 < 0) {
            return;
        }
        this.zza.remove(Integer.valueOf(i11));
        if (i11 == iIntValue) {
            int i12 = i11 - 1;
            if (this.zza.containsKey(Integer.valueOf(i12)) || i12 < 0) {
                return;
            }
            this.zza.put(Integer.valueOf(i12), zzaq.zzc);
            return;
        }
        while (true) {
            i11++;
            if (i11 > this.zza.lastKey().intValue()) {
                return;
            }
            zzaq zzaqVar = this.zza.get(Integer.valueOf(i11));
            if (zzaqVar != null) {
                this.zza.put(Integer.valueOf(i11 - 1), zzaqVar);
                this.zza.remove(Integer.valueOf(i11));
            }
        }
    }

    public final void zzb(int i11, zzaq zzaqVar) {
        if (i11 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("Out of bounds index: " + i11);
        }
        if (zzaqVar == null) {
            this.zza.remove(Integer.valueOf(i11));
        } else {
            this.zza.put(Integer.valueOf(i11), zzaqVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zzc() {
        zzaf zzafVar = new zzaf();
        for (Map.Entry<Integer, zzaq> entry : this.zza.entrySet()) {
            if (entry.getValue() instanceof zzak) {
                zzafVar.zza.put(entry.getKey(), entry.getValue());
            } else {
                zzafVar.zza.put(entry.getKey(), entry.getValue().zzc());
            }
        }
        return zzafVar;
    }

    public final boolean zzc(int i11) {
        if (i11 >= 0 && i11 <= this.zza.lastKey().intValue()) {
            return this.zza.containsKey(Integer.valueOf(i11));
        }
        throw new IndexOutOfBoundsException("Out of bounds index: " + i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean zzc(String str) {
        return "length".equals(str) || this.zzb.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Boolean zzd() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Double zze() {
        if (this.zza.size() == 1) {
            return zza(0).zze();
        }
        return this.zza.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final String zzf() {
        return toString();
    }

    public final Iterator<Integer> zzg() {
        return this.zza.keySet().iterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Iterator<zzaq> zzh() {
        return new zzae(this, this.zza.keySet().iterator(), this.zzb.keySet().iterator());
    }

    public final List<zzaq> zzi() {
        ArrayList arrayList = new ArrayList(zzb());
        for (int i11 = 0; i11 < zzb(); i11++) {
            arrayList.add(zza(i11));
        }
        return arrayList;
    }

    public final void zzj() {
        this.zza.clear();
    }
}
