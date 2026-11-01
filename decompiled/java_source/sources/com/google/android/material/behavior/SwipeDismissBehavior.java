package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes4.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ViewDragHelper f28322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c f28323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f28324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f28325d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28327f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f28326e = 0.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f28328g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f28329h = 0.5f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f28330i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f28331j = 0.5f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ViewDragHelper.b f28332k = new a();

    private class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        SettleRunnable(View view, boolean z10) {
            this.view = view;
            this.dismiss = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f28322a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
            } else {
                if (!this.dismiss || (cVar = SwipeDismissBehavior.this.f28323b) == null) {
                    return;
                }
                cVar.a(this.view);
            }
        }
    }

    class a extends ViewDragHelper.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f28333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f28334b = -1;

        a() {
        }

        private boolean a(View view, float f11) {
            if (f11 == 0.0f) {
                return Math.abs(view.getLeft() - this.f28333a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f28329h);
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i11 = SwipeDismissBehavior.this.f28328g;
            if (i11 == 2) {
                return true;
            }
            if (i11 == 0) {
                if (z10) {
                    if (f11 >= 0.0f) {
                        return false;
                    }
                } else if (f11 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i11 != 1) {
                return false;
            }
            if (z10) {
                if (f11 <= 0.0f) {
                    return false;
                }
            } else if (f11 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionHorizontal(View view, int i11, int i12) {
            int width;
            int width2;
            int width3;
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i13 = SwipeDismissBehavior.this.f28328g;
            if (i13 == 0) {
                if (z10) {
                    width = this.f28333a - view.getWidth();
                    width2 = this.f28333a;
                } else {
                    width = this.f28333a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i13 != 1) {
                width = this.f28333a - view.getWidth();
                width2 = view.getWidth() + this.f28333a;
            } else if (z10) {
                width = this.f28333a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f28333a - view.getWidth();
                width2 = this.f28333a;
            }
            return SwipeDismissBehavior.H(width, i11, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionVertical(View view, int i11, int i12) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewCaptured(View view, int i11) {
            this.f28334b = i11;
            this.f28333a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.f28325d = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.f28325d = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewDragStateChanged(int i11) {
            c cVar = SwipeDismissBehavior.this.f28323b;
            if (cVar != null) {
                cVar.b(i11);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewPositionChanged(View view, int i11, int i12, int i13, int i14) {
            float width = view.getWidth() * SwipeDismissBehavior.this.f28330i;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.f28331j;
            float fAbs = Math.abs(i11 - this.f28333a);
            if (fAbs <= width) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.G(0.0f, 1.0f - SwipeDismissBehavior.J(width, width2, fAbs), 1.0f));
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001d  */
        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewReleased(View view, float f11, float f12) {
            int i11;
            boolean z10;
            c cVar;
            this.f28334b = -1;
            int width = view.getWidth();
            if (a(view, f11)) {
                if (f11 >= 0.0f) {
                    int left = view.getLeft();
                    int i12 = this.f28333a;
                    if (left < i12) {
                        i11 = this.f28333a - width;
                    } else {
                        i11 = i12 + width;
                    }
                } else {
                    i11 = this.f28333a - width;
                }
                z10 = true;
            } else {
                i11 = this.f28333a;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.f28322a.settleCapturedViewAt(i11, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z10));
            } else {
                if (!z10 || (cVar = SwipeDismissBehavior.this.f28323b) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean tryCaptureView(View view, int i11) {
            int i12 = this.f28334b;
            return (i12 == -1 || i12 == i11) && SwipeDismissBehavior.this.F(view);
        }
    }

    class b implements AccessibilityViewCommand {
        b() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!SwipeDismissBehavior.this.F(view)) {
                return false;
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i11 = SwipeDismissBehavior.this.f28328g;
            ViewCompat.offsetLeftAndRight(view, (!(i11 == 0 && z10) && (i11 != 1 || z10)) ? view.getWidth() : -view.getWidth());
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.f28323b;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i11);
    }

    static float G(float f11, float f12, float f13) {
        return Math.min(Math.max(f11, f12), f13);
    }

    static int H(int i11, int i12, int i13) {
        return Math.min(Math.max(i11, i12), i13);
    }

    private void I(ViewGroup viewGroup) {
        if (this.f28322a == null) {
            this.f28322a = this.f28327f ? ViewDragHelper.create(viewGroup, this.f28326e, this.f28332k) : ViewDragHelper.create(viewGroup, this.f28332k);
        }
    }

    static float J(float f11, float f12, float f13) {
        return (f13 - f11) / (f12 - f11);
    }

    private void O(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (F(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f28322a == null) {
            return false;
        }
        if (this.f28325d && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f28322a.processTouchEvent(motionEvent);
        return true;
    }

    public boolean F(View view) {
        return true;
    }

    public void K(float f11) {
        this.f28331j = G(0.0f, f11, 1.0f);
    }

    public void L(c cVar) {
        this.f28323b = cVar;
    }

    public void M(float f11) {
        this.f28330i = G(0.0f, f11, 1.0f);
    }

    public void N(int i11) {
        this.f28328g = i11;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.f28324c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f28324c = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f28324c = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        I(coordinatorLayout);
        return !this.f28325d && this.f28322a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        boolean zL = super.l(coordinatorLayout, view, i11);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
            O(view);
        }
        return zL;
    }
}
