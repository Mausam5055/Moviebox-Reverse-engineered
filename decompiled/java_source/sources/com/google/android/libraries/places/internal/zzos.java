package com.google.android.libraries.places.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzos extends zzob {
    static final zzos zza;
    private static final Object[] zzd;
    final transient Object[] zzb;
    final transient Object[] zzc;
    private final transient int zze;
    private final transient int zzf;
    private final transient int zzg;

    static {
        Object[] objArr = new Object[0];
        zzd = objArr;
        zza = new zzos(objArr, 0, objArr, 0, 0);
    }

    zzos(Object[] objArr, int i11, Object[] objArr2, int i12, int i13) {
        this.zzb = objArr;
        this.zze = i11;
        this.zzc = objArr2;
        this.zzf = i12;
        this.zzg = i13;
    }

    @Override // com.google.android.libraries.places.internal.zznt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iZza = zznq.zza(obj.hashCode());
                while (true) {
                    int i11 = iZza & this.zzf;
                    Object obj2 = objArr[i11];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iZza = i11 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.libraries.places.internal.zzob, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // com.google.android.libraries.places.internal.zzob, com.google.android.libraries.places.internal.zznt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzg;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zza(Object[] objArr, int i11) {
        System.arraycopy(this.zzb, 0, objArr, i11, this.zzg);
        return i11 + this.zzg;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzb() {
        return this.zzg;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.libraries.places.internal.zzob, com.google.android.libraries.places.internal.zznt
    /* JADX INFO: renamed from: zze */
    public final zzox iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final boolean zzf() {
        return false;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final Object[] zzg() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzob
    final zznx zzi() {
        return zznx.zzi(this.zzb, this.zzg);
    }

    @Override // com.google.android.libraries.places.internal.zzob
    final boolean zzq() {
        return true;
    }
}
