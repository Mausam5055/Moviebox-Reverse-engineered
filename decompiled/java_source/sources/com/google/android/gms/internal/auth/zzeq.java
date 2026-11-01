package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
final class zzeq extends zzdq implements RandomAccess, zzey, zzgd {
    private static final zzeq zza;
    private float[] zzb;
    private int zzc;

    static {
        zzeq zzeqVar = new zzeq(new float[0], 0);
        zza = zzeqVar;
        zzeqVar.zzb();
    }

    zzeq() {
        this(new float[10], 0);
    }

    private zzeq(float[] fArr, int i11) {
        this.zzb = fArr;
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
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i11));
        }
        float[] fArr = this.zzb;
        if (i12 < fArr.length) {
            System.arraycopy(fArr, i11, fArr, i11 + 1, i12 - i11);
        } else {
            float[] fArr2 = new float[((i12 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i11);
            System.arraycopy(this.zzb, i11, fArr2, i11 + 1, this.zzc - i11);
            this.zzb = fArr2;
        }
        this.zzb[i11] = fFloatValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zze(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        zzez.zze(collection);
        if (!(collection instanceof zzeq)) {
            return super.addAll(collection);
        }
        zzeq zzeqVar = (zzeq) collection;
        int i11 = zzeqVar.zzc;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.zzc;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        float[] fArr = this.zzb;
        if (i13 > fArr.length) {
            this.zzb = Arrays.copyOf(fArr, i13);
        }
        System.arraycopy(zzeqVar.zzb, 0, this.zzb, this.zzc, zzeqVar.zzc);
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
        if (!(obj instanceof zzeq)) {
            return super.equals(obj);
        }
        zzeq zzeqVar = (zzeq) obj;
        if (this.zzc != zzeqVar.zzc) {
            return false;
        }
        float[] fArr = zzeqVar.zzb;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            if (Float.floatToIntBits(this.zzb[i11]) != Float.floatToIntBits(fArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        zzg(i11);
        return Float.valueOf(this.zzb[i11]);
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zzb[i11]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i11 = this.zzc;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.zzb[i12] == fFloatValue) {
                return i12;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i11) {
        zza();
        zzg(i11);
        float[] fArr = this.zzb;
        float f11 = fArr[i11];
        int i12 = this.zzc;
        if (i11 < i12 - 1) {
            System.arraycopy(fArr, i11 + 1, fArr, i11, (i12 - i11) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        zza();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.zzb;
        System.arraycopy(fArr, i12, fArr, i11, this.zzc - i12);
        this.zzc -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdq, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        zzg(i11);
        float[] fArr = this.zzb;
        float f11 = fArr[i11];
        fArr[i11] = fFloatValue;
        return Float.valueOf(f11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.auth.zzey
    public final /* bridge */ /* synthetic */ zzey zzd(int i11) {
        if (i11 >= this.zzc) {
            return new zzeq(Arrays.copyOf(this.zzb, i11), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    public final void zze(float f11) {
        zza();
        int i11 = this.zzc;
        float[] fArr = this.zzb;
        if (i11 == fArr.length) {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i11);
            this.zzb = fArr2;
        }
        float[] fArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        fArr3[i12] = f11;
    }
}
