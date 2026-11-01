package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
final class zzej extends zzdq implements RandomAccess, zzey, zzgd {
    private static final zzej zza;
    private double[] zzb;
    private int zzc;

    static {
        zzej zzejVar = new zzej(new double[0], 0);
        zza = zzejVar;
        zzejVar.zzb();
    }

    zzej() {
        this(new double[10], 0);
    }

    private zzej(double[] dArr, int i11) {
        this.zzb = dArr;
        this.zzc = i11;
    }

    private final String zzf(int i11) {
        return "Index:" + i11 + ", Size:" + this.zzc;
    }

    private final void zzg(int i11) {
        if (i11 < 0 || i11 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i11, Object obj) {
        int i12;
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
        double[] dArr = this.zzb;
        if (i12 < dArr.length) {
            System.arraycopy(dArr, i11, dArr, i11 + 1, i12 - i11);
        } else {
            double[] dArr2 = new double[((i12 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i11);
            System.arraycopy(this.zzb, i11, dArr2, i11 + 1, this.zzc - i11);
            this.zzb = dArr2;
        }
        this.zzb[i11] = dDoubleValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zze(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        zzez.zze(collection);
        if (!(collection instanceof zzej)) {
            return super.addAll(collection);
        }
        zzej zzejVar = (zzej) collection;
        int i11 = zzejVar.zzc;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.zzc;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        double[] dArr = this.zzb;
        if (i13 > dArr.length) {
            this.zzb = Arrays.copyOf(dArr, i13);
        }
        System.arraycopy(zzejVar.zzb, 0, this.zzb, this.zzc, zzejVar.zzc);
        this.zzc = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzej)) {
            return super.equals(obj);
        }
        zzej zzejVar = (zzej) obj;
        if (this.zzc != zzejVar.zzc) {
            return false;
        }
        double[] dArr = zzejVar.zzb;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            if (Double.doubleToLongBits(this.zzb[i11]) != Double.doubleToLongBits(dArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        zzg(i11);
        return Double.valueOf(this.zzb[i11]);
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzc = 1;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            iZzc = (iZzc * 31) + zzez.zzc(Double.doubleToLongBits(this.zzb[i11]));
        }
        return iZzc;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i11 = this.zzc;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.zzb[i12] == dDoubleValue) {
                return i12;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i11) {
        zza();
        zzg(i11);
        double[] dArr = this.zzb;
        double d11 = dArr[i11];
        int i12 = this.zzc;
        if (i11 < i12 - 1) {
            System.arraycopy(dArr, i11 + 1, dArr, i11, (i12 - i11) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        zza();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.zzb;
        System.arraycopy(dArr, i12, dArr, i11, this.zzc - i12);
        this.zzc -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        zzg(i11);
        double[] dArr = this.zzb;
        double d11 = dArr[i11];
        dArr[i11] = dDoubleValue;
        return Double.valueOf(d11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.auth.zzey
    public final /* bridge */ /* synthetic */ zzey zzd(int i11) {
        if (i11 >= this.zzc) {
            return new zzej(Arrays.copyOf(this.zzb, i11), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    public final void zze(double d11) {
        zza();
        int i11 = this.zzc;
        double[] dArr = this.zzb;
        if (i11 == dArr.length) {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i11);
            this.zzb = dArr2;
        }
        double[] dArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        dArr3[i12] = d11;
    }
}
