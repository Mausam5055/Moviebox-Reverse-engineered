package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class WindowRecomposerPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WindowRecomposerPolicy f5707a = new WindowRecomposerPolicy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicReference f5708b = new AtomicReference(y2.f5884a.c());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5709c = 8;

    public static final class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.t1 f5710a;

        a(kotlinx.coroutines.t1 t1Var) {
            this.f5710a = t1Var;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            kotlinx.coroutines.t1.a.b(this.f5710a, null, 1, null);
        }
    }

    private WindowRecomposerPolicy() {
    }

    public final Recomposer a(View view) {
        Recomposer recomposerA = ((y2) f5708b.get()).a(view);
        WindowRecomposer_androidKt.i(view, recomposerA);
        view.addOnAttachStateChangeListener(new a(kotlinx.coroutines.k.d(kotlinx.coroutines.n1.f67901a, kotlinx.coroutines.android.g.d(view.getHandler(), "windowRecomposer cleanup").q(), null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposerA, view, null), 2, null)));
        return recomposerA;
    }
}
