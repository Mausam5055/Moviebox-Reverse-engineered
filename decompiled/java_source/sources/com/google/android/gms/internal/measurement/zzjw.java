package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzjw extends zzie<Integer> implements zzka, zzlo, RandomAccess {
    private static final int[] zza;
    private static final zzjw zzb;
    private int[] zzc;
    private int zzd;

    static {
        int[] iArr = new int[0];
        zza = iArr;
        zzb = new zzjw(iArr, 0, false);
    }

    zzjw() {
        this(zza, 0, true);
    }

    private zzjw(int[] iArr, int i11, boolean z10) {
        super(z10);
        this.zzc = iArr;
        this.zzd = i11;
    }

    public static zzjw zzd() {
        return zzb;
    }

    private static int zzf(int i11) {
        return Math.max(((i11 * 3) / 2) + 1, 10);
    }

    private final String zzg(int i11) {
        return "Index:" + i11 + ", Size:" + this.zzd;
    }

    private final void zzh(int i11) {
        if (i11 < 0 || i11 >= this.zzd) {
            throw new IndexOutOfBoundsException(zzg(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i11, Object obj) {
        int i12;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzd)) {
            throw new IndexOutOfBoundsException(zzg(i11));
        }
        int[] iArr = this.zzc;
        if (i12 < iArr.length) {
            System.arraycopy(iArr, i11, iArr, i11 + 1, i12 - i11);
        } else {
            int[] iArr2 = new int[zzf(iArr.length)];
            System.arraycopy(this.zzc, 0, iArr2, 0, i11);
            System.arraycopy(this.zzc, i11, iArr2, i11 + 1, this.zzd - i11);
            this.zzc = iArr2;
        }
        this.zzc[i11] = iIntValue;
        this.zzd++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzd(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zza();
        zzjv.zza(collection);
        if (!(collection instanceof zzjw)) {
            return super.addAll(collection);
        }
        zzjw zzjwVar = (zzjw) collection;
        int i11 = zzjwVar.zzd;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.zzd;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        int[] iArr = this.zzc;
        if (i13 > iArr.length) {
            this.zzc = Arrays.copyOf(iArr, i13);
        }
        System.arraycopy(zzjwVar.zzc, 0, this.zzc, this.zzd, zzjwVar.zzd);
        this.zzd = i13;
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
        if (!(obj instanceof zzjw)) {
            return super.equals(obj);
        }
        zzjw zzjwVar = (zzjw) obj;
        if (this.zzd != zzjwVar.zzd) {
            return false;
        }
        int[] iArr = zzjwVar.zzc;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            if (this.zzc[i11] != iArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        return Integer.valueOf(zzb(i11));
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i11 = 1;
        for (int i12 = 0; i12 < this.zzd; i12++) {
            i11 = (i11 * 31) + this.zzc[i12];
        }
        return i11;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.zzc[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i11) {
        zza();
        zzh(i11);
        int[] iArr = this.zzc;
        int i12 = iArr[i11];
        int i13 = this.zzd;
        if (i11 < i13 - 1) {
            System.arraycopy(iArr, i11 + 1, iArr, i11, (i13 - i11) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        zza();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzc;
        System.arraycopy(iArr, i12, iArr, i11, this.zzd - i12);
        this.zzd -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i11, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        zzh(i11);
        int[] iArr = this.zzc;
        int i12 = iArr[i11];
        iArr[i11] = iIntValue;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    public final int zzb(int i11) {
        zzh(i11);
        return this.zzc[i11];
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzka zza(int i11) {
        if (i11 >= this.zzd) {
            return new zzjw(i11 == 0 ? zza : Arrays.copyOf(this.zzc, i11), this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zzd(int i11) {
        zza();
        int i12 = this.zzd;
        int[] iArr = this.zzc;
        if (i12 == iArr.length) {
            int[] iArr2 = new int[zzf(iArr.length)];
            System.arraycopy(this.zzc, 0, iArr2, 0, this.zzd);
            this.zzc = iArr2;
        }
        int[] iArr3 = this.zzc;
        int i13 = this.zzd;
        this.zzd = i13 + 1;
        iArr3[i13] = i11;
    }

    final void zze(int i11) {
        int[] iArr = this.zzc;
        if (i11 <= iArr.length) {
            return;
        }
        if (iArr.length == 0) {
            this.zzc = new int[Math.max(i11, 10)];
            return;
        }
        int length = iArr.length;
        while (length < i11) {
            length = zzf(length);
        }
        this.zzc = Arrays.copyOf(this.zzc, length);
    }
}
