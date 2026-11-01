package com.google.android.libraries.places.internal;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzary extends zzarw implements RandomAccess, zzauc, zzavo {
    private static final zzary zza = new zzary(new boolean[0], 0, false);
    private boolean[] zzb;
    private int zzc;

    zzary() {
        this(new boolean[10], 0, true);
    }

    private zzary(boolean[] zArr, int i11, boolean z10) {
        super(z10);
        this.zzb = zArr;
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

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i11, Object obj) {
        int i12;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
        int i13 = i11 + 1;
        boolean[] zArr = this.zzb;
        if (i12 < zArr.length) {
            System.arraycopy(zArr, i11, zArr, i13, i12 - i11);
        } else {
            boolean[] zArr2 = new boolean[((i12 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i11);
            System.arraycopy(this.zzb, i11, zArr2, i13, this.zzc - i11);
            this.zzb = zArr2;
        }
        this.zzb[i11] = zBooleanValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zze(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaud.zzd;
        collection.getClass();
        if (!(collection instanceof zzary)) {
            return super.addAll(collection);
        }
        zzary zzaryVar = (zzary) collection;
        int i11 = zzaryVar.zzc;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.zzc;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        boolean[] zArr = this.zzb;
        if (i13 > zArr.length) {
            this.zzb = Arrays.copyOf(zArr, i13);
        }
        System.arraycopy(zzaryVar.zzb, 0, this.zzb, this.zzc, zzaryVar.zzc);
        this.zzc = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzary)) {
            return super.equals(obj);
        }
        zzary zzaryVar = (zzary) obj;
        if (this.zzc != zzaryVar.zzc) {
            return false;
        }
        boolean[] zArr = zzaryVar.zzb;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            if (this.zzb[i11] != zArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        zzg(i11);
        return Boolean.valueOf(this.zzb[i11]);
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            iZza = (iZza * 31) + zzaud.zza(this.zzb[i11]);
        }
        return iZza;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i11 = this.zzc;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.zzb[i12] == zBooleanValue) {
                return i12;
            }
        }
        return -1;
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i11) {
        zza();
        zzg(i11);
        boolean[] zArr = this.zzb;
        boolean z10 = zArr[i11];
        int i12 = this.zzc;
        if (i11 < i12 - 1) {
            System.arraycopy(zArr, i11 + 1, zArr, i11, (i12 - i11) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        zza();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.zzb;
        System.arraycopy(zArr, i12, zArr, i11, this.zzc - i12);
        this.zzc -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.libraries.places.internal.zzarw, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zza();
        zzg(i11);
        boolean[] zArr = this.zzb;
        boolean z10 = zArr[i11];
        zArr[i11] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zzauc
    public final /* bridge */ /* synthetic */ zzauc zzd(int i11) {
        if (i11 >= this.zzc) {
            return new zzary(Arrays.copyOf(this.zzb, i11), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zze(boolean z10) {
        zza();
        int i11 = this.zzc;
        boolean[] zArr = this.zzb;
        if (i11 == zArr.length) {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i11);
            this.zzb = zArr2;
        }
        boolean[] zArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        zArr3[i12] = z10;
    }
}
