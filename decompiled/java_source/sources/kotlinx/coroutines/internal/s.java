package kotlinx.coroutines.internal;

import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class s {
    public static final void a(Function1 function1, Object obj, CoroutineContext coroutineContext) {
        UndeliveredElementException undeliveredElementExceptionB = b(function1, obj, null);
        if (undeliveredElementExceptionB != null) {
            kotlinx.coroutines.k0.a(coroutineContext, undeliveredElementExceptionB);
        }
    }

    public static final UndeliveredElementException b(Function1 function1, Object obj, UndeliveredElementException undeliveredElementException) {
        try {
            function1.invoke(obj);
        } catch (Throwable th2) {
            if (undeliveredElementException == null || undeliveredElementException.getCause() == th2) {
                return new UndeliveredElementException("Exception in undelivered element handler for " + obj, th2);
            }
            ExceptionsKt.a(undeliveredElementException, th2);
        }
        return undeliveredElementException;
    }

    public static /* synthetic */ UndeliveredElementException c(Function1 function1, Object obj, UndeliveredElementException undeliveredElementException, int i11, Object obj2) {
        if ((i11 & 2) != 0) {
            undeliveredElementException = null;
        }
        return b(function1, obj, undeliveredElementException);
    }
}
