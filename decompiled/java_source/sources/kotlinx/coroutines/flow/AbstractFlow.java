package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFlow implements b {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b
    public final Object a(c cVar, Continuation continuation) throws Throwable {
        AbstractFlow$collect$1 abstractFlow$collect$1;
        Throwable th2;
        SafeCollector safeCollector;
        if (continuation instanceof AbstractFlow$collect$1) {
            abstractFlow$collect$1 = (AbstractFlow$collect$1) continuation;
            int i11 = abstractFlow$collect$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                abstractFlow$collect$1.label = i11 - Integer.MIN_VALUE;
            } else {
                abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
            }
        } else {
            abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
        }
        Object obj = abstractFlow$collect$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = abstractFlow$collect$1.label;
        if (i12 != 0) {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) abstractFlow$collect$1.L$0;
            try {
                ResultKt.b(obj);
                safeCollector.releaseIntercepted();
                return Unit.f67061a;
            } catch (Throwable th3) {
                th2 = th3;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        }
        ResultKt.b(obj);
        SafeCollector safeCollector2 = new SafeCollector(cVar, abstractFlow$collect$1.getContext());
        try {
            abstractFlow$collect$1.L$0 = safeCollector2;
            abstractFlow$collect$1.label = 1;
            if (g(safeCollector2, abstractFlow$collect$1) == objF) {
                return objF;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return Unit.f67061a;
        } catch (Throwable th4) {
            th2 = th4;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th2;
        }
    }

    public abstract Object g(c cVar, Continuation continuation);
}
