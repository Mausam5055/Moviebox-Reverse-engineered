package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidUiDispatcher extends kotlinx.coroutines.i0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final b f5587k = new b(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f5588l = 8;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Lazy f5589m = LazyKt.b(new Function0<CoroutineContext>() { // from class: androidx.compose.ui.platform.AndroidUiDispatcher$Companion$Main$2
        @Override // kotlin.jvm.functions.Function0
        public final CoroutineContext invoke() {
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(j0.b() ? Choreographer.getInstance() : (Choreographer) kotlinx.coroutines.i.e(kotlinx.coroutines.y0.c(), new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(null)), androidx.core.os.h.a(Looper.getMainLooper()), null);
            return androidUiDispatcher.plus(androidUiDispatcher.T());
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ThreadLocal f5590n = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Choreographer f5591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f5592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f5593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayDeque f5594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f5595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f5596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5598h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AndroidUiDispatcher$dispatchCallback$1 f5599i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.compose.runtime.u0 f5600j;

    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CoroutineContext initialValue() {
            Choreographer choreographer = Choreographer.getInstance();
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalStateException("no Looper on this thread");
            }
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, androidx.core.os.h.a(looperMyLooper), null);
            return androidUiDispatcher.plus(androidUiDispatcher.T());
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CoroutineContext a() {
            if (j0.b()) {
                return b();
            }
            CoroutineContext coroutineContext = (CoroutineContext) AndroidUiDispatcher.f5590n.get();
            if (coroutineContext != null) {
                return coroutineContext;
            }
            throw new IllegalStateException("no AndroidUiDispatcher for this thread");
        }

        public final CoroutineContext b() {
            return (CoroutineContext) AndroidUiDispatcher.f5589m.getValue();
        }
    }

    private AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.f5591a = choreographer;
        this.f5592b = handler;
        this.f5593c = new Object();
        this.f5594d = new ArrayDeque();
        this.f5595e = new ArrayList();
        this.f5596f = new ArrayList();
        this.f5599i = new AndroidUiDispatcher$dispatchCallback$1(this);
        this.f5600j = new AndroidUiFrameClock(choreographer, this);
    }

    public /* synthetic */ AndroidUiDispatcher(Choreographer choreographer, Handler handler, DefaultConstructorMarker defaultConstructorMarker) {
        this(choreographer, handler);
    }

    private final Runnable U() {
        Runnable runnable;
        synchronized (this.f5593c) {
            runnable = (Runnable) this.f5594d.p();
        }
        return runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(long j11) {
        synchronized (this.f5593c) {
            if (this.f5598h) {
                this.f5598h = false;
                List list = this.f5595e;
                this.f5595e = this.f5596f;
                this.f5596f = list;
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((Choreographer.FrameCallback) list.get(i11)).doFrame(j11);
                }
                list.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z() {
        boolean z10;
        do {
            Runnable runnableU = U();
            while (runnableU != null) {
                runnableU.run();
                runnableU = U();
            }
            synchronized (this.f5593c) {
                if (this.f5594d.isEmpty()) {
                    z10 = false;
                    this.f5597g = false;
                } else {
                    z10 = true;
                }
            }
        } while (z10);
    }

    public final androidx.compose.runtime.u0 T() {
        return this.f5600j;
    }

    public final void a0(Choreographer.FrameCallback frameCallback) {
        synchronized (this.f5593c) {
            try {
                this.f5595e.add(frameCallback);
                if (!this.f5598h) {
                    this.f5598h = true;
                    this.f5591a.postFrameCallback(this.f5599i);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c0(Choreographer.FrameCallback frameCallback) {
        synchronized (this.f5593c) {
            this.f5595e.remove(frameCallback);
        }
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        synchronized (this.f5593c) {
            try {
                this.f5594d.addLast(runnable);
                if (!this.f5597g) {
                    this.f5597g = true;
                    this.f5592b.post(this.f5599i);
                    if (!this.f5598h) {
                        this.f5598h = true;
                        this.f5591a.postFrameCallback(this.f5599i);
                    }
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Choreographer x() {
        return this.f5591a;
    }
}
