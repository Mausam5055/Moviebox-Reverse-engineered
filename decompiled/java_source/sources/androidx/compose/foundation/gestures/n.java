package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class n {
    public static boolean a(o oVar) {
        return true;
    }

    public static boolean b(o oVar) {
        return true;
    }

    public static /* synthetic */ Object c(o oVar, MutatePriority mutatePriority, Function2 function2, Continuation continuation, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scroll");
        }
        if ((i11 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return oVar.c(mutatePriority, function2, continuation);
    }
}
