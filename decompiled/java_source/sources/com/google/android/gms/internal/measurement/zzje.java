package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzje extends zzie<Double> implements zzkc<Double>, zzlo, RandomAccess {
    private static final double[] zza;
    private double[] zzb;
    private int zzc;

    static {
        double[] dArr = new double[0];
        zza = dArr;
        new zzje(dArr, 0, false);
    }

    zzje() {
        this(zza, 0, true);
    }

    private zzje(double[] dArr, int i11, boolean z10) {
        super(z10);
        this.zzb = dArr;
        this.zzc = i11;
    }

    private static int zzd(int i11) {
        return Math.max(((i11 * 3) / 2) + 1, 10);
    }

    private final String zze(int i11) {
        return "Index:" + i11 + ", Size:" + this.zzc;
    }

    private final void zzf(int i11) {
        if (i11 < 0 || i11 >= this.zzc) {
            throw new IndexOutOfBoundsException(zze(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i11, Object obj) {
        int i12;
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzc)) {
            throw new IndexOutOfBoundsException(zze(i11));
        }
        double[] dArr = this.zzb;
        if (i12 < dArr.length) {
            System.arraycopy(dArr, i11, dArr, i11 + 1, i12 - i11);
        } else {
            double[] dArr2 = new double[zzd(dArr.length)];
            System.arraycopy(this.zzb, 0, dArr2, 0, i11);
            System.arraycopy(this.zzb, i11, dArr2, i11 + 1, this.zzc - i11);
            this.zzb = dArr2;
        }
        this.zzb[i11] = dDoubleValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zza();
        zzjv.zza(collection);
        if (!(collection instanceof zzje)) {
            return super.addAll(collection);
        }
        zzje zzjeVar = (zzje) collection;
        int i11 = zzjeVar.zzc;
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
        System.arraycopy(zzjeVar.zzb, 0, this.zzb, this.zzc, zzjeVar.zzc);
        this.zzc = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzje)) {
            return super.equals(obj);
        }
        zzje zzjeVar = (zzje) obj;
        if (this.zzc != zzjeVar.zzc) {
            return false;
        }
        double[] dArr = zzjeVar.zzb;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            if (Double.doubleToLongBits(this.zzb[i11]) != Double.doubleToLongBits(dArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        return Double.valueOf(zzb(i11));
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            iZza = (iZza * 31) + zzjv.zza(Double.doubleToLongBits(this.zzb[i11]));
        }
        return iZza;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.zzb[i11] == dDoubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i11) {
        zza();
        zzf(i11);
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

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i11, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        zzf(i11);
        double[] dArr = this.zzb;
        double d11 = dArr[i11];
        dArr[i11] = dDoubleValue;
        return Double.valueOf(d11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    public final /* synthetic */ zzkc<Double> zza(int i11) {
        if (i11 >= this.zzc) {
            return new zzje(i11 == 0 ? zza : Arrays.copyOf(this.zzb, i11), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zza(double d11) {
        zza();
        int i11 = this.zzc;
        double[] dArr = this.zzb;
        if (i11 == dArr.length) {
            double[] dArr2 = new double[zzd(dArr.length)];
            System.arraycopy(this.zzb, 0, dArr2, 0, this.zzc);
            this.zzb = dArr2;
        }
        double[] dArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        dArr3[i12] = d11;
    }

    public final double zzb(int i11) {
        zzf(i11);
        return this.zzb[i11];
    }

    final void zzc(int i11) {
        double[] dArr = this.zzb;
        if (i11 <= dArr.length) {
            return;
        }
        if (dArr.length == 0) {
            this.zzb = new double[Math.max(i11, 10)];
            return;
        }
        int length = dArr.length;
        while (length < i11) {
            length = zzd(length);
        }
        this.zzb = Arrays.copyOf(this.zzb, length);
    }
}
