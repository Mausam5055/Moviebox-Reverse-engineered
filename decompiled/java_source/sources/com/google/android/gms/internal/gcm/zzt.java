package com.google.android.gms.internal.gcm;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzt extends WeakReference<Throwable> {
    private final int zzdv;

    public zzt(Throwable th2, ReferenceQueue<Throwable> referenceQueue) {
        super(th2, referenceQueue);
        if (th2 == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.zzdv = System.identityHashCode(th2);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzt.class) {
            if (this == obj) {
                return true;
            }
            zzt zztVar = (zzt) obj;
            if (this.zzdv == zztVar.zzdv && get() == zztVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzdv;
    }
}
