package androidx.compose.ui.input.pointer;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ Object a(c cVar, PointerEventPass pointerEventPass, Continuation continuation, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitPointerEvent");
        }
        if ((i11 & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return cVar.m0(pointerEventPass, continuation);
    }
}
