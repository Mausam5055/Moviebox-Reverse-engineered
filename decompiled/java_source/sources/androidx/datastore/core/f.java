package androidx.datastore.core;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface f {
    Object a(Function2 function2, Continuation continuation);

    kotlinx.coroutines.flow.b getData();
}
