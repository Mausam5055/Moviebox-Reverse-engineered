package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.r;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CoroutineAdapterKt {
    public static final r b(final r0 r0Var, final Object obj) {
        Intrinsics.h(r0Var, "<this>");
        r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() { // from class: androidx.privacysandbox.ads.adservices.java.internal.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.b
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return CoroutineAdapterKt.d(r0Var, obj, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return rVarA;
    }

    public static /* synthetic */ r c(r0 r0Var, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return b(r0Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(final r0 this_asListenableFuture, Object obj, final CallbackToFutureAdapter.a completer) {
        Intrinsics.h(this_asListenableFuture, "$this_asListenableFuture");
        Intrinsics.h(completer, "completer");
        this_asListenableFuture.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                invoke((Throwable) obj2);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                if (th2 == null) {
                    completer.c(this_asListenableFuture.h());
                } else if (th2 instanceof CancellationException) {
                    completer.d();
                } else {
                    completer.f(th2);
                }
            }
        });
        return obj;
    }
}
