package androidx.compose.ui.platform;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public interface ViewCompositionStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5681a = a.f5684a;

    public static final class DisposeOnDetachedFromWindowOrReleasedFromPool implements ViewCompositionStrategy {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final DisposeOnDetachedFromWindowOrReleasedFromPool f5682b = new DisposeOnDetachedFromWindowOrReleasedFromPool();

        public static final class a implements View.OnAttachStateChangeListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AbstractComposeView f5683a;

            a(AbstractComposeView abstractComposeView) {
                this.f5683a = abstractComposeView;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (h1.a.f(this.f5683a)) {
                    return;
                }
                this.f5683a.disposeComposition();
            }
        }

        private DisposeOnDetachedFromWindowOrReleasedFromPool() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(AbstractComposeView abstractComposeView) {
            abstractComposeView.disposeComposition();
        }

        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        public Function0 a(final AbstractComposeView abstractComposeView) {
            final a aVar = new a(abstractComposeView);
            abstractComposeView.addOnAttachStateChangeListener(aVar);
            final h1.b bVar = new h1.b() { // from class: androidx.compose.ui.platform.m2
                @Override // h1.b
                public final void onRelease() {
                    ViewCompositionStrategy.DisposeOnDetachedFromWindowOrReleasedFromPool.c(abstractComposeView);
                }
            };
            h1.a.a(abstractComposeView, bVar);
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m162invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m162invoke() {
                    abstractComposeView.removeOnAttachStateChangeListener(aVar);
                    h1.a.g(abstractComposeView, bVar);
                }
            };
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f5684a = new a();

        private a() {
        }

        public final ViewCompositionStrategy a() {
            return DisposeOnDetachedFromWindowOrReleasedFromPool.f5682b;
        }
    }

    Function0 a(AbstractComposeView abstractComposeView);
}
