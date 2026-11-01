package androidx.datastore.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleActor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f8582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f8583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.coroutines.channels.d f8584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f8585d;

    public SimpleActor(n0 scope, final Function1 onComplete, final Function2 onUndeliveredElement, Function2 consumeMessage) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(onComplete, "onComplete");
        Intrinsics.h(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.h(consumeMessage, "consumeMessage");
        this.f8582a = scope;
        this.f8583b = consumeMessage;
        this.f8584c = kotlinx.coroutines.channels.g.b(Integer.MAX_VALUE, null, null, 6, null);
        this.f8585d = new a(0);
        t1 t1Var = (t1) scope.getCoroutineContext().get(t1.f67996l1);
        if (t1Var != null) {
            t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.SimpleActor.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.f67061a;
                }

                public final void invoke(Throwable th2) {
                    Unit unit;
                    onComplete.invoke(th2);
                    this.f8584c.j(th2);
                    do {
                        Object objF = kotlinx.coroutines.channels.h.f(this.f8584c.e());
                        if (objF != null) {
                            onUndeliveredElement.invoke(objF, th2);
                            unit = Unit.f67061a;
                        } else {
                            unit = null;
                        }
                    } while (unit != null);
                }
            });
        }
    }

    public final void e(Object obj) throws Throwable {
        Object objC = this.f8584c.c(obj);
        if (objC instanceof kotlinx.coroutines.channels.h.a) {
            Throwable thE = kotlinx.coroutines.channels.h.e(objC);
            if (thE != null) {
                throw thE;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!kotlinx.coroutines.channels.h.i(objC)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.f8585d.c() == 0) {
            kotlinx.coroutines.k.d(this.f8582a, null, null, new SimpleActor$offer$2(this, null), 3, null);
        }
    }
}
