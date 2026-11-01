package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f1772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f1775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f1776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f1777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1779h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f1780i = new int[2];

    private class DisallowIntercept implements Runnable {
        DisallowIntercept() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = ForwardingListener.this.f1775d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class TriggerLongPress implements Runnable {
        TriggerLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForwardingListener.this.e();
        }
    }

    public ForwardingListener(View view) {
        this.f1775d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1772a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1773b = tapTimeout;
        this.f1774c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f1777f;
        if (runnable != null) {
            this.f1775d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1776e;
        if (runnable2 != null) {
            this.f1775d.removeCallbacks(runnable2);
        }
    }

    private boolean f(MotionEvent motionEvent) {
        DropDownListView dropDownListView;
        View view = this.f1775d;
        androidx.appcompat.view.menu.o oVarB = b();
        if (oVarB == null || !oVarB.a() || (dropDownListView = (DropDownListView) oVarB.o()) == null || !dropDownListView.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, motionEventObtainNoHistory);
        j(dropDownListView, motionEventObtainNoHistory);
        boolean zOnForwardedEvent = dropDownListView.onForwardedEvent(motionEventObtainNoHistory, this.f1779h);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zOnForwardedEvent && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    private boolean g(MotionEvent motionEvent) {
        View view = this.f1775d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1779h = motionEvent.getPointerId(0);
            if (this.f1776e == null) {
                this.f1776e = new DisallowIntercept();
            }
            view.postDelayed(this.f1776e, this.f1773b);
            if (this.f1777f == null) {
                this.f1777f = new TriggerLongPress();
            }
            view.postDelayed(this.f1777f, this.f1774c);
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f1779h);
            if (iFindPointerIndex >= 0 && !h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.f1772a)) {
                a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
            a();
        }
        return false;
    }

    private static boolean h(View view, float f11, float f12, float f13) {
        float f14 = -f13;
        return f11 >= f14 && f12 >= f14 && f11 < ((float) (view.getRight() - view.getLeft())) + f13 && f12 < ((float) (view.getBottom() - view.getTop())) + f13;
    }

    private boolean i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1780i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1780i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    public abstract androidx.appcompat.view.menu.o b();

    protected abstract boolean c();

    protected boolean d() {
        androidx.appcompat.view.menu.o oVarB = b();
        if (oVarB == null || !oVarB.a()) {
            return true;
        }
        oVarB.dismiss();
        return true;
    }

    void e() {
        a();
        View view = this.f1775d;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f1778g = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = this.f1778g;
        if (z11) {
            z10 = f(motionEvent) || !d();
        } else {
            z10 = g(motionEvent) && c();
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1775d.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1778g = z10;
        return z10 || z11;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1778g = false;
        this.f1779h = -1;
        Runnable runnable = this.f1776e;
        if (runnable != null) {
            this.f1775d.removeCallbacks(runnable);
        }
    }
}
