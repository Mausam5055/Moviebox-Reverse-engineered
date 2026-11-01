package androidx.compose.ui.graphics;

import android.content.ComponentCallbacks2;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.layer.view.ViewLayerContainer;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class k0 implements a4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4456e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f4457f = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f4458a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DrawChildContainer f4460c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4459b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ComponentCallbacks2 f4461d = null;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f4462a = new b();

        private b() {
        }

        @JvmStatic
        public static final long a(View view) {
            return view.getUniqueDrawingId();
        }
    }

    public k0(ViewGroup viewGroup) {
        this.f4458a = viewGroup;
    }

    private final long c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return b.a(view);
        }
        return -1L;
    }

    private final DrawChildContainer d(ViewGroup viewGroup) {
        DrawChildContainer drawChildContainer = this.f4460c;
        if (drawChildContainer != null) {
            return drawChildContainer;
        }
        ViewLayerContainer viewLayerContainer = new ViewLayerContainer(viewGroup.getContext());
        viewGroup.addView(viewLayerContainer);
        this.f4460c = viewLayerContainer;
        return viewLayerContainer;
    }

    @Override // androidx.compose.ui.graphics.a4
    public GraphicsLayer a() {
        GraphicsLayerImpl d0Var;
        GraphicsLayer graphicsLayer;
        synchronized (this.f4459b) {
            try {
                long jC = c(this.f4458a);
                if (Build.VERSION.SDK_INT >= 29) {
                    d0Var = new androidx.compose.ui.graphics.layer.c0(jC, null, null, 6, null);
                } else if (f4457f) {
                    try {
                        d0Var = new androidx.compose.ui.graphics.layer.e(this.f4458a, jC, null, null, 12, null);
                    } catch (Throwable unused) {
                        f4457f = false;
                        d0Var = new androidx.compose.ui.graphics.layer.d0(d(this.f4458a), jC, null, null, 12, null);
                    }
                } else {
                    d0Var = new androidx.compose.ui.graphics.layer.d0(d(this.f4458a), jC, null, null, 12, null);
                }
                graphicsLayer = new GraphicsLayer(d0Var, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return graphicsLayer;
    }

    @Override // androidx.compose.ui.graphics.a4
    public void b(GraphicsLayer graphicsLayer) {
        synchronized (this.f4459b) {
            graphicsLayer.H();
            Unit unit = Unit.f67061a;
        }
    }
}
