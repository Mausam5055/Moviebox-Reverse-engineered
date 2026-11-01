package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CombineKt {
    public static final Object a(kotlinx.coroutines.flow.c cVar, kotlinx.coroutines.flow.b[] bVarArr, Function0 function0, Function3 function3, Continuation continuation) {
        Object objA = h.a(new CombineKt$combineInternal$2(bVarArr, function0, function3, cVar, null), continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }
}
