package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
class zzlv<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private Object[] zza;
    private int zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzmb zze;
    private Map<K, V> zzf;

    private zzlv() {
        this.zzc = Collections.emptyMap();
        this.zzf = Collections.emptyMap();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0022  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x003b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    private final int zza(K k11) {
        int i11;
        int i12;
        int i13;
        int iCompareTo;
        int i14 = this.zzb;
        int i15 = i14 - 1;
        if (i15 < 0) {
            i11 = 0;
            while (i11 <= i15) {
                i13 = (i11 + i15) / 2;
                iCompareTo = k11.compareTo((Comparable) ((zzlz) this.zza[i13]).getKey());
                if (iCompareTo < 0) {
                    i15 = i13 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i13;
                    }
                    i11 = i13 + 1;
                }
            }
            i12 = i11 + 1;
        } else {
            int iCompareTo2 = k11.compareTo((Comparable) ((zzlz) this.zza[i15]).getKey());
            if (iCompareTo2 > 0) {
                i12 = i14 + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i15;
                }
                i11 = 0;
                while (i11 <= i15) {
                    i13 = (i11 + i15) / 2;
                    iCompareTo = k11.compareTo((Comparable) ((zzlz) this.zza[i13]).getKey());
                    if (iCompareTo < 0) {
                        i15 = i13 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i13;
                        }
                        i11 = i13 + 1;
                    }
                }
                i12 = i11 + 1;
            }
        }
        return -i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzb(int i11) {
        zzg();
        V v11 = (V) ((zzlz) this.zza[i11]).getValue();
        Object[] objArr = this.zza;
        System.arraycopy(objArr, i11 + 1, objArr, i11, (this.zzb - i11) - 1);
        this.zzb--;
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzf().entrySet().iterator();
            this.zza[this.zzb] = new zzlz(this, it.next());
            this.zzb++;
            it.remove();
        }
        return v11;
    }

    private final SortedMap<K, V> zzf() {
        zzg();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzg();
        if (this.zzb != 0) {
            this.zza = null;
            this.zzb = 0;
        }
        if (this.zzc.isEmpty()) {
            return;
        }
        this.zzc.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzmb(this);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlv)) {
            return super.equals(obj);
        }
        zzlv zzlvVar = (zzlv) obj;
        int size = size();
        if (size != zzlvVar.size()) {
            return false;
        }
        int i11 = this.zzb;
        if (i11 != zzlvVar.zzb) {
            return entrySet().equals(zzlvVar.entrySet());
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!zza(i12).equals(zzlvVar.zza(i12))) {
                return false;
            }
        }
        if (i11 != size) {
            return this.zzc.equals(zzlvVar.zzc);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        return iZza >= 0 ? (V) ((zzlz) this.zza[iZza]).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int i11 = this.zzb;
        int iHashCode = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            iHashCode += this.zza[i12].hashCode();
        }
        return this.zzc.size() > 0 ? iHashCode + this.zzc.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzg();
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return zzb(iZza);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzb + this.zzc.size();
    }

    public final int zza() {
        return this.zzb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final V put(K k11, V v11) {
        zzg();
        int iZza = zza(k11);
        if (iZza >= 0) {
            return (V) ((zzlz) this.zza[iZza]).setValue(v11);
        }
        zzg();
        if (this.zza == null) {
            this.zza = new Object[16];
        }
        int i11 = -(iZza + 1);
        if (i11 >= 16) {
            return zzf().put(k11, v11);
        }
        int i12 = this.zzb;
        if (i12 == 16) {
            zzlz zzlzVar = (zzlz) this.zza[15];
            this.zzb = i12 - 1;
            zzf().put((Comparable) zzlzVar.getKey(), zzlzVar.getValue());
        }
        Object[] objArr = this.zza;
        System.arraycopy(objArr, i11, objArr, i11 + 1, (objArr.length - i11) - 1);
        this.zza[i11] = new zzlz(this, k11, v11);
        this.zzb++;
        return null;
    }

    public final Map.Entry<K, V> zza(int i11) {
        if (i11 < this.zzb) {
            return (zzlz) this.zza[i11];
        }
        throw new ArrayIndexOutOfBoundsException(i11);
    }

    public final Iterable<Map.Entry<K, V>> zzb() {
        return this.zzc.isEmpty() ? Collections.emptySet() : this.zzc.entrySet();
    }

    final Set<Map.Entry<K, V>> zzc() {
        return new zzma(this);
    }

    public void zzd() {
        if (this.zzd) {
            return;
        }
        this.zzc = this.zzc.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzc);
        this.zzf = this.zzf.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzf);
        this.zzd = true;
    }

    public final boolean zze() {
        return this.zzd;
    }
}
