package androidx.slidingpanelayout.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.transition.s;
import androidx.window.layout.r;
import androidx.window.layout.w;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SlidingPaneLayout extends ViewGroup {
    public static final int LOCK_MODE_LOCKED = 3;
    public static final int LOCK_MODE_LOCKED_CLOSED = 2;
    public static final int LOCK_MODE_LOCKED_OPEN = 1;
    public static final int LOCK_MODE_UNLOCKED = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f14847y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f14850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f14851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f14852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    View f14853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f14854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f14855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f14856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f14857j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f14858k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f14859l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f14860m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List f14861n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private e f14862o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final ViewDragHelper f14863p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f14864q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f14865r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Rect f14866s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final ArrayList f14867t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f14868u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    r f14869v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private FoldingFeatureObserver.a f14870w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private FoldingFeatureObserver f14871x;

    private class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout.this.h(this.mChildView);
            }
            SlidingPaneLayout.this.f14867t.remove(this);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f14872a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14873b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f14872a = parcel.readInt() != 0;
            this.f14873b = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.f14872a ? 1 : 0);
            parcel.writeInt(this.f14873b);
        }
    }

    class a implements FoldingFeatureObserver.a {
        a() {
        }

        @Override // androidx.slidingpanelayout.widget.FoldingFeatureObserver.a
        public void a(r rVar) {
            SlidingPaneLayout.this.f14869v = rVar;
            androidx.transition.b bVar = new androidx.transition.b();
            bVar.X(300L);
            bVar.Z(PathInterpolatorCompat.create(0.2f, 0.0f, 0.0f, 1.0f));
            s.a(SlidingPaneLayout.this, bVar);
            SlidingPaneLayout.this.requestLayout();
        }
    }

    class b extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f14875a = new Rect();

        b() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f14875a;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean b(View view) {
            return SlidingPaneLayout.this.i(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
            a(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
            accessibilityNodeInfoCompatObtain.recycle();
            accessibilityNodeInfoCompat.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
            accessibilityNodeInfoCompat.setSource(view);
            Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i11);
                if (!b(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (b(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    private class c extends ViewDragHelper.b {
        c() {
        }

        private boolean a() {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f14857j || slidingPaneLayout.getLockMode() == 3) {
                return false;
            }
            if (SlidingPaneLayout.this.isOpen() && SlidingPaneLayout.this.getLockMode() == 1) {
                return false;
            }
            return SlidingPaneLayout.this.isOpen() || SlidingPaneLayout.this.getLockMode() != 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionHorizontal(View view, int i11, int i12) {
            d dVar = (d) SlidingPaneLayout.this.f14853f.getLayoutParams();
            if (SlidingPaneLayout.this.j()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin) + SlidingPaneLayout.this.f14853f.getWidth());
                return Math.max(Math.min(i11, width), width - SlidingPaneLayout.this.f14856i);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
            return Math.min(Math.max(i11, paddingLeft), SlidingPaneLayout.this.f14856i + paddingLeft);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionVertical(View view, int i11, int i12) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.f14856i;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onEdgeDragStarted(int i11, int i12) {
            if (a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f14863p.captureChildView(slidingPaneLayout.f14853f, i12);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onEdgeTouched(int i11, int i12) {
            if (a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f14863p.captureChildView(slidingPaneLayout.f14853f, i12);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewCaptured(View view, int i11) {
            SlidingPaneLayout.this.o();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewDragStateChanged(int i11) {
            if (SlidingPaneLayout.this.f14863p.getViewDragState() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f14854g != 1.0f) {
                    slidingPaneLayout.c(slidingPaneLayout.f14853f);
                    SlidingPaneLayout.this.f14864q = true;
                } else {
                    slidingPaneLayout.r(slidingPaneLayout.f14853f);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.b(slidingPaneLayout2.f14853f);
                    SlidingPaneLayout.this.f14864q = false;
                }
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewPositionChanged(View view, int i11, int i12, int i13, int i14) {
            SlidingPaneLayout.this.l(i11);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewReleased(View view, float f11, float f12) {
            int paddingLeft;
            d dVar = (d) view.getLayoutParams();
            if (SlidingPaneLayout.this.j()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
                if (f11 < 0.0f || (f11 == 0.0f && SlidingPaneLayout.this.f14854g > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.f14856i;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.f14853f.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) dVar).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f11 > 0.0f || (f11 == 0.0f && SlidingPaneLayout.this.f14854g > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.f14856i;
                }
            }
            SlidingPaneLayout.this.f14863p.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean tryCaptureView(View view, int i11) {
            if (a()) {
                return ((d) view.getLayoutParams()).f14880b;
            }
            return false;
        }
    }

    public static class d extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int[] f14878e = {R.attr.layout_weight};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f14879a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f14880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f14881c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f14882d;

        public d() {
            super(-1, -1);
            this.f14879a = 0.0f;
        }

        public d(int i11, int i12) {
            super(i11, i12);
            this.f14879a = 0.0f;
        }

        public d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f14879a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f14878e);
            this.f14879a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f14879a = 0.0f;
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f14879a = 0.0f;
        }
    }

    public interface e {
        void a(View view);

        void b(View view);

        void c(View view, float f11);
    }

    private static class f extends FrameLayout {
        f(View view) {
            super(view.getContext());
            addView(view);
        }

        @Override // android.view.View
        public boolean onGenericMotionEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return true;
        }
    }

    static {
        f14847y = Build.VERSION.SDK_INT >= 29;
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f14848a = 0;
        this.f14854g = 1.0f;
        this.f14861n = new CopyOnWriteArrayList();
        this.f14865r = true;
        this.f14866s = new Rect();
        this.f14867t = new ArrayList();
        this.f14870w = new a();
        float f11 = context.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new b());
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 0.5f, new c());
        this.f14863p = viewDragHelperCreate;
        viewDragHelperCreate.setMinVelocity(f11 * 400.0f);
        setFoldingFeatureObserver(new FoldingFeatureObserver(w.a(context), androidx.core.content.b.getMainExecutor(context)));
    }

    private boolean a(int i11) {
        if (!this.f14852e) {
            this.f14864q = false;
        }
        if (!this.f14865r && !p(1.0f, i11)) {
            return false;
        }
        this.f14864q = false;
        return true;
    }

    private static Activity e(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    private static Rect f(r rVar, View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i11 = iArr[0];
        Rect rect = new Rect(i11, iArr[1], view.getWidth() + i11, iArr[1] + view.getWidth());
        Rect rect2 = new Rect(rVar.getBounds());
        boolean zIntersect = rect2.intersect(rect);
        if ((rect2.width() == 0 && rect2.height() == 0) || !zIntersect) {
            return null;
        }
        rect2.offset(-iArr[0], -iArr[1]);
        return rect2;
    }

    private static int g(View view) {
        return view instanceof f ? ViewCompat.getMinimumWidth(((f) view).getChildAt(0)) : ViewCompat.getMinimumWidth(view);
    }

    private z0.c getSystemGestureInsets() {
        WindowInsetsCompat rootWindowInsets;
        if (!f14847y || (rootWindowInsets = ViewCompat.getRootWindowInsets(this)) == null) {
            return null;
        }
        return rootWindowInsets.getSystemGestureInsets();
    }

    private static int k(View view, int i11, int i12) {
        d dVar = (d) view.getLayoutParams();
        return (((ViewGroup.MarginLayoutParams) dVar).width != 0 || dVar.f14879a <= 0.0f) ? View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824) : ViewGroup.getChildMeasureSpec(i11, i12, ((ViewGroup.MarginLayoutParams) dVar).height);
    }

    private boolean m(int i11) {
        if (!this.f14852e) {
            this.f14864q = true;
        }
        if (!this.f14865r && !p(0.0f, i11)) {
            return false;
        }
        this.f14864q = true;
        return true;
    }

    private void n(float f11) {
        boolean zJ = j();
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != this.f14853f) {
                float f12 = 1.0f - this.f14855h;
                int i12 = this.f14858k;
                this.f14855h = f11;
                int i13 = ((int) (f12 * i12)) - ((int) ((1.0f - f11) * i12));
                if (zJ) {
                    i13 = -i13;
                }
                childAt.offsetLeftAndRight(i13);
            }
        }
    }

    private ArrayList q() {
        Rect rectF;
        r rVar = this.f14869v;
        if (rVar == null || !rVar.isSeparating() || this.f14869v.getBounds().left == 0 || this.f14869v.getBounds().top != 0 || (rectF = f(this.f14869v, this)) == null) {
            return null;
        }
        Rect rect = new Rect(getPaddingLeft(), getPaddingTop(), Math.max(getPaddingLeft(), rectF.left), getHeight() - getPaddingBottom());
        int width = getWidth() - getPaddingRight();
        return new ArrayList(Arrays.asList(rect, new Rect(Math.min(width, rectF.right), getPaddingTop(), width, getHeight() - getPaddingBottom())));
    }

    private static boolean s(View view) {
        return view.isOpaque();
    }

    private void setFoldingFeatureObserver(FoldingFeatureObserver foldingFeatureObserver) {
        this.f14871x = foldingFeatureObserver;
        foldingFeatureObserver.f(this.f14870w);
    }

    public void addPanelSlideListener(@NonNull e eVar) {
        this.f14861n.add(eVar);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i11, @Nullable ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() == 1) {
            super.addView(new f(view), i11, layoutParams);
        } else {
            super.addView(view, i11, layoutParams);
        }
    }

    void b(View view) {
        Iterator it = this.f14861n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).b(view);
        }
        sendAccessibilityEvent(32);
    }

    void c(View view) {
        Iterator it = this.f14861n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(view);
        }
        sendAccessibilityEvent(32);
    }

    @Deprecated
    public boolean canSlide() {
        return this.f14852e;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    public void close() {
        closePane();
    }

    public boolean closePane() {
        return a(0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f14863p.continueSettling(true)) {
            if (this.f14852e) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.f14863p.abort();
            }
        }
    }

    void d(View view) {
        Iterator it = this.f14861n.iterator();
        while (it.hasNext()) {
            ((e) it.next()).c(view, this.f14854g);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i11;
        int right;
        super.draw(canvas);
        Drawable drawable = j() ? this.f14851d : this.f14850c;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (j()) {
            right = childAt.getRight();
            i11 = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i12 = left - intrinsicWidth;
            i11 = left;
            right = i12;
        }
        drawable.setBounds(right, top, i11, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j11) {
        if (j() ^ isOpen()) {
            this.f14863p.setEdgeTrackingEnabled(1);
            z0.c systemGestureInsets = getSystemGestureInsets();
            if (systemGestureInsets != null) {
                ViewDragHelper viewDragHelper = this.f14863p;
                viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.f79125a));
            }
        } else {
            this.f14863p.setEdgeTrackingEnabled(2);
            z0.c systemGestureInsets2 = getSystemGestureInsets();
            if (systemGestureInsets2 != null) {
                ViewDragHelper viewDragHelper2 = this.f14863p;
                viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets2.f79127c));
            }
        }
        d dVar = (d) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.f14852e && !dVar.f14880b && this.f14853f != null) {
            canvas.getClipBounds(this.f14866s);
            if (j()) {
                Rect rect = this.f14866s;
                rect.left = Math.max(rect.left, this.f14853f.getRight());
            } else {
                Rect rect2 = this.f14866s;
                rect2.right = Math.min(rect2.right, this.f14853f.getLeft());
            }
            canvas.clipRect(this.f14866s);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j11);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    @Deprecated
    public int getCoveredFadeColor() {
        return this.f14849b;
    }

    public final int getLockMode() {
        return this.f14868u;
    }

    public int getParallaxDistance() {
        return this.f14858k;
    }

    @Deprecated
    public int getSliderFadeColor() {
        return this.f14848a;
    }

    void h(View view) {
        ViewCompat.setLayerPaint(view, ((d) view.getLayoutParams()).f14882d);
    }

    boolean i(View view) {
        if (view == null) {
            return false;
        }
        return this.f14852e && ((d) view.getLayoutParams()).f14881c && this.f14854g > 0.0f;
    }

    public boolean isOpen() {
        return !this.f14852e || this.f14854g == 0.0f;
    }

    public boolean isSlideable() {
        return this.f14852e;
    }

    boolean j() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    void l(int i11) {
        if (this.f14853f == null) {
            this.f14854g = 0.0f;
            return;
        }
        boolean zJ = j();
        d dVar = (d) this.f14853f.getLayoutParams();
        int width = this.f14853f.getWidth();
        if (zJ) {
            i11 = (getWidth() - i11) - width;
        }
        float paddingRight = (i11 - ((zJ ? getPaddingRight() : getPaddingLeft()) + (zJ ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin))) / this.f14856i;
        this.f14854g = paddingRight;
        if (this.f14858k != 0) {
            n(paddingRight);
        }
        d(this.f14853f);
    }

    void o() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Activity activityE;
        super.onAttachedToWindow();
        this.f14865r = true;
        if (this.f14871x == null || (activityE = e(getContext())) == null) {
            return;
        }
        this.f14871x.e(activityE);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f14865r = true;
        FoldingFeatureObserver foldingFeatureObserver = this.f14871x;
        if (foldingFeatureObserver != null) {
            foldingFeatureObserver.g();
        }
        int size = this.f14867t.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((DisableLayerRunnable) this.f14867t.get(i11)).run();
        }
        this.f14867t.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f14852e && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f14864q = this.f14863p.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f14852e || (this.f14857j && actionMasked != 0)) {
            this.f14863p.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.f14863p.cancel();
            return false;
        }
        if (actionMasked == 0) {
            this.f14857j = false;
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f14859l = x10;
            this.f14860m = y10;
            if (this.f14863p.isViewUnder(this.f14853f, (int) x10, (int) y10) && i(this.f14853f)) {
                z10 = true;
            }
            return this.f14863p.shouldInterceptTouchEvent(motionEvent) || z10;
        }
        if (actionMasked == 2) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            float fAbs = Math.abs(x11 - this.f14859l);
            float fAbs2 = Math.abs(y11 - this.f14860m);
            if (fAbs > this.f14863p.getTouchSlop() && fAbs2 > fAbs) {
                this.f14863p.cancel();
                this.f14857j = true;
                return false;
            }
        }
        z10 = false;
        if (this.f14863p.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean zJ = j();
        int i20 = i13 - i11;
        int paddingRight = zJ ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zJ ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f14865r) {
            this.f14854g = (this.f14852e && this.f14864q) ? 0.0f : 1.0f;
        }
        int i21 = paddingRight;
        int i22 = 0;
        while (i22 < childCount) {
            View childAt = getChildAt(i22);
            if (childAt.getVisibility() == 8) {
                i15 = i21;
            } else {
                d dVar = (d) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (dVar.f14880b) {
                    int i23 = i20 - paddingLeft;
                    int iMin = (Math.min(paddingRight, i23) - i21) - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    this.f14856i = iMin;
                    int i24 = zJ ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
                    dVar.f14881c = ((i21 + i24) + iMin) + (measuredWidth / 2) > i23;
                    int i25 = (int) (iMin * this.f14854g);
                    this.f14854g = i25 / iMin;
                    i15 = i21 + i24 + i25;
                    i16 = 0;
                } else if (!this.f14852e || (i17 = this.f14858k) == 0) {
                    i15 = paddingRight;
                    i16 = 0;
                } else {
                    i16 = (int) ((1.0f - this.f14854g) * i17);
                    i15 = paddingRight;
                }
                if (zJ) {
                    i19 = (i20 - i15) + i16;
                    i18 = i19 - measuredWidth;
                } else {
                    i18 = i15 - i16;
                    i19 = i18 + measuredWidth;
                }
                childAt.layout(i18, paddingTop, i19, childAt.getMeasuredHeight() + paddingTop);
                r rVar = this.f14869v;
                paddingRight += childAt.getWidth() + Math.abs((rVar != null && rVar.getOrientation() == r.b.f15356c && this.f14869v.isSeparating()) ? this.f14869v.getBounds().width() : 0);
            }
            i22++;
            i21 = i15;
        }
        if (this.f14865r) {
            if (this.f14852e && this.f14858k != 0) {
                n(this.f14854g);
            }
            r(this.f14853f);
        }
        this.f14865r = false;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0086 A[PHI: r15
  0x0086: PHI (r15v5 float) = (r15v1 float), (r15v6 float) binds: [B:19:0x007d, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0098  */
    /* JADX WARN: Code duplicated, block: B:27:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ea  */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v12 */
    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int paddingTop;
        int iMin;
        int i13;
        int iMax;
        int iMakeMeasureSpec;
        int iMax2;
        int i14;
        int iMakeMeasureSpec2;
        int measuredHeight;
        boolean z10;
        int i15;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        ?? r11 = 0;
        if (mode2 != Integer.MIN_VALUE) {
            iMin = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = iMin;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            iMin = 0;
        }
        int iMax3 = Math.max((size - getPaddingLeft()) - getPaddingRight(), 0);
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f14853f = null;
        int i16 = 0;
        boolean z11 = false;
        int i17 = iMax3;
        float f11 = 0.0f;
        while (true) {
            i13 = 8;
            if (i16 >= childCount) {
                break;
            }
            View childAt = getChildAt(i16);
            d dVar = (d) childAt.getLayoutParams();
            int i18 = size;
            if (childAt.getVisibility() == 8) {
                dVar.f14881c = r11;
            } else {
                float f12 = dVar.f14879a;
                if (f12 > 0.0f) {
                    f11 += f12;
                    if (((ViewGroup.MarginLayoutParams) dVar).width != 0) {
                        iMax2 = Math.max(iMax3 - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin), (int) r11);
                        i14 = ((ViewGroup.MarginLayoutParams) dVar).width;
                        if (i14 == -2) {
                            if (mode == 0) {
                                i15 = mode;
                            } else {
                                i15 = Integer.MIN_VALUE;
                            }
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, i15);
                        } else if (i14 == -1) {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, mode);
                        } else {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                        }
                        childAt.measure(iMakeMeasureSpec2, ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) dVar).height));
                        int measuredWidth = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                        if (measuredHeight > iMin) {
                            if (mode2 == Integer.MIN_VALUE) {
                                iMin = Math.min(measuredHeight, paddingTop);
                            } else if (mode2 == 0) {
                                iMin = measuredHeight;
                            }
                        }
                        i17 -= measuredWidth;
                        if (i16 != 0) {
                            if (i17 < 0) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            dVar.f14880b = z10;
                            z11 |= z10;
                            if (z10) {
                                this.f14853f = childAt;
                            }
                        }
                    }
                } else {
                    iMax2 = Math.max(iMax3 - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin), (int) r11);
                    i14 = ((ViewGroup.MarginLayoutParams) dVar).width;
                    if (i14 == -2) {
                        if (mode == 0) {
                            i15 = mode;
                        } else {
                            i15 = Integer.MIN_VALUE;
                        }
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, i15);
                    } else if (i14 == -1) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, mode);
                    } else {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                    }
                    childAt.measure(iMakeMeasureSpec2, ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) dVar).height));
                    int measuredWidth2 = childAt.getMeasuredWidth();
                    measuredHeight = childAt.getMeasuredHeight();
                    if (measuredHeight > iMin) {
                        if (mode2 == Integer.MIN_VALUE) {
                            iMin = Math.min(measuredHeight, paddingTop);
                        } else if (mode2 == 0) {
                            iMin = measuredHeight;
                        }
                    }
                    i17 -= measuredWidth2;
                    if (i16 != 0) {
                        if (i17 < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        dVar.f14880b = z10;
                        z11 |= z10;
                        if (z10) {
                            this.f14853f = childAt;
                        }
                    }
                }
            }
            i16++;
            size = i18;
            r11 = 0;
        }
        int i19 = size;
        int i20 = i17;
        if (z11 || f11 > 0.0f) {
            int i21 = 0;
            while (i21 < childCount) {
                View childAt2 = getChildAt(i21);
                if (childAt2.getVisibility() != i13) {
                    d dVar2 = (d) childAt2.getLayoutParams();
                    int measuredWidth3 = (((ViewGroup.MarginLayoutParams) dVar2).width != 0 || dVar2.f14879a <= 0.0f) ? childAt2.getMeasuredWidth() : 0;
                    if (z11) {
                        iMax = iMax3 - (((ViewGroup.MarginLayoutParams) dVar2).leftMargin + ((ViewGroup.MarginLayoutParams) dVar2).rightMargin);
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    } else if (dVar2.f14879a > 0.0f) {
                        iMax = measuredWidth3 + ((int) ((dVar2.f14879a * Math.max(0, i20)) / f11));
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    } else {
                        iMax = measuredWidth3;
                        iMakeMeasureSpec = 0;
                    }
                    int iK = k(childAt2, i12, getPaddingTop() + getPaddingBottom());
                    if (measuredWidth3 != iMax) {
                        childAt2.measure(iMakeMeasureSpec, iK);
                        int measuredHeight2 = childAt2.getMeasuredHeight();
                        if (measuredHeight2 > iMin) {
                            if (mode2 == Integer.MIN_VALUE) {
                                measuredHeight2 = Math.min(measuredHeight2, paddingTop);
                            } else if (mode2 == 0) {
                            }
                            iMin = measuredHeight2;
                        }
                    }
                }
                i21++;
                i13 = 8;
            }
        }
        ArrayList arrayListQ = q();
        if (arrayListQ != null && !z11) {
            for (int i22 = 0; i22 < childCount; i22++) {
                View childAt3 = getChildAt(i22);
                if (childAt3.getVisibility() != 8) {
                    Rect rect = (Rect) arrayListQ.get(i22);
                    d dVar3 = (d) childAt3.getLayoutParams();
                    int i23 = ((ViewGroup.MarginLayoutParams) dVar3).leftMargin + ((ViewGroup.MarginLayoutParams) dVar3).rightMargin;
                    int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(childAt3.getMeasuredHeight(), 1073741824);
                    childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), Integer.MIN_VALUE), iMakeMeasureSpec3);
                    if ((childAt3.getMeasuredWidthAndState() & 16777216) == 1 || (g(childAt3) != 0 && rect.width() < g(childAt3))) {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(iMax3 - i23, 1073741824), iMakeMeasureSpec3);
                        if (i22 != 0) {
                            dVar3.f14880b = true;
                            this.f14853f = childAt3;
                            z11 = true;
                        }
                    } else {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), 1073741824), iMakeMeasureSpec3);
                    }
                }
            }
        }
        setMeasuredDimension(i19, iMin + getPaddingTop() + getPaddingBottom());
        this.f14852e = z11;
        if (this.f14863p.getViewDragState() == 0 || z11) {
            return;
        }
        this.f14863p.abort();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f14872a) {
            openPane();
        } else {
            closePane();
        }
        this.f14864q = savedState.f14872a;
        setLockMode(savedState.f14873b);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f14872a = isSlideable() ? isOpen() : this.f14864q;
        savedState.f14873b = this.f14868u;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 != i13) {
            this.f14865r = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f14852e) {
            return super.onTouchEvent(motionEvent);
        }
        this.f14863p.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f14859l = x10;
            this.f14860m = y10;
        } else if (actionMasked == 1 && i(this.f14853f)) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            float f11 = x11 - this.f14859l;
            float f12 = y11 - this.f14860m;
            int touchSlop = this.f14863p.getTouchSlop();
            if ((f11 * f11) + (f12 * f12) < touchSlop * touchSlop && this.f14863p.isViewUnder(this.f14853f, (int) x11, (int) y11)) {
                a(0);
            }
        }
        return true;
    }

    public void open() {
        openPane();
    }

    public boolean openPane() {
        return m(0);
    }

    boolean p(float f11, int i11) {
        int paddingLeft;
        if (!this.f14852e) {
            return false;
        }
        boolean zJ = j();
        d dVar = (d) this.f14853f.getLayoutParams();
        if (zJ) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin) + (f11 * this.f14856i)) + this.f14853f.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + (f11 * this.f14856i));
        }
        ViewDragHelper viewDragHelper = this.f14863p;
        View view = this.f14853f;
        if (!viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
            return false;
        }
        o();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    void r(View view) {
        int left;
        int right;
        int top;
        int bottom;
        View childAt;
        View view2 = view;
        boolean zJ = j();
        int width = zJ ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zJ ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !s(view)) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        int childCount = getChildCount();
        int i11 = 0;
        while (i11 < childCount && (childAt = getChildAt(i11)) != view2) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(zJ ? paddingLeft : width, childAt.getLeft()) < left || Math.max(paddingTop, childAt.getTop()) < top || Math.min(zJ ? width : paddingLeft, childAt.getRight()) > right || Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i11++;
            view2 = view;
            zJ = zJ;
        }
    }

    public void removePanelSlideListener(@NonNull e eVar) {
        this.f14861n.remove(eVar);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NonNull View view) {
        if (view.getParent() instanceof f) {
            super.removeView((View) view.getParent());
        } else {
            super.removeView(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f14852e) {
            return;
        }
        this.f14864q = view == this.f14853f;
    }

    @Deprecated
    public void setCoveredFadeColor(int i11) {
        this.f14849b = i11;
    }

    public final void setLockMode(int i11) {
        this.f14868u = i11;
    }

    @Deprecated
    public void setPanelSlideListener(@Nullable e eVar) {
        e eVar2 = this.f14862o;
        if (eVar2 != null) {
            removePanelSlideListener(eVar2);
        }
        if (eVar != null) {
            addPanelSlideListener(eVar);
        }
        this.f14862o = eVar;
    }

    public void setParallaxDistance(int i11) {
        this.f14858k = i11;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f14850c = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f14851d = drawable;
    }

    @Deprecated
    public void setShadowResource(int i11) {
        setShadowDrawableLeft(getResources().getDrawable(i11));
    }

    public void setShadowResourceLeft(int i11) {
        setShadowDrawableLeft(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setShadowResourceRight(int i11) {
        setShadowDrawableRight(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    @Deprecated
    public void setSliderFadeColor(int i11) {
        this.f14848a = i11;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }
}
