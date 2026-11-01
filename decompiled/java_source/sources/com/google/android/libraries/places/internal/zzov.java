package com.google.android.libraries.places.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzov implements Iterator {
    final Iterator zzb;

    zzov(Iterator it) {
        it.getClass();
        this.zzb = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return zza(this.zzb.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzb.remove();
    }

    abstract Object zza(Object obj);
}
