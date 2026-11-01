package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzjs extends zzie<Float> implements zzkc<Float>, zzlo, RandomAccess {
    private static final float[] zza;
    private float[] zzb;
    private int zzc;

    static {
        float[] fArr = new float[0];
        zza = fArr;
        new zzjs(fArr, 0, false);
    }

    zzjs() {
        this(zza, 0, true);
    }

    private zzjs(float[] fArr, int i11, boolean z10) {
        super(z10);
        this.zzb = fArr;
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
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        if (i11 < 0 || i11 > (i12 = this.zzc)) {
            throw new IndexOutOfBoundsException(zze(i11));
        }
        float[] fArr = this.zzb;
        if (i12 < fArr.length) {
            System.arraycopy(fArr, i11, fArr, i11 + 1, i12 - i11);
        } else {
            float[] fArr2 = new float[zzd(fArr.length)];
            System.arraycopy(this.zzb, 0, fArr2, 0, i11);
            System.arraycopy(this.zzb, i11, fArr2, i11 + 1, this.zzc - i11);
            this.zzb = fArr2;
        }
        this.zzb[i11] = fFloatValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zza();
        zzjv.zza(collection);
        if (!(collection instanceof zzjs)) {
            return super.addAll(collection);
        }
        zzjs zzjsVar = (zzjs) collection;
        int i11 = zzjsVar.zzc;
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
        System.arraycopy(zzjsVar.zzb, 0, this.zzb, this.zzc, zzjsVar.zzc);
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
        if (!(obj instanceof zzjs)) {
            return super.equals(obj);
        }
        zzjs zzjsVar = (zzjs) obj;
        if (this.zzc != zzjsVar.zzc) {
            return false;
        }
        float[] fArr = zzjsVar.zzb;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            if (Float.floatToIntBits(this.zzb[i11]) != Float.floatToIntBits(fArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i11) {
        return Float.valueOf(zzb(i11));
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.Collection, java.util.List
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
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.zzb[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i11) {
        zza();
        zzf(i11);
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

    @Override // com.google.android.gms.internal.measurement.zzie, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i11, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        zzf(i11);
        float[] fArr = this.zzb;
        float f11 = fArr[i11];
        fArr[i11] = fFloatValue;
        return Float.valueOf(f11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    public final /* synthetic */ zzkc<Float> zza(int i11) {
        if (i11 >= this.zzc) {
            return new zzjs(i11 == 0 ? zza : Arrays.copyOf(this.zzb, i11), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zza(float f11) {
        zza();
        int i11 = this.zzc;
        float[] fArr = this.zzb;
        if (i11 == fArr.length) {
            float[] fArr2 = new float[zzd(fArr.length)];
            System.arraycopy(this.zzb, 0, fArr2, 0, this.zzc);
            this.zzb = fArr2;
        }
        float[] fArr3 = this.zzb;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        fArr3[i12] = f11;
    }

    public final float zzb(int i11) {
        zzf(i11);
        return this.zzb[i11];
    }

    final void zzc(int i11) {
        float[] fArr = this.zzb;
        if (i11 <= fArr.length) {
            return;
        }
        if (fArr.length == 0) {
            this.zzb = new float[Math.max(i11, 10)];
            return;
        }
        int length = fArr.length;
        while (length < i11) {
            length = zzd(length);
        }
        this.zzb = Arrays.copyOf(this.zzb, length);
    }
}
