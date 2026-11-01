package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.R$attr;
import androidx.coordinatorlayout.R$style;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.util.h;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.card.MaterialCardView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final String f7880u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final Class[] f7881v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final ThreadLocal f7882w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final Comparator f7883x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final androidx.core.util.f f7884y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f7885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.coordinatorlayout.widget.b f7886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f7887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f7888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f7889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f7890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f7891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f7892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f7893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f7894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f7895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f7896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private g f7897m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f7898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private WindowInsetsCompat f7899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f7901q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ViewGroup.OnHierarchyChangeListener f7902r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private OnApplyWindowInsetsListener f7903s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final NestedScrollingParentHelper f7904t;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        SparseArray<Parcelable> behaviorStates;

        static class a implements Parcelable.ClassLoaderCreator {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i11 = parcel.readInt();
            int[] iArr = new int[i11];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                this.behaviorStates.append(iArr[i12], parcelableArray[i12]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i12 = 0; i12 < size; i12++) {
                iArr[i12] = this.behaviorStates.keyAt(i12);
                parcelableArr[i12] = this.behaviorStates.valueAt(i12);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i11);
        }
    }

    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            float z10 = ViewCompat.getZ(view);
            float z11 = ViewCompat.getZ(view2);
            if (z10 > z11) {
                return -1;
            }
            return z10 < z11 ? 1 : 0;
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CoordinatorLayout.this.J(windowInsetsCompat);
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c {
        public c() {
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11, int i12) {
            if (i12 == 0) {
                return z(coordinatorLayout, view, view2, view3, i11);
            }
            return false;
        }

        public void B(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public void C(CoordinatorLayout coordinatorLayout, View view, View view2, int i11) {
            if (i11 == 0) {
                B(coordinatorLayout, view, view2);
            }
        }

        public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view) {
            return d(coordinatorLayout, view) > 0.0f;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return false;
        }

        public int c(CoordinatorLayout coordinatorLayout, View view) {
            return ViewCompat.MEASURED_STATE_MASK;
        }

        public float d(CoordinatorLayout coordinatorLayout, View view) {
            return 0.0f;
        }

        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public WindowInsetsCompat f(CoordinatorLayout coordinatorLayout, View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void g(f fVar) {
        }

        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
        }

        public void j() {
        }

        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
            return false;
        }

        public boolean m(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13, int i14) {
            return false;
        }

        public boolean n(CoordinatorLayout coordinatorLayout, View view, View view2, float f11, float f12, boolean z10) {
            return false;
        }

        public boolean o(CoordinatorLayout coordinatorLayout, View view, View view2, float f11, float f12) {
            return false;
        }

        public void p(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int[] iArr) {
        }

        public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int[] iArr, int i13) {
            if (i13 == 0) {
                p(coordinatorLayout, view, view2, i11, i12, iArr);
            }
        }

        public void r(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int i13, int i14) {
        }

        public void s(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int i13, int i14, int i15) {
            if (i15 == 0) {
                r(coordinatorLayout, view, view2, i11, i12, i13, i14);
            }
        }

        public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
            iArr[0] = iArr[0] + i13;
            iArr[1] = iArr[1] + i14;
            s(coordinatorLayout, view, view2, i11, i12, i13, i14, i15);
        }

        public void u(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11) {
        }

        public void v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11, int i12) {
            if (i12 == 0) {
                u(coordinatorLayout, view, view2, view3, i11);
            }
        }

        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            return false;
        }

        public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        }

        public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean z(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
        Class value();
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {
        e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f7902r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.w(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f7902r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f7907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f7908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f7909c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f7910d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f7911e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f7912f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f7913g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f7914h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f7915i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f7916j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        View f7917k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        View f7918l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f7919m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f7920n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f7921o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f7922p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final Rect f7923q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f7924r;

        public f(int i11, int i12) {
            super(i11, i12);
            this.f7908b = false;
            this.f7909c = 0;
            this.f7910d = 0;
            this.f7911e = -1;
            this.f7912f = -1;
            this.f7913g = 0;
            this.f7914h = 0;
            this.f7923q = new Rect();
        }

        f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7908b = false;
            this.f7909c = 0;
            this.f7910d = 0;
            this.f7911e = -1;
            this.f7912f = -1;
            this.f7913g = 0;
            this.f7914h = 0;
            this.f7923q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
            this.f7909c = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f7912f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f7910d = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f7911e = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f7913g = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f7914h = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
            this.f7908b = zHasValue;
            if (zHasValue) {
                this.f7907a = CoordinatorLayout.x(context, attributeSet, typedArrayObtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            c cVar = this.f7907a;
            if (cVar != null) {
                cVar.g(this);
            }
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7908b = false;
            this.f7909c = 0;
            this.f7910d = 0;
            this.f7911e = -1;
            this.f7912f = -1;
            this.f7913g = 0;
            this.f7914h = 0;
            this.f7923q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7908b = false;
            this.f7909c = 0;
            this.f7910d = 0;
            this.f7911e = -1;
            this.f7912f = -1;
            this.f7913g = 0;
            this.f7914h = 0;
            this.f7923q = new Rect();
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f7908b = false;
            this.f7909c = 0;
            this.f7910d = 0;
            this.f7911e = -1;
            this.f7912f = -1;
            this.f7913g = 0;
            this.f7914h = 0;
            this.f7923q = new Rect();
        }

        private void n(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.f7912f);
            this.f7917k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f7918l = null;
                    this.f7917k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f7912f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f7918l = null;
                this.f7917k = null;
                return;
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f7918l = null;
                    this.f7917k = null;
                    return;
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.f7918l = viewFindViewById;
        }

        private boolean s(View view, int i11) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((f) view.getLayoutParams()).f7913g, i11);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.f7914h, i11) & absoluteGravity) == absoluteGravity;
        }

        private boolean t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f7917k.getId() != this.f7912f) {
                return false;
            }
            View view2 = this.f7917k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f7918l = null;
                    this.f7917k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f7918l = view2;
            return true;
        }

        boolean a() {
            return this.f7917k == null && this.f7912f != -1;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            c cVar;
            return view2 == this.f7918l || s(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || ((cVar = this.f7907a) != null && cVar.e(coordinatorLayout, view, view2));
        }

        boolean c() {
            if (this.f7907a == null) {
                this.f7919m = false;
            }
            return this.f7919m;
        }

        View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f7912f == -1) {
                this.f7918l = null;
                this.f7917k = null;
                return null;
            }
            if (this.f7917k == null || !t(view, coordinatorLayout)) {
                n(view, coordinatorLayout);
            }
            return this.f7917k;
        }

        public int e() {
            return this.f7912f;
        }

        public c f() {
            return this.f7907a;
        }

        boolean g() {
            return this.f7922p;
        }

        Rect h() {
            return this.f7923q;
        }

        boolean i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z10 = this.f7919m;
            if (z10) {
                return true;
            }
            c cVar = this.f7907a;
            boolean zA = (cVar != null ? cVar.a(coordinatorLayout, view) : false) | z10;
            this.f7919m = zA;
            return zA;
        }

        boolean j(int i11) {
            if (i11 == 0) {
                return this.f7920n;
            }
            if (i11 != 1) {
                return false;
            }
            return this.f7921o;
        }

        void k() {
            this.f7922p = false;
        }

        void l(int i11) {
            r(i11, false);
        }

        void m() {
            this.f7919m = false;
        }

        public void o(c cVar) {
            c cVar2 = this.f7907a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.j();
                }
                this.f7907a = cVar;
                this.f7924r = null;
                this.f7908b = true;
                if (cVar != null) {
                    cVar.g(this);
                }
            }
        }

        void p(boolean z10) {
            this.f7922p = z10;
        }

        void q(Rect rect) {
            this.f7923q.set(rect);
        }

        void r(int i11, boolean z10) {
            if (i11 == 0) {
                this.f7920n = z10;
            } else {
                if (i11 != 1) {
                    return;
                }
                this.f7921o = z10;
            }
        }
    }

    class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.w(0);
            return true;
        }
    }

    static {
        Package r11 = CoordinatorLayout.class.getPackage();
        f7880u = r11 != null ? r11.getName() : null;
        f7883x = new ViewElevationComparator();
        f7881v = new Class[]{Context.class, AttributeSet.class};
        f7882w = new ThreadLocal();
        f7884y = new h(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7885a = new ArrayList();
        this.f7886b = new androidx.coordinatorlayout.widget.b();
        this.f7887c = new ArrayList();
        this.f7888d = new ArrayList();
        this.f7890f = new int[2];
        this.f7891g = new int[2];
        this.f7904t = new NestedScrollingParentHelper(this);
        TypedArray typedArrayObtainStyledAttributes = i11 == 0 ? context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i11, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i11 == 0) {
                saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, R$style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, R$styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i11, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f7894j = resources.getIntArray(resourceId);
            float f11 = resources.getDisplayMetrics().density;
            int length = this.f7894j.length;
            for (int i12 = 0; i12 < length; i12++) {
                int[] iArr = this.f7894j;
                iArr[i12] = (int) (iArr[i12] * f11);
            }
        }
        this.f7901q = typedArrayObtainStyledAttributes.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        K();
        super.setOnHierarchyChangeListener(new e());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    private static void B(Rect rect) {
        rect.setEmpty();
        f7884y.release(rect);
    }

    private void D(boolean z10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (cVarF != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z10) {
                    cVarF.k(this, childAt, motionEventObtain);
                } else {
                    cVarF.D(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            ((f) getChildAt(i12).getLayoutParams()).m();
        }
        this.f7895k = null;
        this.f7892h = false;
    }

    private static int E(int i11) {
        if (i11 == 0) {
            return 17;
        }
        return i11;
    }

    private static int F(int i11) {
        if ((i11 & 7) == 0) {
            i11 |= GravityCompat.START;
        }
        return (i11 & 112) == 0 ? i11 | 48 : i11;
    }

    private static int G(int i11) {
        return i11 == 0 ? MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END : i11;
    }

    private void H(View view, int i11) {
        f fVar = (f) view.getLayoutParams();
        int i12 = fVar.f7915i;
        if (i12 != i11) {
            ViewCompat.offsetLeftAndRight(view, i11 - i12);
            fVar.f7915i = i11;
        }
    }

    private void I(View view, int i11) {
        f fVar = (f) view.getLayoutParams();
        int i12 = fVar.f7916j;
        if (i12 != i11) {
            ViewCompat.offsetTopAndBottom(view, i11 - i12);
            fVar.f7916j = i11;
        }
    }

    private void K() {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.f7903s == null) {
            this.f7903s = new a();
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, this.f7903s);
        setSystemUiVisibility(1280);
    }

    private static Rect a() {
        Rect rect = (Rect) f7884y.acquire();
        return rect == null ? new Rect() : rect;
    }

    private static int c(int i11, int i12, int i13) {
        if (i11 < i12) {
            return i12;
        }
        return i11 > i13 ? i13 : i11;
    }

    private void d(f fVar, Rect rect, int i11, int i12) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i11) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i12) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i11 + iMax, i12 + iMax2);
    }

    private WindowInsetsCompat e(WindowInsetsCompat windowInsetsCompat) {
        c cVarF;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (ViewCompat.getFitsSystemWindows(childAt) && (cVarF = ((f) childAt.getLayoutParams()).f()) != null) {
                windowInsetsCompat = cVarF.f(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    private void l(View view, int i11, Rect rect, Rect rect2, f fVar, int i12, int i13) {
        int iWidth;
        int iHeight;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(E(fVar.f7909c), i11);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(F(fVar.f7910d), i11);
        int i14 = absoluteGravity & 7;
        int i15 = absoluteGravity & 112;
        int i16 = absoluteGravity2 & 7;
        int i17 = absoluteGravity2 & 112;
        if (i16 != 1) {
            iWidth = i16 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i17 != 16) {
            iHeight = i17 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i14 == 1) {
            iWidth -= i12 / 2;
        } else if (i14 != 5) {
            iWidth -= i12;
        }
        if (i15 == 16) {
            iHeight -= i13 / 2;
        } else if (i15 != 80) {
            iHeight -= i13;
        }
        rect2.set(iWidth, iHeight, i12 + iWidth, i13 + iHeight);
    }

    private int m(int i11) {
        int[] iArr = this.f7894j;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i11);
            return 0;
        }
        if (i11 >= 0 && i11 < iArr.length) {
            return iArr[i11];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i11 + " out of range for " + this);
        return 0;
    }

    private void p(List list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i11) : i11));
        }
        Comparator comparator = f7883x;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean q(View view) {
        return this.f7886b.j(view);
    }

    private void r(View view, int i11) {
        f fVar = (f) view.getLayoutParams();
        Rect rectA = a();
        rectA.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        if (this.f7899o != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            rectA.left += this.f7899o.getSystemWindowInsetLeft();
            rectA.top += this.f7899o.getSystemWindowInsetTop();
            rectA.right -= this.f7899o.getSystemWindowInsetRight();
            rectA.bottom -= this.f7899o.getSystemWindowInsetBottom();
        }
        Rect rectA2 = a();
        GravityCompat.apply(F(fVar.f7909c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectA, rectA2, i11);
        view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
        B(rectA);
        B(rectA2);
    }

    private void s(View view, View view2, int i11) {
        Rect rectA = a();
        Rect rectA2 = a();
        try {
            j(view2, rectA);
            k(view, i11, rectA, rectA2);
            view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
        } finally {
            B(rectA);
            B(rectA2);
        }
    }

    private void t(View view, int i11, int i12) {
        int i13;
        f fVar = (f) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(G(fVar.f7909c), i12);
        int i14 = absoluteGravity & 7;
        int i15 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i12 == 1) {
            i11 = width - i11;
        }
        int iM = m(i11) - measuredWidth;
        if (i14 == 1) {
            iM += measuredWidth / 2;
        } else if (i14 == 5) {
            iM += measuredWidth;
        }
        if (i15 != 16) {
            i13 = i15 != 80 ? 0 : measuredHeight;
        } else {
            i13 = measuredHeight / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(i13, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void u(View view, Rect rect, int i11) {
        boolean z10;
        boolean z11;
        int width;
        int i12;
        int i13;
        int i14;
        int height;
        int i15;
        int i16;
        int i17;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            Rect rectA = a();
            Rect rectA2 = a();
            rectA2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (cVarF == null || !cVarF.b(this, view, rectA)) {
                rectA.set(rectA2);
            } else if (!rectA2.contains(rectA)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectA.toShortString() + " | Bounds:" + rectA2.toShortString());
            }
            B(rectA2);
            if (rectA.isEmpty()) {
                B(rectA);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f7914h, i11);
            boolean z12 = true;
            if ((absoluteGravity & 48) != 48 || (i16 = (rectA.top - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - fVar.f7916j) >= (i17 = rect.top)) {
                z10 = false;
            } else {
                I(view, i17 - i16);
                z10 = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - rectA.bottom) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) + fVar.f7916j) < (i15 = rect.bottom)) {
                I(view, height - i15);
                z10 = true;
            }
            if (!z10) {
                I(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i13 = (rectA.left - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - fVar.f7915i) >= (i14 = rect.left)) {
                z11 = false;
            } else {
                H(view, i14 - i13);
                z11 = true;
            }
            if ((absoluteGravity & 5) != 5 || (width = ((getWidth() - rectA.right) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) + fVar.f7915i) >= (i12 = rect.right)) {
                z12 = z11;
            } else {
                H(view, width - i12);
            }
            if (!z12) {
                H(view, 0);
            }
            B(rectA);
        }
    }

    static c x(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = f7880u;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal threadLocal = f7882w;
            Map map = (Map) threadLocal.get();
            if (map == null) {
                map = new HashMap();
                threadLocal.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f7881v);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (c) constructor.newInstance(context, attributeSet);
        } catch (Exception e11) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e11);
        }
    }

    private boolean y(MotionEvent motionEvent, int i11) {
        int actionMasked = motionEvent.getActionMasked();
        List list = this.f7887c;
        p(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zK = false;
        boolean z10 = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) list.get(i12);
            f fVar = (f) view.getLayoutParams();
            c cVarF = fVar.f();
            if (!(zK || z10) || actionMasked == 0) {
                if (!zK && cVarF != null) {
                    if (i11 == 0) {
                        zK = cVarF.k(this, view, motionEvent);
                    } else if (i11 == 1) {
                        zK = cVarF.D(this, view, motionEvent);
                    }
                    if (zK) {
                        this.f7895k = view;
                    }
                }
                boolean zC = fVar.c();
                boolean zI = fVar.i(this, view);
                z10 = zI && !zC;
                if (zI && !z10) {
                    break;
                }
            } else if (cVarF != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i11 == 0) {
                    cVarF.k(this, view, motionEventObtain);
                } else if (i11 == 1) {
                    cVarF.D(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zK;
    }

    private void z() {
        this.f7885a.clear();
        this.f7886b.c();
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVarO = o(childAt);
            fVarO.d(this, childAt);
            this.f7886b.b(childAt);
            for (int i12 = 0; i12 < childCount; i12++) {
                if (i12 != i11) {
                    View childAt2 = getChildAt(i12);
                    if (fVarO.b(this, childAt, childAt2)) {
                        if (!this.f7886b.d(childAt2)) {
                            this.f7886b.b(childAt2);
                        }
                        this.f7886b.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f7885a.addAll(this.f7886b.i());
        Collections.reverse(this.f7885a);
    }

    void A(View view, Rect rect) {
        ((f) view.getLayoutParams()).q(rect);
    }

    void C() {
        if (this.f7893i && this.f7897m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f7897m);
        }
        this.f7898n = false;
    }

    final WindowInsetsCompat J(WindowInsetsCompat windowInsetsCompat) {
        if (androidx.core.util.d.a(this.f7899o, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.f7899o = windowInsetsCompat;
        boolean z10 = false;
        boolean z11 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.f7900p = z11;
        if (!z11 && getBackground() == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        WindowInsetsCompat windowInsetsCompatE = e(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompatE;
    }

    void b() {
        if (this.f7893i) {
            if (this.f7897m == null) {
                this.f7897m = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f7897m);
        }
        this.f7898n = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List listG = this.f7886b.g(view);
        if (listG == null || listG.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < listG.size(); i11++) {
            View view2 = (View) listG.get(i11);
            c cVarF = ((f) view2.getLayoutParams()).f();
            if (cVarF != null) {
                cVarF.h(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z10 = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectA = a();
        i(view, view.getParent() != this, rectA);
        Rect rectA2 = a();
        i(view2, view2.getParent() != this, rectA2);
        try {
            if (rectA.left <= rectA2.right && rectA.top <= rectA2.bottom && rectA.right >= rectA2.left && rectA.bottom >= rectA2.top) {
                z10 = true;
            }
            return z10;
        } finally {
            B(rectA);
            B(rectA2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j11) {
        f fVar = (f) view.getLayoutParams();
        c cVar = fVar.f7907a;
        if (cVar != null) {
            float fD = cVar.d(this, view);
            if (fD > 0.0f) {
                if (this.f7889e == null) {
                    this.f7889e = new Paint();
                }
                this.f7889e.setColor(fVar.f7907a.c(this, view));
                this.f7889e.setAlpha(c(Math.round(fD * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f7889e);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j11);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f7901q;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    void f() {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (q(getChildAt(i11))) {
                z10 = true;
                break;
            }
        }
        if (z10 != this.f7898n) {
            if (z10) {
                b();
            } else {
                C();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override // android.view.ViewGroup
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List listH = this.f7886b.h(view);
        this.f7888d.clear();
        if (listH != null) {
            this.f7888d.addAll(listH);
        }
        return this.f7888d;
    }

    final List<View> getDependencySortedChildren() {
        z();
        return Collections.unmodifiableList(this.f7885a);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List listG = this.f7886b.g(view);
        this.f7888d.clear();
        if (listG != null) {
            this.f7888d.addAll(listG);
        }
        return this.f7888d;
    }

    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f7899o;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f7904t.getNestedScrollAxes();
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f7901q;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    void i(View view, boolean z10, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z10) {
            j(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public boolean isPointInChildBounds(@NonNull View view, int i11, int i12) {
        Rect rectA = a();
        j(view, rectA);
        try {
            return rectA.contains(i11, i12);
        } finally {
            B(rectA);
        }
    }

    void j(View view, Rect rect) {
        androidx.coordinatorlayout.widget.c.a(this, view, rect);
    }

    void k(View view, int i11, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        l(view, i11, rect, rect2, fVar, measuredWidth, measuredHeight);
        d(fVar, rect2, measuredWidth, measuredHeight);
    }

    void n(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).h());
    }

    /* JADX WARN: Multi-variable type inference failed */
    f o(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f7908b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.o(behavior);
                fVar.f7908b = true;
            } else {
                d dVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (d) superclass.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.o((c) dVar.value().getDeclaredConstructor(null).newInstance(null));
                    } catch (Exception e11) {
                        Log.e("CoordinatorLayout", "Default behavior class " + dVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e11);
                    }
                }
                fVar.f7908b = true;
            }
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        D(false);
        if (this.f7898n) {
            if (this.f7897m == null) {
                this.f7897m = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f7897m);
        }
        if (this.f7899o == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f7893i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        D(false);
        if (this.f7898n && this.f7897m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f7897m);
        }
        View view = this.f7896l;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f7893i = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f7900p || this.f7901q == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f7899o;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f7901q.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f7901q.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            D(true);
        }
        boolean zY = y(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            D(true);
        }
        return zY;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        c cVarF;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f7885a.size();
        for (int i15 = 0; i15 < size; i15++) {
            View view = (View) this.f7885a.get(i15);
            if (view.getVisibility() != 8 && ((cVarF = ((f) view.getLayoutParams()).f()) == null || !cVarF.l(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i11) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = fVar.f7917k;
        if (view2 != null) {
            s(view, view2, i11);
            return;
        }
        int i12 = fVar.f7911e;
        if (i12 >= 0) {
            t(view, i12, i11);
        } else {
            r(view, i11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:46:0x011f  */
    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int i13;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        c cVarF;
        f fVar;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        z();
        f();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z10 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int i20 = paddingLeft + paddingRight;
        int i21 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z11 = this.f7899o != null && ViewCompat.getFitsSystemWindows(this);
        int size3 = this.f7885a.size();
        int i22 = suggestedMinimumWidth;
        int i23 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i24 = 0;
        while (i24 < size3) {
            View view = (View) this.f7885a.get(i24);
            if (view.getVisibility() == 8) {
                i18 = i24;
                i15 = size3;
                i16 = paddingLeft;
            } else {
                f fVar2 = (f) view.getLayoutParams();
                int i25 = fVar2.f7911e;
                if (i25 < 0 || mode == 0) {
                    i13 = iCombineMeasuredStates;
                } else {
                    int iM = m(i25);
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(G(fVar2.f7909c), layoutDirection) & 7;
                    i13 = iCombineMeasuredStates;
                    if ((absoluteGravity == 3 && !z10) || (absoluteGravity == 5 && z10)) {
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    } else if ((absoluteGravity == 5 && !z10) || (absoluteGravity == 3 && z10)) {
                        iMax = Math.max(0, iM - paddingLeft);
                    }
                    if (z11 || ViewCompat.getFitsSystemWindows(view)) {
                        iMakeMeasureSpec = i11;
                        iMakeMeasureSpec2 = i12;
                    } else {
                        int systemWindowInsetLeft = this.f7899o.getSystemWindowInsetLeft() + this.f7899o.getSystemWindowInsetRight();
                        int systemWindowInsetTop = this.f7899o.getSystemWindowInsetTop() + this.f7899o.getSystemWindowInsetBottom();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - systemWindowInsetLeft, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetTop, mode2);
                    }
                    cVarF = fVar2.f();
                    if (cVarF != null) {
                        fVar = fVar2;
                        i17 = i13;
                        i18 = i24;
                        i14 = i23;
                        i16 = paddingLeft;
                        i19 = i22;
                        i15 = size3;
                        if (!cVarF.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        f fVar3 = fVar;
                        int iMax2 = Math.max(i19, i20 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar3).leftMargin + ((ViewGroup.MarginLayoutParams) fVar3).rightMargin);
                        int iMax3 = Math.max(i14, i21 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar3).topMargin + ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                        i22 = iMax2;
                        i23 = iMax3;
                    } else {
                        fVar = fVar2;
                        i14 = i23;
                        i15 = size3;
                        i16 = paddingLeft;
                        i17 = i13;
                        i18 = i24;
                        i19 = i22;
                    }
                    onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    f fVar4 = fVar;
                    int iMax4 = Math.max(i19, i20 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar4).leftMargin + ((ViewGroup.MarginLayoutParams) fVar4).rightMargin);
                    int iMax5 = Math.max(i14, i21 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar4).topMargin + ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                    i22 = iMax4;
                    i23 = iMax5;
                }
                iMax = 0;
                if (z11) {
                    iMakeMeasureSpec = i11;
                    iMakeMeasureSpec2 = i12;
                } else {
                    iMakeMeasureSpec = i11;
                    iMakeMeasureSpec2 = i12;
                }
                cVarF = fVar2.f();
                if (cVarF != null) {
                    fVar = fVar2;
                    i17 = i13;
                    i18 = i24;
                    i14 = i23;
                    i16 = paddingLeft;
                    i19 = i22;
                    i15 = size3;
                    if (!cVarF.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                    }
                    f fVar5 = fVar;
                    int iMax6 = Math.max(i19, i20 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar5).leftMargin + ((ViewGroup.MarginLayoutParams) fVar5).rightMargin);
                    int iMax7 = Math.max(i14, i21 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar5).topMargin + ((ViewGroup.MarginLayoutParams) fVar5).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                    i22 = iMax6;
                    i23 = iMax7;
                } else {
                    fVar = fVar2;
                    i14 = i23;
                    i15 = size3;
                    i16 = paddingLeft;
                    i17 = i13;
                    i18 = i24;
                    i19 = i22;
                }
                onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                f fVar6 = fVar;
                int iMax8 = Math.max(i19, i20 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) fVar6).leftMargin + ((ViewGroup.MarginLayoutParams) fVar6).rightMargin);
                int iMax9 = Math.max(i14, i21 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar6).topMargin + ((ViewGroup.MarginLayoutParams) fVar6).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                i22 = iMax8;
                i23 = iMax9;
            }
            i24 = i18 + 1;
            paddingLeft = i16;
            size3 = i15;
        }
        int i26 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i22, i11, (-16777216) & i26), View.resolveSizeAndState(i23, i12, i26 << 16));
    }

    public void onMeasureChild(View view, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f11, float f12, boolean z10) {
        c cVarF;
        int childCount = getChildCount();
        boolean zN = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zN |= cVarF.n(this, childAt, view, f11, f12, z10);
                }
            }
        }
        if (zN) {
            w(1);
        }
        return zN;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f11, float f12) {
        c cVarF;
        int childCount = getChildCount();
        boolean zO = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(0) && (cVarF = fVar.f()) != null) {
                    zO |= cVarF.o(this, childAt, view, f11, f12);
                }
            }
        }
        return zO;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr) {
        onNestedPreScroll(view, i11, i12, iArr, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr, int i13) {
        c cVarF;
        int childCount = getChildCount();
        boolean z10 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i13) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f7890f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.q(this, childAt, view, i11, i12, iArr2, i13);
                    int[] iArr3 = this.f7890f;
                    iMax = i11 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f7890f;
                    iMax2 = i12 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z10) {
            w(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i11, i12, i13, i14, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15) {
        onNestedScroll(view, i11, i12, i13, i14, 0, this.f7891g);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i11, int i12, int i13, int i14, int i15, @NonNull int[] iArr) {
        c cVarF;
        boolean z10;
        int iMin;
        int childCount = getChildCount();
        boolean z11 = false;
        int iMax = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.j(i15) && (cVarF = fVar.f()) != null) {
                    int[] iArr2 = this.f7890f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVarF.t(this, childAt, view, i11, i12, i13, i14, i15, iArr2);
                    int[] iArr3 = this.f7890f;
                    iMax = i13 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    if (i14 > 0) {
                        z10 = true;
                        iMin = Math.max(i16, this.f7890f[1]);
                    } else {
                        z10 = true;
                        iMin = Math.min(i16, this.f7890f[1]);
                    }
                    i16 = iMin;
                    z11 = z10;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + i16;
        if (z11) {
            w(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i11) {
        onNestedScrollAccepted(view, view2, i11, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i11, int i12) {
        c cVarF;
        this.f7904t.onNestedScrollAccepted(view, view2, i11, i12);
        this.f7896l = view2;
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i12) && (cVarF = fVar.f()) != null) {
                cVarF.v(this, childAt, view, view2, i11, i12);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int id2 = childAt.getId();
            c cVarF = o(childAt).f();
            if (id2 != -1 && cVarF != null && (parcelable2 = sparseArray.get(id2)) != null) {
                cVarF.x(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableY;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int id2 = childAt.getId();
            c cVarF = ((f) childAt.getLayoutParams()).f();
            if (id2 != -1 && cVarF != null && (parcelableY = cVarF.y(this, childAt)) != null) {
                sparseArray.append(id2, parcelableY);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i11) {
        return onStartNestedScroll(view, view2, i11, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i11, int i12) {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVarF = fVar.f();
                if (cVarF != null) {
                    boolean zA = cVarF.A(this, childAt, view, view2, i11, i12);
                    z10 |= zA;
                    fVar.r(i12, zA);
                } else {
                    fVar.r(i12, false);
                }
            }
        }
        return z10;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i11) {
        this.f7904t.onStopNestedScroll(view, i11);
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.j(i11)) {
                c cVarF = fVar.f();
                if (cVarF != null) {
                    cVarF.C(this, childAt, view, i11);
                }
                fVar.l(i11);
                fVar.k();
            }
        }
        this.f7896l = null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
  0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0024, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zY;
        boolean zD;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f7895k == null) {
            zY = y(motionEvent, 1);
            if (!zY) {
                zD = false;
            }
            motionEventObtain = null;
            if (this.f7895k == null) {
                zD |= super.onTouchEvent(motionEvent);
            } else if (zY) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                D(false);
            }
            return zD;
        }
        zY = false;
        c cVarF = ((f) this.f7895k.getLayoutParams()).f();
        if (cVarF != null) {
            zD = cVarF.D(this, this.f7895k, motionEvent);
        } else {
            zD = false;
        }
        motionEventObtain = null;
        if (this.f7895k == null) {
            zD |= super.onTouchEvent(motionEvent);
        } else if (zY) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            D(false);
        } else {
            D(false);
        }
        return zD;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        c cVarF = ((f) view.getLayoutParams()).f();
        if (cVarF == null || !cVarF.w(this, view, rect, z10)) {
            return super.requestChildRectangleOnScreen(view, rect, z10);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (!z10 || this.f7892h) {
            return;
        }
        D(false);
        this.f7892h = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z10) {
        super.setFitsSystemWindows(z10);
        K();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f7902r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f7901q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f7901q = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f7901q.setState(getDrawableState());
                }
                a1.a.m(this.f7901q, ViewCompat.getLayoutDirection(this));
                this.f7901q.setVisible(getVisibility() == 0, false);
                this.f7901q.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(int i11) {
        setStatusBarBackground(new ColorDrawable(i11));
    }

    public void setStatusBarBackgroundResource(int i11) {
        setStatusBarBackground(i11 != 0 ? androidx.core.content.b.getDrawable(getContext(), i11) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        boolean z10 = i11 == 0;
        Drawable drawable = this.f7901q;
        if (drawable == null || drawable.isVisible() == z10) {
            return;
        }
        this.f7901q.setVisible(z10, false);
    }

    void v(View view, int i11) {
        c cVarF;
        f fVar = (f) view.getLayoutParams();
        if (fVar.f7917k != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            Rect rectA3 = a();
            j(fVar.f7917k, rectA);
            i(view, false, rectA2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            l(view, i11, rectA, rectA3, fVar, measuredWidth, measuredHeight);
            boolean z10 = (rectA3.left == rectA2.left && rectA3.top == rectA2.top) ? false : true;
            d(fVar, rectA3, measuredWidth, measuredHeight);
            int i12 = rectA3.left - rectA2.left;
            int i13 = rectA3.top - rectA2.top;
            if (i12 != 0) {
                ViewCompat.offsetLeftAndRight(view, i12);
            }
            if (i13 != 0) {
                ViewCompat.offsetTopAndBottom(view, i13);
            }
            if (z10 && (cVarF = fVar.f()) != null) {
                cVarF.h(this, view, fVar.f7917k);
            }
            B(rectA);
            B(rectA2);
            B(rectA3);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7901q;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    final void w(int i11) {
        int i12;
        c cVarF;
        boolean zH;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f7885a.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        for (int i13 = 0; i13 < size; i13++) {
            View view = (View) this.f7885a.get(i13);
            f fVar = (f) view.getLayoutParams();
            if (i11 != 0 || view.getVisibility() != 8) {
                for (int i14 = 0; i14 < i13; i14++) {
                    if (fVar.f7918l == ((View) this.f7885a.get(i14))) {
                        v(view, layoutDirection);
                    }
                }
                i(view, true, rectA2);
                if (fVar.f7913g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(fVar.f7913g, layoutDirection);
                    int i15 = absoluteGravity & 112;
                    if (i15 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i15 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i16 = absoluteGravity & 7;
                    if (i16 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i16 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (fVar.f7914h != 0 && view.getVisibility() == 0) {
                    u(view, rectA, layoutDirection);
                }
                if (i11 != 2) {
                    n(view, rectA3);
                    if (!rectA3.equals(rectA2)) {
                        A(view, rectA2);
                        for (i12 = i13 + 1; i12 < size; i12++) {
                            View view2 = (View) this.f7885a.get(i12);
                            f fVar2 = (f) view2.getLayoutParams();
                            cVarF = fVar2.f();
                            if (cVarF == null && cVarF.e(this, view2, view)) {
                                if (i11 == 0 && fVar2.g()) {
                                    fVar2.k();
                                } else {
                                    if (i11 != 2) {
                                        zH = cVarF.h(this, view2, view);
                                    } else {
                                        cVarF.i(this, view2, view);
                                        zH = true;
                                    }
                                    if (i11 == 1) {
                                        fVar2.p(zH);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i12 < size) {
                        View view3 = (View) this.f7885a.get(i12);
                        f fVar3 = (f) view3.getLayoutParams();
                        cVarF = fVar3.f();
                        if (cVarF == null) {
                        }
                    }
                }
            }
        }
        B(rectA);
        B(rectA2);
        B(rectA3);
    }
}
