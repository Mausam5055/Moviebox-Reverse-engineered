package androidx.datastore.preferences.protobuf;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
abstract class t extends c implements w.d, RandomAccess, w0 {
    public abstract void addFloat(float f11);

    public abstract float getFloat(int i11);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public abstract int size();
}
