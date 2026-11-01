package com.transsion.shorttv_pugc.base.widget;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f53855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f53856c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f53858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f53859f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f53860g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private GestureDetector f53861h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f53862i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f53863j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f53864k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f53854a = e.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f53857d = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final GestureDetector.OnGestureListener f53865l = new c();

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
            a aVar = e.this.f53862i;
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
            a aVar = e.this.f53862i;
            if (aVar == null) {
                return false;
            }
            aVar.a();
            return false;
        }
    }

    public static final class c implements GestureDetector.OnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f53867a;

        c() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            this.f53867a = e11.getX();
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
            a aVar = e.this.f53862i;
            if (aVar != null) {
                aVar.onLongPress(e11);
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e11, float f11, float f12) {
            Intrinsics.h(e11, "e2");
            if (!e.this.f53857d || motionEvent == null) {
                return false;
            }
            if (Math.abs(f11) <= Math.abs(f12)) {
                boolean unused = e.this.f53858e;
            } else if (!e.this.f53860g && !e.this.f53859f) {
                e.this.f53858e = true;
            }
            if (e.this.f53858e) {
                a aVar = e.this.f53862i;
                if (aVar != null) {
                    aVar.b(motionEvent.getX(), e11.getX());
                }
            } else if (e.this.f53863j) {
                e eVar = e.this;
                View view = eVar.f53864k;
                Intrinsics.e(view);
                if (eVar.o(view, (int) this.f53867a)) {
                    e.this.f53860g = true;
                    a aVar2 = e.this.f53862i;
                    if (aVar2 != null) {
                        aVar2.c(motionEvent.getY(), e11.getY());
                    }
                } else {
                    e eVar2 = e.this;
                    View view2 = eVar2.f53864k;
                    Intrinsics.e(view2);
                    if (eVar2.q(view2, (int) this.f53867a)) {
                        e.this.f53859f = true;
                        a aVar3 = e.this.f53862i;
                        if (aVar3 != null) {
                            aVar3.d(motionEvent.getY(), e11.getY());
                        }
                    }
                }
            } else if (e.this.n((int) this.f53867a)) {
                e.this.f53860g = true;
                a aVar4 = e.this.f53862i;
                if (aVar4 != null) {
                    aVar4.c(motionEvent.getY(), e11.getY());
                }
            } else if (e.this.p((int) this.f53867a)) {
                e.this.f53859f = true;
                a aVar5 = e.this.f53862i;
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
        this.f53855b = context;
        this.f53856c = view;
        l();
    }

    private final void l() {
        this.f53861h = new GestureDetector(this.f53855b, this.f53865l);
        View view = this.f53856c;
        Intrinsics.e(view);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.shorttv_pugc.base.widget.d
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return e.m(this.f53853a, view2, motionEvent);
            }
        });
        GestureDetector gestureDetector = this.f53861h;
        Intrinsics.e(gestureDetector);
        gestureDetector.setOnDoubleTapListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(e eVar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            a aVar = eVar.f53862i;
            if (aVar != null) {
                aVar.e();
            }
            eVar.f53860g = false;
            eVar.f53859f = false;
            eVar.f53858e = false;
        }
        GestureDetector gestureDetector = eVar.f53861h;
        Intrinsics.e(gestureDetector);
        return gestureDetector.onTouchEvent(motionEvent);
    }

    public final boolean n(int i11) {
        return i11 < y.e() / 2;
    }

    public final boolean o(View view, int i11) {
        Intrinsics.h(view, "view");
        return i11 < view.getMeasuredWidth() / 2;
    }

    public final boolean p(int i11) {
        return i11 > y.e() / 2;
    }

    public final boolean q(View view, int i11) {
        Intrinsics.h(view, "view");
        return i11 > view.getMeasuredWidth() / 2;
    }

    public final void r(a aVar) {
        this.f53862i = aVar;
    }
}
