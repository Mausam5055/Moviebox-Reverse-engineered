package androidx.datastore.core;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface k {
    Object a(Continuation continuation);

    Object b(Function1 function1, Continuation continuation);

    kotlinx.coroutines.flow.b c();

    Object d(Function2 function2, Continuation continuation);

    Object e(Continuation continuation);
}
