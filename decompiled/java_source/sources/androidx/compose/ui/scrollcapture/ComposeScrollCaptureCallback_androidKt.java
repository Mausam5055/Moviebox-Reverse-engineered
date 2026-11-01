package androidx.compose.ui.scrollcapture;

import android.os.CancellationSignal;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public abstract class ComposeScrollCaptureCallback_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final t1 c(n0 n0Var, final CancellationSignal cancellationSignal, Function2 function2) {
        final t1 t1VarD = k.d(n0Var, null, null, function2, 3, null);
        t1VarD.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback_androidKt$launchWithCancellationSignal$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                if (th2 != null) {
                    cancellationSignal.cancel();
                }
            }
        });
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.compose.ui.scrollcapture.d
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                ComposeScrollCaptureCallback_androidKt.d(t1VarD);
            }
        });
        return t1VarD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(t1 t1Var) {
        t1.a.b(t1Var, null, 1, null);
    }
}
