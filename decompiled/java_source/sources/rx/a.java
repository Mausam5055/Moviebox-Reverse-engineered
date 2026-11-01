package rx;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f74741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScaleGestureDetector f74742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GestureDetector f74743d;

    /* JADX INFO: renamed from: rx.a$a, reason: collision with other inner class name */
    public static final class C0912a extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f74744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f74745b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c f74747d;

        C0912a(c cVar) {
            this.f74747d = cVar;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            this.f74744a = e11.getRawX();
            this.f74745b = e11.getRawY();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e11, float f11, float f12) {
            Intrinsics.h(e11, "e2");
            if (a.this.f74740a) {
                return false;
            }
            this.f74747d.b(e11.getRawX() - this.f74744a, e11.getRawY() - this.f74745b);
            this.f74744a = e11.getRawX();
            this.f74745b = e11.getRawY();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            this.f74747d.a();
            return false;
        }
    }

    public static final class b implements ScaleGestureDetector.OnScaleGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f74748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f74749b;

        b(c cVar, a aVar) {
            this.f74748a = cVar;
            this.f74749b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(a aVar) {
            aVar.f74740a = false;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f74748a.onScale(detector);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f74749b.f74740a = true;
            this.f74749b.f74741b.removeCallbacksAndMessages(null);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            this.f74749b.f74741b.removeCallbacksAndMessages(null);
            Handler handler = this.f74749b.f74741b;
            final a aVar = this.f74749b;
            handler.postDelayed(new Runnable() { // from class: rx.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.b(aVar);
                }
            }, 700L);
        }
    }

    public a(Context context, c videoFloatGestureListener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(videoFloatGestureListener, "videoFloatGestureListener");
        this.f74741b = new Handler(Looper.getMainLooper());
        this.f74742c = new ScaleGestureDetector(context, new b(videoFloatGestureListener, this));
        this.f74743d = new GestureDetector(context, new C0912a(videoFloatGestureListener));
    }

    public final boolean d(MotionEvent ev2) {
        Intrinsics.h(ev2, "ev");
        return this.f74742c.onTouchEvent(ev2) || this.f74743d.onTouchEvent(ev2);
    }
}
