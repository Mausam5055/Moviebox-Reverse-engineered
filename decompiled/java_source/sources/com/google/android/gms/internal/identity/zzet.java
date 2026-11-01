package com.google.android.gms.internal.identity;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzet extends zzfa {
    private final int zza;
    private int zzb;

    protected zzet(int i11, int i12) {
        zzer.zzd(i12, i11, "index");
        this.zza = i11;
        this.zzb = i12;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.zzb < this.zza;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzb > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i11 = this.zzb;
        this.zzb = i11 + 1;
        return zza(i11);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzb;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i11 = this.zzb - 1;
        this.zzb = i11;
        return zza(i11);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzb - 1;
    }

    protected abstract Object zza(int i11);
}
