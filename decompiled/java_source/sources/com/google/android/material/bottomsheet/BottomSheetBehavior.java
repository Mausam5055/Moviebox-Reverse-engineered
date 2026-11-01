package com.google.android.material.bottomsheet;

import ab.i;
import ab.n;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.f0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c implements wa.b {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final int f28392i0 = R$style.Widget_Design_BottomSheet_Modal;
    private boolean A;
    private final StateSettlingTracker B;
    private ValueAnimator C;
    int D;
    int E;
    int F;
    float G;
    int H;
    float I;
    boolean J;
    private boolean K;
    private boolean L;
    int M;
    int N;
    ViewDragHelper O;
    private boolean P;
    private int Q;
    private boolean R;
    private float S;
    private int T;
    int U;
    int V;
    WeakReference W;
    WeakReference X;
    WeakReference Y;
    private final ArrayList Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28393a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private VelocityTracker f28394a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f28395b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    wa.f f28396b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f28397c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    int f28398c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f28399d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f28400d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28401e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    boolean f28402e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28403f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private Map f28404f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28405g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    final SparseIntArray f28406g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28407h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final ViewDragHelper.b f28408h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private i f28410j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f28411k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f28412l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f28413m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f28414n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f28415o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f28416p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f28417q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f28418r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f28419s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f28420t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f28421u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f28422v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f28423w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f28424x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f28425y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private n f28426z;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i11) {
            super(parcelable);
            this.state = i11;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.M;
            this.peekHeight = ((BottomSheetBehavior) bottomSheetBehavior).f28403f;
            this.fitToContents = ((BottomSheetBehavior) bottomSheetBehavior).f28395b;
            this.hideable = bottomSheetBehavior.J;
            this.skipCollapsed = ((BottomSheetBehavior) bottomSheetBehavior).K;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }
    }

    private class StateSettlingTracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f28427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f28428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f28429c;

        private StateSettlingTracker() {
            this.f28429c = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.StateSettlingTracker.1
                @Override // java.lang.Runnable
                public void run() {
                    StateSettlingTracker.this.f28428b = false;
                    ViewDragHelper viewDragHelper = BottomSheetBehavior.this.O;
                    if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                        StateSettlingTracker stateSettlingTracker = StateSettlingTracker.this;
                        stateSettlingTracker.c(stateSettlingTracker.f28427a);
                        return;
                    }
                    StateSettlingTracker stateSettlingTracker2 = StateSettlingTracker.this;
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.M == 2) {
                        bottomSheetBehavior.V0(stateSettlingTracker2.f28427a);
                    }
                }
            };
        }

        void c(int i11) {
            WeakReference weakReference = BottomSheetBehavior.this.W;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f28427a = i11;
            if (this.f28428b) {
                return;
            }
            ViewCompat.postOnAnimation((View) BottomSheetBehavior.this.W.get(), this.f28429c);
            this.f28428b = true;
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomSheetBehavior.this.V0(5);
            WeakReference weakReference = BottomSheetBehavior.this.W;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((View) BottomSheetBehavior.this.W.get()).requestLayout();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f28410j != null) {
                BottomSheetBehavior.this.f28410j.e0(fFloatValue);
            }
        }
    }

    class c implements f0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f28433a;

        c(boolean z10) {
            this.f28433a = z10;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0080  */
        /* JADX WARN: Code duplicated, block: B:33:0x00a3  */
        @Override // com.google.android.material.internal.f0.d
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f0.e eVar) {
            boolean z10;
            z0.c insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
            z0.c insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
            BottomSheetBehavior.this.f28424x = insets.f79126b;
            boolean zP = f0.p(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.f28416p) {
                BottomSheetBehavior.this.f28423w = windowInsetsCompat.getSystemWindowInsetBottom();
                paddingBottom = eVar.f29210d + BottomSheetBehavior.this.f28423w;
            }
            if (BottomSheetBehavior.this.f28417q) {
                paddingLeft = (zP ? eVar.f29209c : eVar.f29207a) + insets.f79125a;
            }
            if (BottomSheetBehavior.this.f28418r) {
                paddingRight = (zP ? eVar.f29207a : eVar.f29209c) + insets.f79127c;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            boolean z11 = true;
            if (BottomSheetBehavior.this.f28420t) {
                int i11 = marginLayoutParams.leftMargin;
                int i12 = insets.f79125a;
                if (i11 != i12) {
                    marginLayoutParams.leftMargin = i12;
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (BottomSheetBehavior.this.f28421u) {
                int i13 = marginLayoutParams.rightMargin;
                int i14 = insets.f79127c;
                if (i13 != i14) {
                    marginLayoutParams.rightMargin = i14;
                    z10 = true;
                }
            }
            if (BottomSheetBehavior.this.f28422v) {
                int i15 = marginLayoutParams.topMargin;
                int i16 = insets.f79126b;
                if (i15 != i16) {
                    marginLayoutParams.topMargin = i16;
                } else {
                    z11 = z10;
                }
            } else {
                z11 = z10;
            }
            if (z11) {
                view.setLayoutParams(marginLayoutParams);
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.f28433a) {
                BottomSheetBehavior.this.f28414n = insets2.f79128d;
            }
            if (BottomSheetBehavior.this.f28416p || this.f28433a) {
                BottomSheetBehavior.this.h1(false);
            }
            return windowInsetsCompat;
        }
    }

    class d extends ViewDragHelper.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f28435a;

        d() {
        }

        private boolean a(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.V + bottomSheetBehavior.o0()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionHorizontal(View view, int i11, int i12) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionVertical(View view, int i11, int i12) {
            return d1.a.b(i11, BottomSheetBehavior.this.o0(), getViewVerticalDragRange(view));
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int getViewVerticalDragRange(View view) {
            return BottomSheetBehavior.this.f0() ? BottomSheetBehavior.this.V : BottomSheetBehavior.this.H;
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewDragStateChanged(int i11) {
            if (i11 == 1 && BottomSheetBehavior.this.L) {
                BottomSheetBehavior.this.V0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewPositionChanged(View view, int i11, int i12, int i13, int i14) {
            BottomSheetBehavior.this.k0(i12);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:6:0x0010  */
        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewReleased(View view, float f11, float f12) {
            int i11 = 6;
            if (f12 >= 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.J && bottomSheetBehavior.Z0(view, f12)) {
                    if ((Math.abs(f11) < Math.abs(f12) && f12 > BottomSheetBehavior.this.f28401e) || a(view)) {
                        i11 = 5;
                    } else if (BottomSheetBehavior.this.f28395b || Math.abs(view.getTop() - BottomSheetBehavior.this.o0()) < Math.abs(view.getTop() - BottomSheetBehavior.this.F)) {
                        i11 = 3;
                    }
                } else if (f12 == 0.0f || Math.abs(f11) > Math.abs(f12)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.f28395b) {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i12 = bottomSheetBehavior2.F;
                        if (top < i12) {
                            if (top < Math.abs(top - bottomSheetBehavior2.H)) {
                                i11 = 3;
                            } else if (BottomSheetBehavior.this.a1()) {
                                i11 = 4;
                            }
                        } else if (Math.abs(top - i12) >= Math.abs(top - BottomSheetBehavior.this.H) || BottomSheetBehavior.this.a1()) {
                            i11 = 4;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.E) < Math.abs(top - BottomSheetBehavior.this.H)) {
                        i11 = 3;
                    } else {
                        i11 = 4;
                    }
                } else if (BottomSheetBehavior.this.f28395b) {
                    i11 = 4;
                } else {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - BottomSheetBehavior.this.F) >= Math.abs(top2 - BottomSheetBehavior.this.H) || BottomSheetBehavior.this.a1()) {
                        i11 = 4;
                    }
                }
            } else if (BottomSheetBehavior.this.f28395b) {
                i11 = 3;
            } else {
                int top3 = view.getTop();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f28435a;
                if (BottomSheetBehavior.this.a1()) {
                    BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior3.X0(jCurrentTimeMillis, (top3 * 100.0f) / bottomSheetBehavior3.V)) {
                        i11 = 4;
                    }
                } else if (top3 <= BottomSheetBehavior.this.F) {
                }
                i11 = 3;
            }
            BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
            bottomSheetBehavior4.c1(view, i11, bottomSheetBehavior4.b1());
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean tryCaptureView(View view, int i11) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i12 = bottomSheetBehavior.M;
            if (i12 == 1 || bottomSheetBehavior.f28402e0) {
                return false;
            }
            if (i12 == 3 && bottomSheetBehavior.f28398c0 == i11) {
                WeakReference weakReference = bottomSheetBehavior.Y;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f28435a = System.currentTimeMillis();
            WeakReference weakReference2 = BottomSheetBehavior.this.W;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class e implements AccessibilityViewCommand {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f28437a;

        e(int i11) {
            this.f28437a = i11;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.U0(this.f28437a);
            return true;
        }
    }

    public static abstract class f {
        void onLayout(@NonNull View view) {
        }

        public abstract void onSlide(View view, float f11);

        public abstract void onStateChanged(View view, int i11);
    }

    public BottomSheetBehavior() {
        this.f28393a = 0;
        this.f28395b = true;
        this.f28397c = false;
        this.f28412l = -1;
        this.f28413m = -1;
        this.B = new StateSettlingTracker();
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = 4;
        this.N = 4;
        this.S = 0.1f;
        this.Z = new ArrayList();
        this.f28400d0 = -1;
        this.f28406g0 = new SparseIntArray();
        this.f28408h0 = new d();
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i11;
        super(context, attributeSet);
        this.f28393a = 0;
        this.f28395b = true;
        this.f28397c = false;
        this.f28412l = -1;
        this.f28413m = -1;
        this.B = new StateSettlingTracker();
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = 4;
        this.N = 4;
        this.S = 0.1f;
        this.Z = new ArrayList();
        this.f28400d0 = -1;
        this.f28406g0 = new SparseIntArray();
        this.f28408h0 = new d();
        this.f28409i = context.getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.f28411k = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.f28426z = n.e(context, attributeSet, R$attr.bottomSheetStyle, f28392i0).m();
        }
        i0(context);
        j0();
        this.I = typedArrayObtainStyledAttributes.getDimension(R$styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            O0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            N0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_android_maxHeight, -1));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue == null || (i11 = typedValuePeekValue.data) != -1) {
            P0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            P0(i11);
        }
        M0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        K0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        J0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        T0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        H0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        R0(typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        L0(typedArrayObtainStyledAttributes.getFloat(R$styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            I0(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            I0(typedValuePeekValue2.data);
        }
        S0(typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500));
        this.f28416p = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f28417q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f28418r = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f28419s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.f28420t = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.f28421u = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.f28422v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        this.f28425y = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f28399d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void C0(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i11) {
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, h0(i11));
    }

    private void D0() {
        this.f28398c0 = -1;
        this.f28400d0 = -1;
        VelocityTracker velocityTracker = this.f28394a0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f28394a0 = null;
        }
    }

    private void E0(SavedState savedState) {
        int i11 = this.f28393a;
        if (i11 == 0) {
            return;
        }
        if (i11 == -1 || (i11 & 1) == 1) {
            this.f28403f = savedState.peekHeight;
        }
        if (i11 == -1 || (i11 & 2) == 2) {
            this.f28395b = savedState.fitToContents;
        }
        if (i11 == -1 || (i11 & 4) == 4) {
            this.J = savedState.hideable;
        }
        if (i11 == -1 || (i11 & 8) == 8) {
            this.K = savedState.skipCollapsed;
        }
    }

    private void F0(View view, Runnable runnable) {
        if (z0(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void W0(View view) {
        boolean z10 = (Build.VERSION.SDK_INT < 29 || w0() || this.f28405g) ? false : true;
        if (this.f28416p || this.f28417q || this.f28418r || this.f28420t || this.f28421u || this.f28422v || z10) {
            f0.f(view, new c(z10));
        }
    }

    private int X(View view, int i11, int i12) {
        return ViewCompat.addAccessibilityAction(view, view.getResources().getString(i11), h0(i12));
    }

    private boolean Y0() {
        return this.O != null && (this.L || this.M == 1);
    }

    private void Z() {
        int iD0 = d0();
        if (this.f28395b) {
            this.H = Math.max(this.V - iD0, this.E);
        } else {
            this.H = this.V - iD0;
        }
    }

    private float a0(float f11, RoundedCorner roundedCorner) {
        if (roundedCorner != null) {
            float radius = roundedCorner.getRadius();
            if (radius > 0.0f && f11 > 0.0f) {
                return radius / f11;
            }
        }
        return 0.0f;
    }

    private void b0() {
        this.F = (int) (this.V * (1.0f - this.G));
    }

    private float c0() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        if (this.f28410j == null || (weakReference = this.W) == null || weakReference.get() == null || Build.VERSION.SDK_INT < 31) {
            return 0.0f;
        }
        View view = (View) this.W.get();
        if (!t0() || (rootWindowInsets = view.getRootWindowInsets()) == null) {
            return 0.0f;
        }
        return Math.max(a0(this.f28410j.L(), rootWindowInsets.getRoundedCorner(0)), a0(this.f28410j.M(), rootWindowInsets.getRoundedCorner(1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1(View view, int i11, boolean z10) {
        int iR0 = r0(i11);
        ViewDragHelper viewDragHelper = this.O;
        if (viewDragHelper == null || (!z10 ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iR0) : viewDragHelper.settleCapturedViewAt(view.getLeft(), iR0))) {
            V0(i11);
            return;
        }
        V0(2);
        f1(i11, true);
        this.B.c(i11);
    }

    private int d0() {
        int i11;
        if (this.f28405g) {
            return Math.min(Math.max(this.f28407h, this.V - ((this.U * 9) / 16)), this.T) + this.f28423w;
        }
        return (this.f28415o || this.f28416p || (i11 = this.f28414n) <= 0) ? this.f28403f + this.f28423w : Math.max(this.f28403f, i11 + this.f28409i);
    }

    private void d1() {
        WeakReference weakReference = this.W;
        if (weakReference != null) {
            e1((View) weakReference.get(), 0);
        }
        WeakReference weakReference2 = this.X;
        if (weakReference2 != null) {
            e1((View) weakReference2.get(), 1);
        }
    }

    private float e0(int i11) {
        float f11;
        float fO0;
        int i12 = this.H;
        if (i11 > i12 || i12 == o0()) {
            int i13 = this.H;
            f11 = i13 - i11;
            fO0 = this.V - i13;
        } else {
            int i14 = this.H;
            f11 = i14 - i11;
            fO0 = i14 - o0();
        }
        return f11 / fO0;
    }

    private void e1(View view, int i11) {
        if (view == null) {
            return;
        }
        g0(view, i11);
        if (!this.f28395b && this.M != 6) {
            this.f28406g0.put(i11, X(view, R$string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.J && y0() && this.M != 5) {
            C0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i12 = this.M;
        if (i12 == 3) {
            C0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f28395b ? 4 : 6);
            return;
        }
        if (i12 == 4) {
            C0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f28395b ? 3 : 6);
        } else {
            if (i12 != 6) {
                return;
            }
            C0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            C0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f0() {
        return x0() && y0();
    }

    private void f1(int i11, boolean z10) {
        boolean zU0;
        ValueAnimator valueAnimator;
        if (i11 == 2 || this.A == (zU0 = u0()) || this.f28410j == null) {
            return;
        }
        this.A = zU0;
        if (!z10 || (valueAnimator = this.C) == null) {
            ValueAnimator valueAnimator2 = this.C;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.C.cancel();
            }
            this.f28410j.e0(this.A ? c0() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.C.reverse();
        } else {
            this.C.setFloatValues(this.f28410j.A(), zU0 ? c0() : 1.0f);
            this.C.start();
        }
    }

    private void g0(View view, int i11) {
        if (view == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        int i12 = this.f28406g0.get(i11, -1);
        if (i12 != -1) {
            ViewCompat.removeAccessibilityAction(view, i12);
            this.f28406g0.delete(i11);
        }
    }

    private void g1(boolean z10) {
        Map map;
        WeakReference weakReference = this.W;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.f28404f0 != null) {
                    return;
                } else {
                    this.f28404f0 = new HashMap(childCount);
                }
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = coordinatorLayout.getChildAt(i11);
                if (childAt != this.W.get()) {
                    if (z10) {
                        this.f28404f0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.f28397c) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f28397c && (map = this.f28404f0) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, ((Integer) this.f28404f0.get(childAt)).intValue());
                    }
                }
            }
            if (!z10) {
                this.f28404f0 = null;
            } else if (this.f28397c) {
                ((View) this.W.get()).sendAccessibilityEvent(8);
            }
        }
    }

    private AccessibilityViewCommand h0(int i11) {
        return new e(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h1(boolean z10) {
        View view;
        if (this.W != null) {
            Z();
            if (this.M != 4 || (view = (View) this.W.get()) == null) {
                return;
            }
            if (z10) {
                U0(4);
            } else {
                view.requestLayout();
            }
        }
    }

    private void i0(Context context) {
        if (this.f28426z == null) {
            return;
        }
        i iVar = new i(this.f28426z);
        this.f28410j = iVar;
        iVar.S(context);
        ColorStateList colorStateList = this.f28411k;
        if (colorStateList != null) {
            this.f28410j.d0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f28410j.setTint(typedValue.data);
    }

    private void j0() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(c0(), 1.0f);
        this.C = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.C.addUpdateListener(new b());
    }

    public static BottomSheetBehavior m0(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
        if (cVarF instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) cVarF;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private int n0(int i11, int i12, int i13, int i14) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, i12, i14);
        if (i13 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i13), 1073741824);
        }
        if (size != 0) {
            i13 = Math.min(size, i13);
        }
        return View.MeasureSpec.makeMeasureSpec(i13, Integer.MIN_VALUE);
    }

    private int r0(int i11) {
        if (i11 == 3) {
            return o0();
        }
        if (i11 == 4) {
            return this.H;
        }
        if (i11 == 5) {
            return this.V;
        }
        if (i11 == 6) {
            return this.F;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i11);
    }

    private float s0() {
        VelocityTracker velocityTracker = this.f28394a0;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f28399d);
        return this.f28394a0.getYVelocity(this.f28398c0);
    }

    private boolean t0() {
        WeakReference weakReference = this.W;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.W.get()).getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    private boolean u0() {
        return this.M == 3 && (this.f28425y || t0());
    }

    private boolean z0(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11, int i12) {
        this.Q = 0;
        this.R = false;
        return (i11 & 2) != 0;
    }

    public boolean A0() {
        return true;
    }

    public void B0(f fVar) {
        this.Z.remove(fVar);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a9  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void C(CoordinatorLayout coordinatorLayout, View view, View view2, int i11) {
        WeakReference weakReference;
        int i12 = 3;
        if (view.getTop() == o0()) {
            V0(3);
            return;
        }
        if (!A0() || ((weakReference = this.Y) != null && view2 == weakReference.get() && this.R)) {
            if (this.Q > 0) {
                if (!this.f28395b && view.getTop() > this.F) {
                    i12 = 6;
                }
            } else if (this.J && Z0(view, s0())) {
                i12 = 5;
            } else if (this.Q == 0) {
                int top = view.getTop();
                if (!this.f28395b) {
                    int i13 = this.F;
                    if (top < i13) {
                        if (top >= Math.abs(top - this.H)) {
                            if (a1()) {
                                i12 = 4;
                            } else {
                                i12 = 6;
                            }
                        }
                    } else if (Math.abs(top - i13) < Math.abs(top - this.H)) {
                        i12 = 6;
                    } else {
                        i12 = 4;
                    }
                } else if (Math.abs(top - this.E) >= Math.abs(top - this.H)) {
                    i12 = 4;
                }
            } else {
                if (!this.f28395b) {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - this.F) < Math.abs(top2 - this.H)) {
                        i12 = 6;
                    }
                }
                i12 = 4;
            }
            c1(view, i12, false);
            this.R = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.M == 1 && actionMasked == 0) {
            return true;
        }
        if (Y0()) {
            this.O.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            D0();
        }
        if (this.f28394a0 == null) {
            this.f28394a0 = VelocityTracker.obtain();
        }
        this.f28394a0.addMovement(motionEvent);
        if (Y0() && actionMasked == 2 && !this.P && Math.abs(this.f28400d0 - motionEvent.getY()) > this.O.getTouchSlop()) {
            this.O.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.P;
    }

    void G0(View view) {
        WeakReference weakReference;
        if (view != null || (weakReference = this.X) == null) {
            this.X = new WeakReference(view);
            e1(view, 1);
        } else {
            g0((View) weakReference.get(), 1);
            this.X = null;
        }
    }

    public void H0(boolean z10) {
        this.L = z10;
    }

    public void I0(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.D = i11;
        f1(this.M, true);
    }

    public void J0(boolean z10) {
        if (this.f28395b == z10) {
            return;
        }
        this.f28395b = z10;
        if (this.W != null) {
            Z();
        }
        V0((this.f28395b && this.M == 6) ? 3 : this.M);
        f1(this.M, true);
        d1();
    }

    public void K0(boolean z10) {
        this.f28415o = z10;
    }

    public void L0(float f11) {
        if (f11 <= 0.0f || f11 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.G = f11;
        if (this.W != null) {
            b0();
        }
    }

    public void M0(boolean z10) {
        if (this.J != z10) {
            this.J = z10;
            if (!z10 && this.M == 5) {
                U0(4);
            }
            d1();
        }
    }

    public void N0(int i11) {
        this.f28413m = i11;
    }

    public void O0(int i11) {
        this.f28412l = i11;
    }

    public void P0(int i11) {
        Q0(i11, false);
    }

    public final void Q0(int i11, boolean z10) {
        if (i11 == -1) {
            if (this.f28405g) {
                return;
            } else {
                this.f28405g = true;
            }
        } else {
            if (!this.f28405g && this.f28403f == i11) {
                return;
            }
            this.f28405g = false;
            this.f28403f = Math.max(0, i11);
        }
        h1(z10);
    }

    public void R0(int i11) {
        this.f28393a = i11;
    }

    public void S0(int i11) {
        this.f28401e = i11;
    }

    public void T0(boolean z10) {
        this.K = z10;
    }

    public void U0(int i11) {
        if (i11 == 1 || i11 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("STATE_");
            sb2.append(i11 == 1 ? "DRAGGING" : "SETTLING");
            sb2.append(" should not be set externally.");
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!this.J && i11 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i11);
            return;
        }
        final int i12 = (i11 == 6 && this.f28395b && r0(i11) <= this.E) ? 3 : i11;
        WeakReference weakReference = this.W;
        if (weakReference == null || weakReference.get() == null) {
            V0(i11);
        } else {
            final View view = (View) this.W.get();
            F0(view, new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.c1(view, i12, false);
                }
            });
        }
    }

    void V0(int i11) {
        View view;
        if (this.M == i11) {
            return;
        }
        this.M = i11;
        if (i11 == 4 || i11 == 3 || i11 == 6 || (this.J && i11 == 5)) {
            this.N = i11;
        }
        WeakReference weakReference = this.W;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        if (i11 == 3) {
            g1(true);
        } else if (i11 == 6 || i11 == 5 || i11 == 4) {
            g1(false);
        }
        f1(i11, true);
        for (int i12 = 0; i12 < this.Z.size(); i12++) {
            ((f) this.Z.get(i12)).onStateChanged(view, i11);
        }
        d1();
    }

    public boolean X0(long j11, float f11) {
        return false;
    }

    public void Y(f fVar) {
        if (this.Z.contains(fVar)) {
            return;
        }
        this.Z.add(fVar);
    }

    boolean Z0(View view, float f11) {
        if (this.K) {
            return true;
        }
        if (y0() && view.getTop() >= this.H) {
            return Math.abs((((float) view.getTop()) + (f11 * this.S)) - ((float) this.H)) / ((float) d0()) > 0.5f;
        }
        return false;
    }

    public boolean a1() {
        return false;
    }

    public boolean b1() {
        return true;
    }

    @Override // wa.b
    public void cancelBackProgress() {
        wa.f fVar = this.f28396b0;
        if (fVar == null) {
            return;
        }
        fVar.f();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        super.g(fVar);
        this.W = null;
        this.O = null;
        this.f28396b0 = null;
    }

    @Override // wa.b
    public void handleBackInvoked() {
        wa.f fVar = this.f28396b0;
        if (fVar == null) {
            return;
        }
        androidx.activity.b bVarC = fVar.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            U0(this.J ? 5 : 4);
        } else if (this.J) {
            this.f28396b0.h(bVarC, new a());
        } else {
            this.f28396b0.i(bVarC, null);
            U0(4);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void j() {
        super.j();
        this.W = null;
        this.O = null;
        this.f28396b0 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i11;
        ViewDragHelper viewDragHelper;
        if (!view.isShown() || !this.L) {
            this.P = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            D0();
        }
        if (this.f28394a0 == null) {
            this.f28394a0 = VelocityTracker.obtain();
        }
        this.f28394a0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.f28400d0 = (int) motionEvent.getY();
            if (this.M != 2) {
                WeakReference weakReference = this.Y;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.isPointInChildBounds(view2, x10, this.f28400d0)) {
                    this.f28398c0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f28402e0 = true;
                }
            }
            this.P = this.f28398c0 == -1 && !coordinatorLayout.isPointInChildBounds(view, x10, this.f28400d0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f28402e0 = false;
            this.f28398c0 = -1;
            if (this.P) {
                this.P = false;
                return false;
            }
        }
        if (!this.P && (viewDragHelper = this.O) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.Y;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.P || this.M == 1 || coordinatorLayout.isPointInChildBounds(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.O == null || (i11 = this.f28400d0) == -1 || Math.abs(((float) i11) - motionEvent.getY()) <= ((float) this.O.getTouchSlop())) ? false : true;
    }

    void k0(int i11) {
        View view = (View) this.W.get();
        if (view == null || this.Z.isEmpty()) {
            return;
        }
        float fE0 = e0(i11);
        for (int i12 = 0; i12 < this.Z.size(); i12++) {
            ((f) this.Z.get(i12)).onSlide(view, fE0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.W == null) {
            this.f28407h = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            W0(view);
            ViewCompat.setWindowInsetsAnimationCallback(view, new com.google.android.material.bottomsheet.e(view));
            this.W = new WeakReference(view);
            this.f28396b0 = new wa.f(view);
            i iVar = this.f28410j;
            if (iVar != null) {
                ViewCompat.setBackground(view, iVar);
                i iVar2 = this.f28410j;
                float elevation = this.I;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(view);
                }
                iVar2.c0(elevation);
            } else {
                ColorStateList colorStateList = this.f28411k;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            d1();
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
        }
        if (this.O == null) {
            this.O = ViewDragHelper.create(coordinatorLayout, this.f28408h0);
        }
        int top = view.getTop();
        coordinatorLayout.onLayoutChild(view, i11);
        this.U = coordinatorLayout.getWidth();
        this.V = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.T = height;
        int iMin = this.V;
        int i12 = iMin - height;
        int i13 = this.f28424x;
        if (i12 < i13) {
            if (this.f28419s) {
                int i14 = this.f28413m;
                if (i14 != -1) {
                    iMin = Math.min(iMin, i14);
                }
                this.T = iMin;
            } else {
                int iMin2 = iMin - i13;
                int i15 = this.f28413m;
                if (i15 != -1) {
                    iMin2 = Math.min(iMin2, i15);
                }
                this.T = iMin2;
            }
        }
        this.E = Math.max(0, this.V - this.T);
        b0();
        Z();
        int i16 = this.M;
        if (i16 == 3) {
            ViewCompat.offsetTopAndBottom(view, o0());
        } else if (i16 == 6) {
            ViewCompat.offsetTopAndBottom(view, this.F);
        } else if (this.J && i16 == 5) {
            ViewCompat.offsetTopAndBottom(view, this.V);
        } else if (i16 == 4) {
            ViewCompat.offsetTopAndBottom(view, this.H);
        } else if (i16 == 1 || i16 == 2) {
            ViewCompat.offsetTopAndBottom(view, top - view.getTop());
        }
        f1(this.M, false);
        this.Y = new WeakReference(l0(view));
        for (int i17 = 0; i17 < this.Z.size(); i17++) {
            ((f) this.Z.get(i17)).onLayout(view);
        }
        return true;
    }

    View l0(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View viewL0 = l0(viewGroup.getChildAt(i11));
                if (viewL0 != null) {
                    return viewL0;
                }
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(n0(i11, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i12, this.f28412l, marginLayoutParams.width), n0(i13, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i14, this.f28413m, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean o(CoordinatorLayout coordinatorLayout, View view, View view2, float f11, float f12) {
        WeakReference weakReference;
        if (A0() && (weakReference = this.Y) != null && view2 == weakReference.get()) {
            return this.M != 3 || super.o(coordinatorLayout, view, view2, f11, f12);
        }
        return false;
    }

    public int o0() {
        if (this.f28395b) {
            return this.E;
        }
        return Math.max(this.D, this.f28419s ? 0 : this.f28424x);
    }

    i p0() {
        return this.f28410j;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int[] iArr, int i13) {
        if (i13 == 1) {
            return;
        }
        WeakReference weakReference = this.Y;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (!A0() || view2 == view3) {
            int top = view.getTop();
            int i14 = top - i12;
            if (i12 > 0) {
                if (i14 < o0()) {
                    int iO0 = top - o0();
                    iArr[1] = iO0;
                    ViewCompat.offsetTopAndBottom(view, -iO0);
                    V0(3);
                } else {
                    if (!this.L) {
                        return;
                    }
                    iArr[1] = i12;
                    ViewCompat.offsetTopAndBottom(view, -i12);
                    V0(1);
                }
            } else if (i12 < 0 && !view2.canScrollVertically(-1)) {
                if (i14 > this.H && !f0()) {
                    int i15 = top - this.H;
                    iArr[1] = i15;
                    ViewCompat.offsetTopAndBottom(view, -i15);
                    V0(4);
                } else {
                    if (!this.L) {
                        return;
                    }
                    iArr[1] = i12;
                    ViewCompat.offsetTopAndBottom(view, -i12);
                    V0(1);
                }
            }
            k0(view.getTop());
            this.Q = i12;
            this.R = true;
        }
    }

    public int q0() {
        return this.M;
    }

    @Override // wa.b
    public void startBackProgress(androidx.activity.b bVar) {
        wa.f fVar = this.f28396b0;
        if (fVar == null) {
            return;
        }
        fVar.j(bVar);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
    }

    @Override // wa.b
    public void updateBackProgress(androidx.activity.b bVar) {
        wa.f fVar = this.f28396b0;
        if (fVar == null) {
            return;
        }
        fVar.l(bVar);
    }

    public boolean v0() {
        return this.f28395b;
    }

    public boolean w0() {
        return this.f28415o;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.x(coordinatorLayout, view, savedState.getSuperState());
        E0(savedState);
        int i11 = savedState.state;
        if (i11 == 1 || i11 == 2) {
            this.M = 4;
            this.N = 4;
        } else {
            this.M = i11;
            this.N = i11;
        }
    }

    public boolean x0() {
        return this.J;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
        return new SavedState(super.y(coordinatorLayout, view), (BottomSheetBehavior<?>) this);
    }

    public boolean y0() {
        return true;
    }
}
