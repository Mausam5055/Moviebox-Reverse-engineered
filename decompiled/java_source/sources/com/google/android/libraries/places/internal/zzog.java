package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzog extends AbstractSequentialList implements Serializable {
    final List zza;
    final zzmd zzb;

    zzog(List list, zzmd zzmdVar) {
        list.getClass();
        this.zza = list;
        this.zzb = zzmdVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i11) {
        return new zzof(this, this.zza.listIterator(i11));
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i11, int i12) {
        this.zza.subList(i11, i12).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
