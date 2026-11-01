package eo;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f61932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f61933b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f61935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f61936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f61937f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private GestureDetector f61938g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f61939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f61940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f61941j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f61934c = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final GestureDetector.OnGestureListener f61942k = new c();

    public interface a {
        void a();

        void b(float f11, float f12);

        void c(float f11, float f12);

        void d(float f11, float f12);

        void e();

        void onDoubleTap(MotionEvent motionEvent);

        void onLongPress(MotionEvent motionEvent);
    }

    public static final class b implements GestureDetector.OnDoubleTapListener {
        b() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            a aVar = e.this.f61939h;
            if (aVar == null) {
                return false;
            }
            aVar.onDoubleTap(e11);
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            a aVar = e.this.f61939h;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f61944a;

        c() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            this.f61944a = e11.getX();
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent e11, float f11, float f12) {
            Intrinsics.h(e11, "e2");
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            a aVar = e.this.f61939h;
            if (aVar != null) {
                aVar.onLongPress(e11);
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e11, float f11, float f12) {
            Intrinsics.h(e11, "e2");
            if (!e.this.f61934c || motionEvent == null) {
                return false;
            }
            if (Math.abs(f11) <= Math.abs(f12)) {
                boolean unused = e.this.f61935d;
            } else if (!e.this.f61937f && !e.this.f61936e) {
                e.this.f61935d = true;
            }
            if (e.this.f61935d) {
                a aVar = e.this.f61939h;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e11.getX());
                }
            } else if (e.this.f61940i) {
                e eVar = e.this;
                View view = eVar.f61941j;
                Intrinsics.e(view);
                if (eVar.p(view, (int) this.f61944a)) {
                    e.this.f61937f = true;
                    a aVar2 = e.this.f61939h;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e11.getY());
                    }
                } else {
                    e eVar2 = e.this;
                    View view2 = eVar2.f61941j;
                    Intrinsics.e(view2);
                    if (eVar2.r(view2, (int) this.f61944a)) {
                        e.this.f61936e = true;
                        a aVar3 = e.this.f61939h;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e11.getY());
                        }
                    }
                }
            } else if (e.this.o((int) this.f61944a)) {
                e.this.f61937f = true;
                a aVar4 = e.this.f61939h;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e11.getY());
                }
            } else if (e.this.q((int) this.f61944a)) {
                e.this.f61936e = true;
                a aVar5 = e.this.f61939h;
                if (aVar5 != null) {
                    aVar5.d(motionEvent.getY(), e11.getY());
                }
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            return false;
        }
    }

    public e(Context context, View view) {
        this.f61932a = context;
        this.f61933b = view;
        m();
    }

    private final void m() {
        this.f61938g = new GestureDetector(this.f61932a, this.f61942k);
        View view = this.f61933b;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: eo.d
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return e.n(this.f61931a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f61938g;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(e eVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = eVar.f61939h;
            if (aVar != null) {
                aVar.e();
            }
            eVar.f61937f = false;
            eVar.f61936e = false;
            eVar.f61935d = false;
        }
        GestureDetector gestureDetector = eVar.f61938g;
        Intrinsics.e(gestureDetector);
        return gestureDetector.onTouchEvent(motionEvent);
    }

    public final void l(boolean z10) {
        this.f61934c = z10;
    }

    public final boolean o(int i11) {
        return i11 < y.e() / 2;
    }

    public final boolean p(View view, int i11) {
        Intrinsics.h(view, "view");
        return i11 < view.getMeasuredWidth() / 2;
    }

    public final boolean q(int i11) {
        return i11 > y.e() / 2;
    }

    public final boolean r(View view, int i11) {
        Intrinsics.h(view, "view");
        return i11 > view.getMeasuredWidth() / 2;
    }

    public final void s(a aVar) {
        this.f61939h = aVar;
    }
}
