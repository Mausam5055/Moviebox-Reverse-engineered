package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzkn extends zzie<Long> implements zzjz, zzlo, RandomAccess {
    private static final long[] zza;
    private static final zzkn zzb;
    private long[] zzc;
    private int zzd;

    static {
        long[] jArr = new long[0];
        zza = jArr;
        zzb = new zzkn(jArr, 0, false);
    }

    zzkn() {
        this(zza, 0, true);
    }

    private zzkn(long[] jArr, int i11, boolean z10) {
        super(z10);
        this.zzc = jArr;
        this.zzd = i11;
    }

    public static zzkn zzd() {
        return zzb;
    }

    private static int zze(int i11) {
        return Math.max(((i11 * 3) / 2) + 1, 10);
    }

    private final String zzf(int i11) {
        return "Index:" + i11 + ", Size:" + this.zzd;
    }

    private final void zzg(int i11) {
        if (i11 < 0 || i11 >= this.zzd) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i11, Object obj) {
        int i12;
        long jLongValue = ((Long) obj).longValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzd)) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
        long[] jArr = this.zzc;
        if (i12 < jArr.length) {
            System.arraycopy(jArr, i11, jArr, i11 + 1, i12 - i11);
        } else {
            long[] jArr2 = new long[zze(jArr.length)];
            System.arraycopy(this.zzc, 0, jArr2, 0, i11);
            System.arraycopy(this.zzc, i11, jArr2, i11 + 1, this.zzd - i11);
            this.zzc = jArr2;
        }
        this.zzc[i11] = jLongValue;
        this.zzd++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zza();
        zzjv.zza(collection);
        if (!(collection instanceof zzkn)) {
            return super.addAll(collection);
        }
        zzkn zzknVar = (zzkn) collection;
        int i11 = zzknVar.zzd;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.zzd;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        long[] jArr = this.zzc;
        if (i13 > jArr.length) {
            this.zzc = Arrays.copyOf(jArr, i13);
        }
        System.arraycopy(zzknVar.zzc, 0, this.zzc, this.zzd, zzknVar.zzd);
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
        if (!(obj instanceof zzkn)) {
            return super.equals(obj);
        }
        zzkn zzknVar = (zzkn) obj;
        if (this.zzd != zzknVar.zzd) {
            return false;
        }
        long[] jArr = zzknVar.zzc;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            if (this.zzc[i11] != jArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        return Long.valueOf(zzb(i11));
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            iZza = (iZza * 31) + zzjv.zza(this.zzc[i11]);
        }
        return iZza;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.zzc[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i11) {
        zza();
        zzg(i11);
        long[] jArr = this.zzc;
        long j11 = jArr[i11];
        int i12 = this.zzd;
        if (i11 < i12 - 1) {
            System.arraycopy(jArr, i11 + 1, jArr, i11, (i12 - i11) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        zza();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzc;
        System.arraycopy(jArr, i12, jArr, i11, this.zzd - i12);
        this.zzd -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i11, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        zzg(i11);
        long[] jArr = this.zzc;
        long j11 = jArr[i11];
        jArr[i11] = jLongValue;
        return Long.valueOf(j11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    public final void zza(long j11) {
        zza();
        int i11 = this.zzd;
        long[] jArr = this.zzc;
        if (i11 == jArr.length) {
            long[] jArr2 = new long[zze(jArr.length)];
            System.arraycopy(this.zzc, 0, jArr2, 0, this.zzd);
            this.zzc = jArr2;
        }
        long[] jArr3 = this.zzc;
        int i12 = this.zzd;
        this.zzd = i12 + 1;
        jArr3[i12] = j11;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final long zzb(int i11) {
        zzg(i11);
        return this.zzc[i11];
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzjz zza(int i11) {
        if (i11 >= this.zzd) {
            return new zzkn(i11 == 0 ? zza : Arrays.copyOf(this.zzc, i11), this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    final void zzd(int i11) {
        long[] jArr = this.zzc;
        if (i11 <= jArr.length) {
            return;
        }
        if (jArr.length == 0) {
            this.zzc = new long[Math.max(i11, 10)];
            return;
        }
        int length = jArr.length;
        while (length < i11) {
            length = zze(length);
        }
        this.zzc = Arrays.copyOf(this.zzc, length);
    }
}
