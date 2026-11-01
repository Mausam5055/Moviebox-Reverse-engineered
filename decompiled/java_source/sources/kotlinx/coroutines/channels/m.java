package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.internal.UndeliveredElementException;

/* JADX INFO: loaded from: classes7.dex */
public class m extends BufferedChannel {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f67696m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final BufferOverflow f67697n;

    public m(int i11, BufferOverflow bufferOverflow, Function1 function1) {
        super(i11, function1);
        this.f67696m = i11;
        this.f67697n = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.b(BufferedChannel.class).g() + " instead").toString());
        }
        if (i11 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i11 + " was specified").toString());
    }

    static /* synthetic */ Object n1(m mVar, Object obj, Continuation continuation) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionC;
        Object objP1 = mVar.p1(obj, true);
        if (!(objP1 instanceof h.a)) {
            return Unit.f67061a;
        }
        h.e(objP1);
        Function1 function1 = mVar.f67656b;
        if (function1 == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            throw mVar.i0();
        }
        ExceptionsKt.a(undeliveredElementExceptionC, mVar.i0());
        throw undeliveredElementExceptionC;
    }

    private final Object o1(Object obj, boolean z10) {
        Function1 function1;
        UndeliveredElementException undeliveredElementExceptionC;
        Object objC = super.c(obj);
        if (h.i(objC) || h.h(objC)) {
            return objC;
        }
        if (!z10 || (function1 = this.f67656b) == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            return h.f67690b.c(Unit.f67061a);
        }
        throw undeliveredElementExceptionC;
    }

    private final Object p1(Object obj, boolean z10) {
        return this.f67697n == BufferOverflow.DROP_LATEST ? o1(obj, z10) : d1(obj);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.r
    public Object c(Object obj) {
        return p1(obj, false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.r
    public Object p(Object obj, Continuation continuation) {
        return n1(this, obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected boolean w0() {
        return this.f67697n == BufferOverflow.DROP_OLDEST;
    }
}
