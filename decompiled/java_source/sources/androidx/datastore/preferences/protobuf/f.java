package androidx.datastore.preferences.protobuf;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
abstract class f extends c implements w.d, RandomAccess, w0 {
    public abstract void addBoolean(boolean z10);

    public abstract boolean getBoolean(int i11);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public abstract int size();
}
