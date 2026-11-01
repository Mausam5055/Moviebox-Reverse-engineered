package com.google.android.gms.internal.fido;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzau extends zzaq implements Set {
    private transient zzat zza;

    zzau() {
    }

    static int zzf(int i11) {
        int iMax = Math.max(i11, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzau zzi(Object obj, Object obj2) {
        return zzk(2, obj, obj2);
    }

    private static zzau zzk(int i11, Object... objArr) {
        if (i11 == 0) {
            return zzax.zza;
        }
        if (i11 == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new zzay(obj);
        }
        int iZzf = zzf(i11);
        Object[] objArr2 = new Object[iZzf];
        int i12 = iZzf - 1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            Object obj2 = objArr[i15];
            if (obj2 == null) {
                throw new NullPointerException("at index " + i15);
            }
            int iHashCode = obj2.hashCode();
            int iZza = zzap.zza(iHashCode);
            while (true) {
                int i16 = iZza & i12;
                Object obj3 = objArr2[i16];
                if (obj3 == null) {
                    objArr[i14] = obj2;
                    objArr2[i16] = obj2;
                    i13 += iHashCode;
                    i14++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iZza++;
            }
        }
        Arrays.fill(objArr, i14, i11, (Object) null);
        if (i14 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new zzay(obj4);
        }
        if (zzf(i14) < iZzf / 2) {
            return zzk(i14, objArr);
        }
        if (i14 <= 0) {
            objArr = Arrays.copyOf(objArr, i14);
        }
        return new zzax(objArr, i13, objArr2, i12, i14);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzau) && zzj() && ((zzau) obj).zzj() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.fido.zzaq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzd */
    public abstract zzaz iterator();

    public final zzat zzg() {
        zzat zzatVar = this.zza;
        if (zzatVar != null) {
            return zzatVar;
        }
        zzat zzatVarZzh = zzh();
        this.zza = zzatVarZzh;
        return zzatVarZzh;
    }

    zzat zzh() {
        Object[] array = toArray();
        int i11 = zzat.zzd;
        return zzat.zzg(array, array.length);
    }

    boolean zzj() {
        return false;
    }
}
