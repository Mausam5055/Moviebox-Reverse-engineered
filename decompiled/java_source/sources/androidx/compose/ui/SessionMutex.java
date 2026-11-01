package androidx.compose.ui;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public abstract class SessionMutex {

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t1 f4085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f4086b;

        public a(t1 t1Var, Object obj) {
            this.f4085a = t1Var;
            this.f4086b = obj;
        }

        public final t1 a() {
            return this.f4085a;
        }

        public final Object b() {
            return this.f4086b;
        }
    }

    public static AtomicReference a() {
        return b(new AtomicReference(null));
    }

    private static AtomicReference b(AtomicReference atomicReference) {
        return atomicReference;
    }

    public static final Object c(AtomicReference atomicReference) {
        a aVar = (a) atomicReference.get();
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public static final Object d(AtomicReference atomicReference, Function1 function1, Function2 function2, Continuation continuation) {
        return o0.e(new SessionMutex$withSessionCancellingPrevious$2(function1, atomicReference, function2, null), continuation);
    }
}
