package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
final class c extends SequenceScope implements Iterator, Continuation, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f67474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f67475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Iterator f67476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Continuation f67477d;

    private final Throwable f() {
        int i11 = this.f67474a;
        if (i11 == 4) {
            return new NoSuchElementException();
        }
        if (i11 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f67474a);
    }

    private final Object h() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.SequenceScope
    public Object a(Object obj, Continuation continuation) {
        this.f67475b = obj;
        this.f67474a = 3;
        this.f67477d = continuation;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF == IntrinsicsKt.f() ? objF : Unit.f67061a;
    }

    @Override // kotlin.sequences.SequenceScope
    public Object c(Iterator it, Continuation continuation) {
        if (!it.hasNext()) {
            return Unit.f67061a;
        }
        this.f67476c = it;
        this.f67474a = 2;
        this.f67477d = continuation;
        Object objF = IntrinsicsKt.f();
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF == IntrinsicsKt.f() ? objF : Unit.f67061a;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i11 = this.f67474a;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2 || i11 == 3) {
                        return true;
                    }
                    if (i11 == 4) {
                        return false;
                    }
                    throw f();
                }
                Iterator it = this.f67476c;
                Intrinsics.e(it);
                if (it.hasNext()) {
                    this.f67474a = 2;
                    return true;
                }
                this.f67476c = null;
            }
            this.f67474a = 5;
            Continuation continuation = this.f67477d;
            Intrinsics.e(continuation);
            this.f67477d = null;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
    }

    public final void i(Continuation continuation) {
        this.f67477d = continuation;
    }

    @Override // java.util.Iterator
    public Object next() throws Throwable {
        int i11 = this.f67474a;
        if (i11 == 0 || i11 == 1) {
            return h();
        }
        if (i11 == 2) {
            this.f67474a = 1;
            Iterator it = this.f67476c;
            Intrinsics.e(it);
            return it.next();
        }
        if (i11 != 3) {
            throw f();
        }
        this.f67474a = 0;
        Object obj = this.f67475b;
        this.f67475b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) throws Throwable {
        ResultKt.b(obj);
        this.f67474a = 4;
    }
}
