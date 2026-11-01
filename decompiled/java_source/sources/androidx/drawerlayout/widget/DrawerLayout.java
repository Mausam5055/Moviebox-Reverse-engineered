package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.drawerlayout.R$attr;
import androidx.drawerlayout.R$dimen;
import androidx.drawerlayout.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    static final boolean N;
    private static final boolean O;
    private static boolean P = false;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private CharSequence A;
    private Object B;
    private boolean C;
    private Drawable D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private final ArrayList H;
    private Rect I;
    private Matrix J;
    private final AccessibilityViewCommand K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f8942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f8943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f8946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f8947f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewDragHelper f8948g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ViewDragHelper f8949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ViewDragCallback f8950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ViewDragCallback f8951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8952k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8953l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f8954m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8955n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f8956o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f8957p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f8958q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f8959r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private e f8960s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List f8961t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f8962u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f8963v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Drawable f8964w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Drawable f8965x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Drawable f8966y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private CharSequence f8967z;
    private static final int[] L = {R.attr.colorPrimaryDark};
    static final int[] M = {R.attr.layout_gravity};

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

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
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }
    }

    private class ViewDragCallback extends ViewDragHelper.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8968a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ViewDragHelper f8969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f8970c = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.b();
            }
        };

        ViewDragCallback(int i11) {
            this.f8968a = i11;
        }

        private void a() {
            View viewH = DrawerLayout.this.h(this.f8968a == 3 ? 5 : 3);
            if (viewH != null) {
                DrawerLayout.this.closeDrawer(viewH);
            }
        }

        void b() {
            View viewH;
            int width;
            int edgeSize = this.f8969b.getEdgeSize();
            boolean z10 = this.f8968a == 3;
            if (z10) {
                viewH = DrawerLayout.this.h(3);
                width = (viewH != null ? -viewH.getWidth() : 0) + edgeSize;
            } else {
                viewH = DrawerLayout.this.h(5);
                width = DrawerLayout.this.getWidth() - edgeSize;
            }
            if (viewH != null) {
                if (((!z10 || viewH.getLeft() >= width) && (z10 || viewH.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(viewH) != 0) {
                    return;
                }
                f fVar = (f) viewH.getLayoutParams();
                this.f8969b.smoothSlideViewTo(viewH, width, viewH.getTop());
                fVar.f8978c = true;
                DrawerLayout.this.invalidate();
                a();
                DrawerLayout.this.a();
            }
        }

        public void c() {
            DrawerLayout.this.removeCallbacks(this.f8970c);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionHorizontal(View view, int i11, int i12) {
            if (DrawerLayout.this.b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i11, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i11, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionVertical(View view, int i11, int i12) {
            return view.getTop();
        }

        public void d(ViewDragHelper viewDragHelper) {
            this.f8969b = viewDragHelper;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.t(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onEdgeDragStarted(int i11, int i12) {
            View viewH = (i11 & 1) == 1 ? DrawerLayout.this.h(3) : DrawerLayout.this.h(5);
            if (viewH == null || DrawerLayout.this.getDrawerLockMode(viewH) != 0) {
                return;
            }
            this.f8969b.captureChildView(viewH, i12);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean onEdgeLock(int i11) {
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onEdgeTouched(int i11, int i12) {
            DrawerLayout.this.postDelayed(this.f8970c, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewCaptured(View view, int i11) {
            ((f) view.getLayoutParams()).f8978c = false;
            a();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewDragStateChanged(int i11) {
            DrawerLayout.this.D(i11, this.f8969b.getCapturedView());
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewPositionChanged(View view, int i11, int i12, int i13, int i14) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.b(view, 3) ? i11 + width : DrawerLayout.this.getWidth() - i11) / width;
            DrawerLayout.this.A(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewReleased(View view, float f11, float f12) {
            int i11;
            float fL = DrawerLayout.this.l(view);
            int width = view.getWidth();
            if (DrawerLayout.this.b(view, 3)) {
                i11 = (f11 > 0.0f || (f11 == 0.0f && fL > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f11 < 0.0f || (f11 == 0.0f && fL > 0.5f)) {
                    width2 -= width;
                }
                i11 = width2;
            }
            this.f8969b.settleCapturedViewAt(i11, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean tryCaptureView(View view, int i11) {
            return DrawerLayout.this.t(view) && DrawerLayout.this.b(view, this.f8968a) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }
    }

    class a implements AccessibilityViewCommand {
        a() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!DrawerLayout.this.isDrawerOpen(view) || DrawerLayout.this.getDrawerLockMode(view) == 2) {
                return false;
            }
            DrawerLayout.this.closeDrawer(view);
            return true;
        }
    }

    class b implements View.OnApplyWindowInsetsListener {
        b() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    class c extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f8974a = new Rect();

        c() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (DrawerLayout.r(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        private void b(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f8974a;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewJ = DrawerLayout.this.j();
            if (viewJ == null) {
                return true;
            }
            CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.k(viewJ));
            if (drawerTitle == null) {
                return true;
            }
            text.add(drawerTitle);
            return true;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.N) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompat.setSource(view);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                b(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatObtain);
                accessibilityNodeInfoCompatObtain.recycle();
                a(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName("androidx.drawerlayout.widget.DrawerLayout");
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.N || DrawerLayout.r(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    static final class d extends AccessibilityDelegateCompat {
        d() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.r(view)) {
                return;
            }
            accessibilityNodeInfoCompat.setParent(null);
        }
    }

    public interface e {
        void a(View view);

        void b(View view);

        void c(int i11);

        void d(View view, float f11);
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f8976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f8977b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f8978c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f8979d;

        public f(int i11, int i12) {
            super(i11, i12);
            this.f8976a = 0;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f8976a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.M);
            this.f8976a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f8976a = 0;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f8976a = 0;
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f8976a = 0;
            this.f8976a = fVar.f8976a;
        }
    }

    public static abstract class g implements e {
        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void a(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void b(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void c(int i11) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void d(View view, float f11) {
        }
    }

    static {
        int i11 = Build.VERSION.SDK_INT;
        N = true;
        O = true;
        P = i11 >= 29;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.drawerLayoutStyle);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f8942a = new d();
        this.f8945d = -1728053248;
        this.f8947f = new Paint();
        this.f8954m = true;
        this.f8955n = 3;
        this.f8956o = 3;
        this.f8957p = 3;
        this.f8958q = 3;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.K = new a();
        setDescendantFocusability(262144);
        float f11 = getResources().getDisplayMetrics().density;
        this.f8944c = (int) ((64.0f * f11) + 0.5f);
        float f12 = f11 * 400.0f;
        ViewDragCallback viewDragCallback = new ViewDragCallback(3);
        this.f8950i = viewDragCallback;
        ViewDragCallback viewDragCallback2 = new ViewDragCallback(5);
        this.f8951j = viewDragCallback2;
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 1.0f, viewDragCallback);
        this.f8948g = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(1);
        viewDragHelperCreate.setMinVelocity(f12);
        viewDragCallback.d(viewDragHelperCreate);
        ViewDragHelper viewDragHelperCreate2 = ViewDragHelper.create(this, 1.0f, viewDragCallback2);
        this.f8949h = viewDragHelperCreate2;
        viewDragHelperCreate2.setEdgeTrackingEnabled(2);
        viewDragHelperCreate2.setMinVelocity(f12);
        viewDragCallback2.d(viewDragHelperCreate2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new c());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new b());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L);
            try {
                this.f8964w = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.DrawerLayout, i11, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(R$styleable.DrawerLayout_elevation)) {
                this.f8943b = typedArrayObtainStyledAttributes2.getDimension(R$styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.f8943b = getResources().getDimension(R$dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.H = new ArrayList();
        } catch (Throwable th3) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th3;
        }
    }

    private void B(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, this.K);
    }

    private void C(View view, boolean z10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((z10 || t(childAt)) && !(z10 && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    private boolean g(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent motionEventM = m(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventM);
            motionEventM.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    private MotionEvent m(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.J == null) {
                this.J = new Matrix();
            }
            matrix.invert(this.J);
            motionEventObtain.transform(this.J);
        }
        return motionEventObtain;
    }

    static String n(int i11) {
        if ((i11 & 3) == 3) {
            return "LEFT";
        }
        return (i11 & 5) == 5 ? "RIGHT" : Integer.toHexString(i11);
    }

    private static boolean o(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    private boolean p() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (((f) getChildAt(i11).getLayoutParams()).f8978c) {
                return true;
            }
        }
        return false;
    }

    private boolean q() {
        return j() != null;
    }

    static boolean r(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    private boolean u(float f11, float f12, View view) {
        if (this.I == null) {
            this.I = new Rect();
        }
        view.getHitRect(this.I);
        return this.I.contains((int) f11, (int) f12);
    }

    private void v(Drawable drawable, int i11) {
        if (drawable == null || !a1.a.h(drawable)) {
            return;
        }
        a1.a.m(drawable, i11);
    }

    private Drawable x() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.D;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.D;
            }
        } else {
            Drawable drawable2 = this.E;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.E;
            }
        }
        return this.F;
    }

    private Drawable y() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.E;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.E;
            }
        } else {
            Drawable drawable2 = this.D;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.D;
            }
        }
        return this.G;
    }

    private void z() {
        if (O) {
            return;
        }
        this.f8965x = x();
        this.f8966y = y();
    }

    void A(View view, float f11) {
        f fVar = (f) view.getLayoutParams();
        if (f11 == fVar.f8977b) {
            return;
        }
        fVar.f8977b = f11;
        f(view, f11);
    }

    void D(int i11, View view) {
        int i12;
        int viewDragState = this.f8948g.getViewDragState();
        int viewDragState2 = this.f8949h.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i12 = 1;
        } else {
            i12 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i12 = 0;
            }
        }
        if (view != null && i11 == 0) {
            float f11 = ((f) view.getLayoutParams()).f8977b;
            if (f11 == 0.0f) {
                d(view);
            } else if (f11 == 1.0f) {
                e(view);
            }
        }
        if (i12 != this.f8952k) {
            this.f8952k = i12;
            List list = this.f8961t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8961t.get(size)).c(i12);
                }
            }
        }
    }

    void a() {
        if (this.f8959r) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            getChildAt(i11).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.f8959r = true;
    }

    public void addDrawerListener(@NonNull e eVar) {
        if (eVar == null) {
            return;
        }
        if (this.f8961t == null) {
            this.f8961t = new ArrayList();
        }
        this.f8961t.add(eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i11, int i12) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (!t(childAt)) {
                this.H.add(childAt);
            } else if (isDrawerOpen(childAt)) {
                childAt.addFocusables(arrayList, i11, i12);
                z10 = true;
            }
        }
        if (!z10) {
            int size = this.H.size();
            for (int i14 = 0; i14 < size; i14++) {
                View view = (View) this.H.get(i14);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i11, i12);
                }
            }
        }
        this.H.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i11, layoutParams);
        if (i() != null || t(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (N) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.f8942a);
    }

    boolean b(View view, int i11) {
        return (k(view) & i11) == i11;
    }

    void c(boolean z10) {
        int childCount = getChildCount();
        boolean zSmoothSlideViewTo = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            if (t(childAt) && (!z10 || fVar.f8978c)) {
                zSmoothSlideViewTo |= b(childAt, 3) ? this.f8948g.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : this.f8949h.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                fVar.f8978c = false;
            }
        }
        this.f8950i.c();
        this.f8951j.c();
        if (zSmoothSlideViewTo) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void close() {
        closeDrawer(GravityCompat.START);
    }

    public void closeDrawer(int i11) {
        closeDrawer(i11, true);
    }

    public void closeDrawer(int i11, boolean z10) {
        View viewH = h(i11);
        if (viewH != null) {
            closeDrawer(viewH, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i11));
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawer(@NonNull View view, boolean z10) {
        if (!t(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f8954m) {
            fVar.f8977b = 0.0f;
            fVar.f8979d = 0;
        } else if (z10) {
            fVar.f8979d |= 4;
            if (b(view, 3)) {
                this.f8948g.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.f8949h.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
        } else {
            w(view, 0.0f);
            D(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void closeDrawers() {
        c(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            fMax = Math.max(fMax, ((f) getChildAt(i11).getLayoutParams()).f8977b);
        }
        this.f8946e = fMax;
        boolean zContinueSettling = this.f8948g.continueSettling(true);
        boolean zContinueSettling2 = this.f8949h.continueSettling(true);
        if (zContinueSettling || zContinueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void d(View view) {
        View rootView;
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f8979d & 1) == 1) {
            fVar.f8979d = 0;
            List list = this.f8961t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8961t.get(size)).b(view);
                }
            }
            C(view, false);
            B(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f8946e <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            View childAt = getChildAt(i11);
            if (u(x10, y10, childAt) && !s(childAt) && g(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j11) {
        int height = getHeight();
        boolean zS = s(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i11 = 0;
        if (zS) {
            int childCount = getChildCount();
            int i12 = 0;
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (childAt != view && childAt.getVisibility() == 0 && o(childAt) && t(childAt) && childAt.getHeight() >= height) {
                    if (b(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i12) {
                            i12 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i12, 0, width, getHeight());
            i11 = i12;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j11);
        canvas.restoreToCount(iSave);
        float f11 = this.f8946e;
        if (f11 > 0.0f && zS) {
            int i14 = this.f8945d;
            this.f8947f.setColor((i14 & 16777215) | (((int) ((((-16777216) & i14) >>> 24) * f11)) << 24));
            canvas.drawRect(i11, 0.0f, width, getHeight(), this.f8947f);
        } else if (this.f8965x != null && b(view, 3)) {
            int intrinsicWidth = this.f8965x.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.f8948g.getEdgeSize(), 1.0f));
            this.f8965x.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f8965x.setAlpha((int) (fMax * 255.0f));
            this.f8965x.draw(canvas);
        } else if (this.f8966y != null && b(view, 5)) {
            int intrinsicWidth2 = this.f8966y.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f8949h.getEdgeSize(), 1.0f));
            this.f8966y.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f8966y.setAlpha((int) (fMax2 * 255.0f));
            this.f8966y.draw(canvas);
        }
        return zDrawChild;
    }

    void e(View view) {
        f fVar = (f) view.getLayoutParams();
        if ((fVar.f8979d & 1) == 0) {
            fVar.f8979d = 1;
            List list = this.f8961t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((e) this.f8961t.get(size)).a(view);
                }
            }
            C(view, true);
            B(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void f(View view, float f11) {
        List list = this.f8961t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((e) this.f8961t.get(size)).d(view, f11);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    public float getDrawerElevation() {
        if (O) {
            return this.f8943b;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i11) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i11 == 3) {
            int i12 = this.f8955n;
            if (i12 != 3) {
                return i12;
            }
            int i13 = layoutDirection == 0 ? this.f8957p : this.f8958q;
            if (i13 != 3) {
                return i13;
            }
            return 0;
        }
        if (i11 == 5) {
            int i14 = this.f8956o;
            if (i14 != 3) {
                return i14;
            }
            int i15 = layoutDirection == 0 ? this.f8958q : this.f8957p;
            if (i15 != 3) {
                return i15;
            }
            return 0;
        }
        if (i11 == 8388611) {
            int i16 = this.f8957p;
            if (i16 != 3) {
                return i16;
            }
            int i17 = layoutDirection == 0 ? this.f8955n : this.f8956o;
            if (i17 != 3) {
                return i17;
            }
            return 0;
        }
        if (i11 != 8388613) {
            return 0;
        }
        int i18 = this.f8958q;
        if (i18 != 3) {
            return i18;
        }
        int i19 = layoutDirection == 0 ? this.f8956o : this.f8955n;
        if (i19 != 3) {
            return i19;
        }
        return 0;
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (t(view)) {
            return getDrawerLockMode(((f) view.getLayoutParams()).f8976a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Nullable
    public CharSequence getDrawerTitle(int i11) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.f8967z;
        }
        if (absoluteGravity == 5) {
            return this.A;
        }
        return null;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.f8964w;
    }

    View h(int i11) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if ((k(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    View i() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((((f) childAt.getLayoutParams()).f8979d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public boolean isDrawerOpen(int i11) {
        View viewH = h(i11);
        if (viewH != null) {
            return isDrawerOpen(viewH);
        }
        return false;
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (t(view)) {
            return (((f) view.getLayoutParams()).f8979d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(int i11) {
        View viewH = h(i11);
        if (viewH != null) {
            return isDrawerVisible(viewH);
        }
        return false;
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (t(view)) {
            return ((f) view.getLayoutParams()).f8977b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    View j() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (t(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    int k(View view) {
        return GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f8976a, ViewCompat.getLayoutDirection(this));
    }

    float l(View view) {
        return ((f) view.getLayoutParams()).f8977b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f8954m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f8954m = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.C || this.f8964w == null) {
            return;
        }
        Object obj = this.B;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f8964w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f8964w.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View viewFindTopChildUnder;
        int actionMasked = motionEvent.getActionMasked();
        boolean zShouldInterceptTouchEvent = this.f8948g.shouldInterceptTouchEvent(motionEvent) | this.f8949h.shouldInterceptTouchEvent(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                c(true);
                this.f8959r = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    c(true);
                    this.f8959r = false;
                }
            } else if (this.f8948g.checkTouchSlop(3)) {
                this.f8950i.c();
                this.f8951j.c();
            }
            z10 = false;
        } else {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f8962u = x10;
            this.f8963v = y10;
            z10 = this.f8946e > 0.0f && (viewFindTopChildUnder = this.f8948g.findTopChildUnder((int) x10, (int) y10)) != null && s(viewFindTopChildUnder);
            this.f8959r = false;
        }
        return zShouldInterceptTouchEvent || z10 || p() || this.f8959r;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        if (i11 != 4 || !q()) {
            return super.onKeyDown(i11, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i11, KeyEvent keyEvent) {
        if (i11 != 4) {
            return super.onKeyUp(i11, keyEvent);
        }
        View viewJ = j();
        if (viewJ != null && getDrawerLockMode(viewJ) == 0) {
            closeDrawers();
        }
        return viewJ != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        WindowInsets rootWindowInsets;
        float f11;
        int i15;
        boolean z11 = true;
        this.f8953l = true;
        int i16 = i13 - i11;
        int childCount = getChildCount();
        int i17 = 0;
        while (i17 < childCount) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (s(childAt)) {
                    int i18 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin;
                    childAt.layout(i18, ((ViewGroup.MarginLayoutParams) fVar).topMargin, childAt.getMeasuredWidth() + i18, ((ViewGroup.MarginLayoutParams) fVar).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b(childAt, 3)) {
                        float f12 = measuredWidth;
                        i15 = (-measuredWidth) + ((int) (fVar.f8977b * f12));
                        f11 = (measuredWidth + i15) / f12;
                    } else {
                        float f13 = measuredWidth;
                        int i19 = i16 - ((int) (fVar.f8977b * f13));
                        f11 = (i16 - i19) / f13;
                        i15 = i19;
                    }
                    boolean z12 = f11 != fVar.f8977b ? z11 : false;
                    int i20 = fVar.f8976a & 112;
                    if (i20 == 16) {
                        int i21 = i14 - i12;
                        int i22 = (i21 - measuredHeight) / 2;
                        int i23 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        if (i22 < i23) {
                            i22 = i23;
                        } else {
                            int i24 = i22 + measuredHeight;
                            int i25 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                            if (i24 > i21 - i25) {
                                i22 = (i21 - i25) - measuredHeight;
                            }
                        }
                        childAt.layout(i15, i22, measuredWidth + i15, measuredHeight + i22);
                    } else if (i20 != 80) {
                        int i26 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                        childAt.layout(i15, i26, measuredWidth + i15, measuredHeight + i26);
                    } else {
                        int i27 = i14 - i12;
                        childAt.layout(i15, (i27 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i15, i27 - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    }
                    if (z12) {
                        A(childAt, f11);
                    }
                    int i28 = fVar.f8977b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i28) {
                        childAt.setVisibility(i28);
                    }
                }
            }
            i17++;
            z11 = true;
        }
        if (P && (rootWindowInsets = getRootWindowInsets()) != null) {
            z0.c systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.f8948g;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.f79125a));
            ViewDragHelper viewDragHelper2 = this.f8949h;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.f79127c));
        }
        this.f8953l = false;
        this.f8954m = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z10 = this.B != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z11 = false;
        boolean z12 = false;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (z10) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f8976a, layoutDirection);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) fVar).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (s(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, 1073741824));
                } else {
                    if (!t(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i13 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (O) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f11 = this.f8943b;
                        if (elevation != f11) {
                            ViewCompat.setElevation(childAt, f11);
                        }
                    }
                    int iK = k(childAt) & 7;
                    boolean z13 = iK == 3;
                    if ((z13 && z11) || (!z13 && z12)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + n(iK) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z13) {
                        z11 = true;
                    } else {
                        z12 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i11, this.f8944c + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((ViewGroup.MarginLayoutParams) fVar).width), ViewGroup.getChildMeasureSpec(i12, ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin, ((ViewGroup.MarginLayoutParams) fVar).height));
                }
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewH;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i11 = savedState.openDrawerGravity;
        if (i11 != 0 && (viewH = h(i11)) != null) {
            openDrawer(viewH);
        }
        int i12 = savedState.lockModeLeft;
        if (i12 != 3) {
            setDrawerLockMode(i12, 3);
        }
        int i13 = savedState.lockModeRight;
        if (i13 != 3) {
            setDrawerLockMode(i13, 5);
        }
        int i14 = savedState.lockModeStart;
        if (i14 != 3) {
            setDrawerLockMode(i14, GravityCompat.START);
        }
        int i15 = savedState.lockModeEnd;
        if (i15 != 3) {
            setDrawerLockMode(i15, GravityCompat.END);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i11) {
        z();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            f fVar = (f) getChildAt(i11).getLayoutParams();
            int i12 = fVar.f8979d;
            boolean z10 = i12 == 1;
            boolean z11 = i12 == 2;
            if (z10 || z11) {
                savedState.openDrawerGravity = fVar.f8976a;
                break;
            }
        }
        savedState.lockModeLeft = this.f8955n;
        savedState.lockModeRight = this.f8956o;
        savedState.lockModeStart = this.f8957p;
        savedState.lockModeEnd = this.f8958q;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View viewI;
        this.f8948g.processTouchEvent(motionEvent);
        this.f8949h.processTouchEvent(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.f8962u = x10;
            this.f8963v = y10;
            this.f8959r = false;
        } else if (action == 1) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            View viewFindTopChildUnder = this.f8948g.findTopChildUnder((int) x11, (int) y11);
            if (viewFindTopChildUnder != null && s(viewFindTopChildUnder)) {
                float f11 = x11 - this.f8962u;
                float f12 = y11 - this.f8963v;
                int touchSlop = this.f8948g.getTouchSlop();
                z10 = (f11 * f11) + (f12 * f12) >= ((float) (touchSlop * touchSlop)) || (viewI = i()) == null || getDrawerLockMode(viewI) == 2;
            }
            c(z10);
        } else if (action == 3) {
            c(true);
            this.f8959r = false;
        }
        return true;
    }

    public void open() {
        openDrawer(GravityCompat.START);
    }

    public void openDrawer(int i11) {
        openDrawer(i11, true);
    }

    public void openDrawer(int i11, boolean z10) {
        View viewH = h(i11);
        if (viewH != null) {
            openDrawer(viewH, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i11));
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void openDrawer(@NonNull View view, boolean z10) {
        if (!t(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        f fVar = (f) view.getLayoutParams();
        if (this.f8954m) {
            fVar.f8977b = 1.0f;
            fVar.f8979d = 1;
            C(view, true);
            B(view);
        } else if (z10) {
            fVar.f8979d |= 2;
            if (b(view, 3)) {
                this.f8948g.smoothSlideViewTo(view, 0, view.getTop());
            } else {
                this.f8949h.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            w(view, 1.0f);
            D(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void removeDrawerListener(@NonNull e eVar) {
        List list;
        if (eVar == null || (list = this.f8961t) == null) {
            return;
        }
        list.remove(eVar);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (z10) {
            c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f8953l) {
            return;
        }
        super.requestLayout();
    }

    boolean s(View view) {
        return ((f) view.getLayoutParams()).f8976a == 0;
    }

    public void setChildInsets(Object obj, boolean z10) {
        this.B = obj;
        this.C = z10;
        setWillNotDraw(!z10 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f11) {
        this.f8943b = f11;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (t(childAt)) {
                ViewCompat.setElevation(childAt, this.f8943b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(e eVar) {
        e eVar2 = this.f8960s;
        if (eVar2 != null) {
            removeDrawerListener(eVar2);
        }
        if (eVar != null) {
            addDrawerListener(eVar);
        }
        this.f8960s = eVar;
    }

    public void setDrawerLockMode(int i11) {
        setDrawerLockMode(i11, 3);
        setDrawerLockMode(i11, 5);
    }

    public void setDrawerLockMode(int i11, int i12) {
        View viewH;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i12, ViewCompat.getLayoutDirection(this));
        if (i12 == 3) {
            this.f8955n = i11;
        } else if (i12 == 5) {
            this.f8956o = i11;
        } else if (i12 == 8388611) {
            this.f8957p = i11;
        } else if (i12 == 8388613) {
            this.f8958q = i11;
        }
        if (i11 != 0) {
            (absoluteGravity == 3 ? this.f8948g : this.f8949h).cancel();
        }
        if (i11 != 1) {
            if (i11 == 2 && (viewH = h(absoluteGravity)) != null) {
                openDrawer(viewH);
                return;
            }
            return;
        }
        View viewH2 = h(absoluteGravity);
        if (viewH2 != null) {
            closeDrawer(viewH2);
        }
    }

    public void setDrawerLockMode(int i11, @NonNull View view) {
        if (t(view)) {
            setDrawerLockMode(i11, ((f) view.getLayoutParams()).f8976a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i11, int i12) {
        setDrawerShadow(androidx.core.content.b.getDrawable(getContext(), i11), i12);
    }

    public void setDrawerShadow(Drawable drawable, int i11) {
        if (O) {
            return;
        }
        if ((i11 & GravityCompat.START) == 8388611) {
            this.D = drawable;
        } else if ((i11 & GravityCompat.END) == 8388613) {
            this.E = drawable;
        } else if ((i11 & 3) == 3) {
            this.F = drawable;
        } else if ((i11 & 5) != 5) {
            return;
        } else {
            this.G = drawable;
        }
        z();
        invalidate();
    }

    public void setDrawerTitle(int i11, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.f8967z = charSequence;
        } else if (absoluteGravity == 5) {
            this.A = charSequence;
        }
    }

    public void setScrimColor(int i11) {
        this.f8945d = i11;
        invalidate();
    }

    public void setStatusBarBackground(int i11) {
        this.f8964w = i11 != 0 ? androidx.core.content.b.getDrawable(getContext(), i11) : null;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.f8964w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i11) {
        this.f8964w = new ColorDrawable(i11);
        invalidate();
    }

    boolean t(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f8976a, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    void w(View view, float f11) {
        float fL = l(view);
        float width = view.getWidth();
        int i11 = ((int) (width * f11)) - ((int) (fL * width));
        if (!b(view, 3)) {
            i11 = -i11;
        }
        view.offsetLeftAndRight(i11);
        A(view, f11);
    }
}
