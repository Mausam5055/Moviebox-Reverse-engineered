package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.o2;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface c extends o0.e {
    Object N(long j11, Function2 function2, Continuation continuation);

    long X();

    Object e0(long j11, Function2 function2, Continuation continuation);

    o2 getViewConfiguration();

    long k();

    Object m0(PointerEventPass pointerEventPass, Continuation continuation);

    o n0();
}
