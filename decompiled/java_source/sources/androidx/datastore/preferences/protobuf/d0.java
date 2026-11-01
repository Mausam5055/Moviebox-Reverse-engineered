package androidx.datastore.preferences.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class d0 implements c0 {
    d0() {
    }

    static w.d d(Object obj, long j11) {
        return (w.d) k1.G(obj, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.c0
    public void a(Object obj, long j11) {
        d(obj, j11).makeImmutable();
    }

    @Override // androidx.datastore.preferences.protobuf.c0
    public void b(Object obj, Object obj2, long j11) {
        w.d dVarD = d(obj, j11);
        w.d dVarD2 = d(obj2, j11);
        int size = dVarD.size();
        int size2 = dVarD2.size();
        if (size > 0 && size2 > 0) {
            if (!dVarD.isModifiable()) {
                dVarD = dVarD.mutableCopyWithCapacity(size2 + size);
            }
            dVarD.addAll(dVarD2);
        }
        if (size > 0) {
            dVarD2 = dVarD;
        }
        k1.W(obj, j11, dVarD2);
    }

    @Override // androidx.datastore.preferences.protobuf.c0
    public List c(Object obj, long j11) {
        w.d dVarD = d(obj, j11);
        if (dVarD.isModifiable()) {
            return dVarD;
        }
        int size = dVarD.size();
        w.d dVarMutableCopyWithCapacity = dVarD.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
        k1.W(obj, j11, dVarMutableCopyWithCapacity);
        return dVarMutableCopyWithCapacity;
    }
}
