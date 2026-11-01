package androidx.compose.ui.input.pointer;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final o f5014a = new o(CollectionsKt.l());

    public static final n0 a(Function2 function2) {
        return new SuspendingPointerInputModifierNodeImpl(null, null, null, function2);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar, Object obj, Function2 function2) {
        return fVar.e(new SuspendPointerInputElement(obj, null, null, function2, 6, null));
    }

    public static final androidx.compose.ui.f d(androidx.compose.ui.f fVar, Object[] objArr, Function2 function2) {
        return fVar.e(new SuspendPointerInputElement(null, null, objArr, function2, 3, null));
    }
}
