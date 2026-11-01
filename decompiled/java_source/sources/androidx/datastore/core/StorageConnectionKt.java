package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public abstract class StorageConnectionKt {
    public static final Object a(t tVar, Continuation continuation) {
        return tVar.d(new StorageConnectionKt$readData$2(null), continuation);
    }
}
