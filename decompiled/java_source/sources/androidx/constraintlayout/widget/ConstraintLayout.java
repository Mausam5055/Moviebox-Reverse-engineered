package androidx.constraintlayout.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.f;
import androidx.constraintlayout.core.widgets.g;
import androidx.constraintlayout.core.widgets.i;
import androidx.core.view.InputDeviceCompat;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean MEASURE = false;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.1.4";
    private static d sSharedValues;
    SparseArray<View> mChildrenByIds;
    private ArrayList<ConstraintHelper> mConstraintHelpers;
    protected androidx.constraintlayout.widget.a mConstraintLayoutSpec;
    private androidx.constraintlayout.widget.b mConstraintSet;
    private int mConstraintSetId;
    private androidx.constraintlayout.widget.c mConstraintsChangedListener;
    private HashMap<String, Integer> mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected androidx.constraintlayout.core.widgets.d mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    c mMeasurer;
    private androidx.constraintlayout.core.e mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<ConstraintWidget> mTempMapIdToWidget;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7661a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f7661a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7661a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7661a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7661a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public int D;
        boolean E;
        boolean F;
        public float G;
        public float H;
        public String I;
        float J;
        int K;
        public float L;
        public float M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public int U;
        public float V;
        public float W;
        public int X;
        public int Y;
        public int Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7662a;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public boolean f7663a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7664b;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public boolean f7665b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f7666c;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public String f7667c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f7668d;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        public int f7669d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f7670e;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        boolean f7671e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f7672f;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        boolean f7673f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f7674g;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        boolean f7675g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f7676h;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        boolean f7677h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f7678i;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        boolean f7679i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f7680j;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        boolean f7681j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f7682k;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        boolean f7683k0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f7684l;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        int f7685l0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f7686m;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        int f7687m0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f7688n;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        int f7689n0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f7690o;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        int f7691o0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f7692p;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        int f7693p0;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f7694q;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        int f7695q0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public float f7696r;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        float f7697r0;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f7698s;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        int f7699s0;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f7700t;

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        int f7701t0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f7702u;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        float f7703u0;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f7704v;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        ConstraintWidget f7705v0;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f7706w;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        public boolean f7707w0;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f7708x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f7709y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f7710z;

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f7711a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f7711a = sparseIntArray;
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public b(int i11, int i12) {
            super(i11, i12);
            this.f7662a = -1;
            this.f7664b = -1;
            this.f7666c = -1.0f;
            this.f7668d = true;
            this.f7670e = -1;
            this.f7672f = -1;
            this.f7674g = -1;
            this.f7676h = -1;
            this.f7678i = -1;
            this.f7680j = -1;
            this.f7682k = -1;
            this.f7684l = -1;
            this.f7686m = -1;
            this.f7688n = -1;
            this.f7690o = -1;
            this.f7692p = -1;
            this.f7694q = 0;
            this.f7696r = 0.0f;
            this.f7698s = -1;
            this.f7700t = -1;
            this.f7702u = -1;
            this.f7704v = -1;
            this.f7706w = Integer.MIN_VALUE;
            this.f7708x = Integer.MIN_VALUE;
            this.f7709y = Integer.MIN_VALUE;
            this.f7710z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7663a0 = false;
            this.f7665b0 = false;
            this.f7667c0 = null;
            this.f7669d0 = 0;
            this.f7671e0 = true;
            this.f7673f0 = true;
            this.f7675g0 = false;
            this.f7677h0 = false;
            this.f7679i0 = false;
            this.f7681j0 = false;
            this.f7683k0 = false;
            this.f7685l0 = -1;
            this.f7687m0 = -1;
            this.f7689n0 = -1;
            this.f7691o0 = -1;
            this.f7693p0 = Integer.MIN_VALUE;
            this.f7695q0 = Integer.MIN_VALUE;
            this.f7697r0 = 0.5f;
            this.f7705v0 = new ConstraintWidget();
            this.f7707w0 = false;
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7662a = -1;
            this.f7664b = -1;
            this.f7666c = -1.0f;
            this.f7668d = true;
            this.f7670e = -1;
            this.f7672f = -1;
            this.f7674g = -1;
            this.f7676h = -1;
            this.f7678i = -1;
            this.f7680j = -1;
            this.f7682k = -1;
            this.f7684l = -1;
            this.f7686m = -1;
            this.f7688n = -1;
            this.f7690o = -1;
            this.f7692p = -1;
            this.f7694q = 0;
            this.f7696r = 0.0f;
            this.f7698s = -1;
            this.f7700t = -1;
            this.f7702u = -1;
            this.f7704v = -1;
            this.f7706w = Integer.MIN_VALUE;
            this.f7708x = Integer.MIN_VALUE;
            this.f7709y = Integer.MIN_VALUE;
            this.f7710z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7663a0 = false;
            this.f7665b0 = false;
            this.f7667c0 = null;
            this.f7669d0 = 0;
            this.f7671e0 = true;
            this.f7673f0 = true;
            this.f7675g0 = false;
            this.f7677h0 = false;
            this.f7679i0 = false;
            this.f7681j0 = false;
            this.f7683k0 = false;
            this.f7685l0 = -1;
            this.f7687m0 = -1;
            this.f7689n0 = -1;
            this.f7691o0 = -1;
            this.f7693p0 = Integer.MIN_VALUE;
            this.f7695q0 = Integer.MIN_VALUE;
            this.f7697r0 = 0.5f;
            this.f7705v0 = new ConstraintWidget();
            this.f7707w0 = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                int i12 = a.f7711a.get(index);
                switch (i12) {
                    case 1:
                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f7692p);
                        this.f7692p = resourceId;
                        if (resourceId == -1) {
                            this.f7692p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f7694q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7694q);
                        break;
                    case 4:
                        float f11 = typedArrayObtainStyledAttributes.getFloat(index, this.f7696r) % 360.0f;
                        this.f7696r = f11;
                        if (f11 < 0.0f) {
                            this.f7696r = (360.0f - f11) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f7662a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7662a);
                        break;
                    case 6:
                        this.f7664b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7664b);
                        break;
                    case 7:
                        this.f7666c = typedArrayObtainStyledAttributes.getFloat(index, this.f7666c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7670e);
                        this.f7670e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f7670e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7672f);
                        this.f7672f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f7672f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7674g);
                        this.f7674g = resourceId4;
                        if (resourceId4 == -1) {
                            this.f7674g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7676h);
                        this.f7676h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f7676h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7678i);
                        this.f7678i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f7678i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7680j);
                        this.f7680j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f7680j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7682k);
                        this.f7682k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f7682k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7684l);
                        this.f7684l = resourceId9;
                        if (resourceId9 == -1) {
                            this.f7684l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7686m);
                        this.f7686m = resourceId10;
                        if (resourceId10 == -1) {
                            this.f7686m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7698s);
                        this.f7698s = resourceId11;
                        if (resourceId11 == -1) {
                            this.f7698s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7700t);
                        this.f7700t = resourceId12;
                        if (resourceId12 == -1) {
                            this.f7700t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7702u);
                        this.f7702u = resourceId13;
                        if (resourceId13 == -1) {
                            this.f7702u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7704v);
                        this.f7704v = resourceId14;
                        if (resourceId14 == -1) {
                            this.f7704v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f7706w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7706w);
                        break;
                    case 22:
                        this.f7708x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7708x);
                        break;
                    case 23:
                        this.f7709y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7709y);
                        break;
                    case 24:
                        this.f7710z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7710z);
                        break;
                    case 25:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                        break;
                    case 27:
                        this.f7663a0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7663a0);
                        break;
                    case 28:
                        this.f7665b0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7665b0);
                        break;
                    case NOTIFICATION_REDIRECT_VALUE:
                        this.G = typedArrayObtainStyledAttributes.getFloat(index, this.G);
                        break;
                    case 30:
                        this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                        break;
                    case TEMPLATE_HTML_SIZE_VALUE:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.P = i13;
                        if (i13 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i14 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.Q = i14;
                        if (i14 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.R) == -2) {
                                this.R = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.T) == -2) {
                                this.T = -2;
                            }
                        }
                        break;
                    case 35:
                        this.V = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.V));
                        this.P = 2;
                        break;
                    case 36:
                        try {
                            this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.S) == -2) {
                                this.S = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.U) == -2) {
                                this.U = -2;
                            }
                        }
                        break;
                    case 38:
                        this.W = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.W));
                        this.Q = 2;
                        break;
                    default:
                        switch (i12) {
                            case 44:
                                androidx.constraintlayout.widget.b.M(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.L = typedArrayObtainStyledAttributes.getFloat(index, this.L);
                                break;
                            case 46:
                                this.M = typedArrayObtainStyledAttributes.getFloat(index, this.M);
                                break;
                            case 47:
                                this.N = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                this.O = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.X = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.X);
                                break;
                            case 50:
                                this.Y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Y);
                                break;
                            case AD_REWARD_USER_VALUE:
                                this.f7667c0 = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7688n);
                                this.f7688n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f7688n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7690o);
                                this.f7690o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f7690o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            default:
                                switch (i12) {
                                    case 64:
                                        androidx.constraintlayout.widget.b.K(this, typedArrayObtainStyledAttributes, index, 0);
                                        this.E = true;
                                        break;
                                    case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                        androidx.constraintlayout.widget.b.K(this, typedArrayObtainStyledAttributes, index, 1);
                                        this.F = true;
                                        break;
                                    case 66:
                                        this.f7669d0 = typedArrayObtainStyledAttributes.getInt(index, this.f7669d0);
                                        break;
                                    case 67:
                                        this.f7668d = typedArrayObtainStyledAttributes.getBoolean(index, this.f7668d);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            c();
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7662a = -1;
            this.f7664b = -1;
            this.f7666c = -1.0f;
            this.f7668d = true;
            this.f7670e = -1;
            this.f7672f = -1;
            this.f7674g = -1;
            this.f7676h = -1;
            this.f7678i = -1;
            this.f7680j = -1;
            this.f7682k = -1;
            this.f7684l = -1;
            this.f7686m = -1;
            this.f7688n = -1;
            this.f7690o = -1;
            this.f7692p = -1;
            this.f7694q = 0;
            this.f7696r = 0.0f;
            this.f7698s = -1;
            this.f7700t = -1;
            this.f7702u = -1;
            this.f7704v = -1;
            this.f7706w = Integer.MIN_VALUE;
            this.f7708x = Integer.MIN_VALUE;
            this.f7709y = Integer.MIN_VALUE;
            this.f7710z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7663a0 = false;
            this.f7665b0 = false;
            this.f7667c0 = null;
            this.f7669d0 = 0;
            this.f7671e0 = true;
            this.f7673f0 = true;
            this.f7675g0 = false;
            this.f7677h0 = false;
            this.f7679i0 = false;
            this.f7681j0 = false;
            this.f7683k0 = false;
            this.f7685l0 = -1;
            this.f7687m0 = -1;
            this.f7689n0 = -1;
            this.f7691o0 = -1;
            this.f7693p0 = Integer.MIN_VALUE;
            this.f7695q0 = Integer.MIN_VALUE;
            this.f7697r0 = 0.5f;
            this.f7705v0 = new ConstraintWidget();
            this.f7707w0 = false;
        }

        public String a() {
            return this.f7667c0;
        }

        public ConstraintWidget b() {
            return this.f7705v0;
        }

        public void c() {
            this.f7677h0 = false;
            this.f7671e0 = true;
            this.f7673f0 = true;
            int i11 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i11 == -2 && this.f7663a0) {
                this.f7671e0 = false;
                if (this.P == 0) {
                    this.P = 1;
                }
            }
            int i12 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i12 == -2 && this.f7665b0) {
                this.f7673f0 = false;
                if (this.Q == 0) {
                    this.Q = 1;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.f7671e0 = false;
                if (i11 == 0 && this.P == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f7663a0 = true;
                }
            }
            if (i12 == 0 || i12 == -1) {
                this.f7673f0 = false;
                if (i12 == 0 && this.Q == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f7665b0 = true;
                }
            }
            if (this.f7666c == -1.0f && this.f7662a == -1 && this.f7664b == -1) {
                return;
            }
            this.f7677h0 = true;
            this.f7671e0 = true;
            this.f7673f0 = true;
            if (!(this.f7705v0 instanceof f)) {
                this.f7705v0 = new f();
            }
            ((f) this.f7705v0).E1(this.Z);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x004a  */
        /* JADX WARN: Code duplicated, block: B:20:0x0051  */
        /* JADX WARN: Code duplicated, block: B:23:0x0058  */
        /* JADX WARN: Code duplicated, block: B:26:0x005e  */
        /* JADX WARN: Code duplicated, block: B:29:0x0064  */
        /* JADX WARN: Code duplicated, block: B:38:0x007a  */
        /* JADX WARN: Code duplicated, block: B:39:0x0082 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:40:0x0084  */
        /* JADX WARN: Code duplicated, block: B:41:0x008b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x008d  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            int i16 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i17 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i11);
            boolean z10 = false;
            boolean z11 = 1 == getLayoutDirection();
            this.f7689n0 = -1;
            this.f7691o0 = -1;
            this.f7685l0 = -1;
            this.f7687m0 = -1;
            this.f7693p0 = this.f7706w;
            this.f7695q0 = this.f7709y;
            float f11 = this.G;
            this.f7697r0 = f11;
            int i18 = this.f7662a;
            this.f7699s0 = i18;
            int i19 = this.f7664b;
            this.f7701t0 = i19;
            float f12 = this.f7666c;
            this.f7703u0 = f12;
            if (z11) {
                int i20 = this.f7698s;
                if (i20 != -1) {
                    this.f7689n0 = i20;
                } else {
                    int i21 = this.f7700t;
                    if (i21 != -1) {
                        this.f7691o0 = i21;
                    } else {
                        i12 = this.f7702u;
                        if (i12 != -1) {
                            this.f7687m0 = i12;
                            z10 = true;
                        }
                        i13 = this.f7704v;
                        if (i13 != -1) {
                            this.f7685l0 = i13;
                            z10 = true;
                        }
                        i14 = this.A;
                        if (i14 != Integer.MIN_VALUE) {
                            this.f7695q0 = i14;
                        }
                        i15 = this.B;
                        if (i15 != Integer.MIN_VALUE) {
                            this.f7693p0 = i15;
                        }
                        if (z10) {
                            this.f7697r0 = 1.0f - f11;
                        }
                        if (this.f7677h0 && this.Z == 1 && this.f7668d) {
                            if (f12 != -1.0f) {
                                this.f7703u0 = 1.0f - f12;
                                this.f7699s0 = -1;
                                this.f7701t0 = -1;
                            } else if (i18 != -1) {
                                this.f7701t0 = i18;
                                this.f7699s0 = -1;
                                this.f7703u0 = -1.0f;
                            } else if (i19 != -1) {
                                this.f7699s0 = i19;
                                this.f7701t0 = -1;
                                this.f7703u0 = -1.0f;
                            }
                        }
                    }
                }
                z10 = true;
                i12 = this.f7702u;
                if (i12 != -1) {
                    this.f7687m0 = i12;
                    z10 = true;
                }
                i13 = this.f7704v;
                if (i13 != -1) {
                    this.f7685l0 = i13;
                    z10 = true;
                }
                i14 = this.A;
                if (i14 != Integer.MIN_VALUE) {
                    this.f7695q0 = i14;
                }
                i15 = this.B;
                if (i15 != Integer.MIN_VALUE) {
                    this.f7693p0 = i15;
                }
                if (z10) {
                    this.f7697r0 = 1.0f - f11;
                }
                if (this.f7677h0) {
                    if (f12 != -1.0f) {
                        this.f7703u0 = 1.0f - f12;
                        this.f7699s0 = -1;
                        this.f7701t0 = -1;
                    } else if (i18 != -1) {
                        this.f7701t0 = i18;
                        this.f7699s0 = -1;
                        this.f7703u0 = -1.0f;
                    } else if (i19 != -1) {
                        this.f7699s0 = i19;
                        this.f7701t0 = -1;
                        this.f7703u0 = -1.0f;
                    }
                }
            } else {
                int i22 = this.f7698s;
                if (i22 != -1) {
                    this.f7687m0 = i22;
                }
                int i23 = this.f7700t;
                if (i23 != -1) {
                    this.f7685l0 = i23;
                }
                int i24 = this.f7702u;
                if (i24 != -1) {
                    this.f7689n0 = i24;
                }
                int i25 = this.f7704v;
                if (i25 != -1) {
                    this.f7691o0 = i25;
                }
                int i26 = this.A;
                if (i26 != Integer.MIN_VALUE) {
                    this.f7693p0 = i26;
                }
                int i27 = this.B;
                if (i27 != Integer.MIN_VALUE) {
                    this.f7695q0 = i27;
                }
            }
            if (this.f7702u == -1 && this.f7704v == -1 && this.f7700t == -1 && this.f7698s == -1) {
                int i28 = this.f7674g;
                if (i28 != -1) {
                    this.f7689n0 = i28;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i17 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i17;
                    }
                } else {
                    int i29 = this.f7676h;
                    if (i29 != -1) {
                        this.f7691o0 = i29;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i17 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i17;
                        }
                    }
                }
                int i30 = this.f7670e;
                if (i30 != -1) {
                    this.f7685l0 = i30;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i16 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i16;
                    return;
                }
                int i31 = this.f7672f;
                if (i31 != -1) {
                    this.f7687m0 = i31;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i16 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i16;
                }
            }
        }
    }

    class c implements androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ConstraintLayout f7712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f7713b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7714c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f7715d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7716e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f7717f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f7718g;

        public c(ConstraintLayout constraintLayout) {
            this.f7712a = constraintLayout;
        }

        private boolean d(int i11, int i12, int i13) {
            if (i11 == i12) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i11);
            View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i12);
            int size = View.MeasureSpec.getSize(i12);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i13 == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b
        public final void a() {
            int childCount = this.f7712a.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = this.f7712a.getChildAt(i11);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).updatePostMeasure(this.f7712a);
                }
            }
            int size = this.f7712a.mConstraintHelpers.size();
            if (size > 0) {
                for (int i12 = 0; i12 < size; i12++) {
                    ((ConstraintHelper) this.f7712a.mConstraintHelpers.get(i12)).updatePostMeasure(this.f7712a);
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0060b
        public final void b(ConstraintWidget constraintWidget, androidx.constraintlayout.core.widgets.analyzer.b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int iMax2;
            int iMakeMeasureSpec3;
            int i11;
            if (constraintWidget == null) {
                return;
            }
            if (constraintWidget.X() == 8 && !constraintWidget.l0()) {
                aVar.f6944e = 0;
                aVar.f6945f = 0;
                aVar.f6946g = 0;
                return;
            }
            if (constraintWidget.M() == null) {
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f6940a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = aVar.f6941b;
            int i12 = aVar.f6942c;
            int i13 = aVar.f6943d;
            int i14 = this.f7713b + this.f7714c;
            int i15 = this.f7715d;
            View view = (View) constraintWidget.u();
            int[] iArr = a.f7661a;
            int i16 = iArr[dimensionBehaviour.ordinal()];
            if (i16 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else if (i16 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7717f, i15, -2);
            } else if (i16 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7717f, i15 + constraintWidget.D(), -1);
            } else if (i16 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7717f, i15, -2);
                boolean z10 = constraintWidget.f6900w == 1;
                int i17 = aVar.f6949j;
                if (i17 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6938l || i17 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6939m) {
                    boolean z11 = view.getMeasuredHeight() == constraintWidget.z();
                    if (aVar.f6949j == androidx.constraintlayout.core.widgets.analyzer.b.a.f6939m || !z10 || ((z10 && z11) || (view instanceof Placeholder) || constraintWidget.p0())) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.Y(), 1073741824);
                    }
                }
            }
            int i18 = iArr[dimensionBehaviour2.ordinal()];
            if (i18 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
            } else if (i18 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7718g, i14, -2);
            } else if (i18 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7718g, i14 + constraintWidget.W(), -1);
            } else if (i18 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7718g, i14, -2);
                boolean z12 = constraintWidget.f6902x == 1;
                int i19 = aVar.f6949j;
                if (i19 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6938l || i19 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6939m) {
                    boolean z13 = view.getMeasuredWidth() == constraintWidget.Y();
                    if (aVar.f6949j == androidx.constraintlayout.core.widgets.analyzer.b.a.f6939m || !z12 || ((z12 && z13) || (view instanceof Placeholder) || constraintWidget.q0())) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.z(), 1073741824);
                    }
                }
            }
            androidx.constraintlayout.core.widgets.d dVar = (androidx.constraintlayout.core.widgets.d) constraintWidget.M();
            if (dVar != null && g.b(ConstraintLayout.this.mOptimizationLevel, 256) && view.getMeasuredWidth() == constraintWidget.Y() && view.getMeasuredWidth() < dVar.Y() && view.getMeasuredHeight() == constraintWidget.z() && view.getMeasuredHeight() < dVar.z() && view.getBaseline() == constraintWidget.r() && !constraintWidget.o0() && d(constraintWidget.E(), iMakeMeasureSpec, constraintWidget.Y()) && d(constraintWidget.F(), iMakeMeasureSpec2, constraintWidget.z())) {
                aVar.f6944e = constraintWidget.Y();
                aVar.f6945f = constraintWidget.z();
                aVar.f6946g = constraintWidget.r();
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z14 = dimensionBehaviour == dimensionBehaviour3;
            boolean z15 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z16 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z17 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z18 = z14 && constraintWidget.f6867f0 > 0.0f;
            boolean z19 = z15 && constraintWidget.f6867f0 > 0.0f;
            if (view == null) {
                return;
            }
            b bVar = (b) view.getLayoutParams();
            int i20 = aVar.f6949j;
            if (i20 != androidx.constraintlayout.core.widgets.analyzer.b.a.f6938l && i20 != androidx.constraintlayout.core.widgets.analyzer.b.a.f6939m && z14 && constraintWidget.f6900w == 0 && z15 && constraintWidget.f6902x == 0) {
                i11 = -1;
                iMax2 = 0;
                baseline = 0;
                iMax = 0;
            } else {
                if ((view instanceof VirtualLayout) && (constraintWidget instanceof i)) {
                    ((VirtualLayout) view).onMeasure((i) constraintWidget, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                constraintWidget.Z0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i21 = constraintWidget.f6906z;
                iMax = i21 > 0 ? Math.max(i21, measuredWidth) : measuredWidth;
                int i22 = constraintWidget.A;
                if (i22 > 0) {
                    iMax = Math.min(i22, iMax);
                }
                int i23 = constraintWidget.C;
                iMax2 = i23 > 0 ? Math.max(i23, measuredHeight) : measuredHeight;
                int i24 = constraintWidget.D;
                if (i24 > 0) {
                    iMax2 = Math.min(i24, iMax2);
                }
                if (!g.b(ConstraintLayout.this.mOptimizationLevel, 1)) {
                    if (z18 && z16) {
                        iMax = (int) ((iMax2 * constraintWidget.f6867f0) + 0.5f);
                    } else if (z19 && z17) {
                        iMax2 = (int) ((iMax / constraintWidget.f6867f0) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight != iMax2) {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    if (measuredHeight != iMax2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    constraintWidget.Z0(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    iMax = view.getMeasuredWidth();
                    iMax2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i11 = -1;
            }
            boolean z20 = baseline != i11;
            aVar.f6948i = (iMax == aVar.f6942c && iMax2 == aVar.f6943d) ? false : true;
            if (bVar.f7675g0) {
                z20 = true;
            }
            if (z20 && baseline != -1 && constraintWidget.r() != baseline) {
                aVar.f6948i = true;
            }
            aVar.f6944e = iMax;
            aVar.f6945f = iMax2;
            aVar.f6947h = z20;
            aVar.f6946g = baseline;
        }

        public void c(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f7713b = i13;
            this.f7714c = i14;
            this.f7715d = i15;
            this.f7716e = i16;
            this.f7717f = i11;
            this.f7718g = i12;
        }
    }

    public ConstraintLayout(@NonNull Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(null, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, i11, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, i11, i12);
    }

    private final ConstraintWidget a(int i11) {
        if (i11 == 0) {
            return this.mLayoutWidget;
        }
        View viewFindViewById = this.mChildrenByIds.get(i11);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i11)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.mLayoutWidget;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).f7705v0;
    }

    private void b(AttributeSet attributeSet, int i11, int i12) {
        this.mLayoutWidget.F0(this);
        this.mLayoutWidget.a2(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i11, i12);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i13 = 0; i13 < indexCount; i13++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i13);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = typedArrayObtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == R$styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.mConstraintSet = bVar;
                        bVar.H(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.b2(this.mOptimizationLevel);
    }

    private void c() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void e() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i11));
            if (viewWidget != null) {
                viewWidget.v0();
            }
        }
        if (zIsInEditMode) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    a(childAt.getId()).G0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt2 = getChildAt(i13);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.b bVar = this.mConstraintSet;
        if (bVar != null) {
            bVar.k(this, true);
        }
        this.mLayoutWidget.y1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i14 = 0; i14 < size; i14++) {
                this.mConstraintHelpers.get(i14).updatePreLayout(this);
            }
        }
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt3 = getChildAt(i15);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).updatePreLayout(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt4 = getChildAt(i16);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt5 = getChildAt(i17);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                b bVar2 = (b) childAt5.getLayoutParams();
                this.mLayoutWidget.a(viewWidget2);
                applyConstraintsFromLayoutParams(zIsInEditMode, childAt5, viewWidget2, bVar2, this.mTempMapIdToWidget);
            }
        }
    }

    private void f(ConstraintWidget constraintWidget, b bVar, SparseArray sparseArray, int i11, ConstraintAnchor.Type type) {
        View view = this.mChildrenByIds.get(i11);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i11);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.f7675g0 = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            b bVar2 = (b) view.getLayoutParams();
            bVar2.f7675g0 = true;
            bVar2.f7705v0.O0(true);
        }
        constraintWidget.q(type2).b(constraintWidget2.q(type), bVar.D, bVar.C, true);
        constraintWidget.O0(true);
        constraintWidget.q(ConstraintAnchor.Type.TOP).q();
        constraintWidget.q(ConstraintAnchor.Type.BOTTOM).q();
    }

    private boolean g() {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (getChildAt(i11).isLayoutRequested()) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            e();
        }
        return z10;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static d getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new d();
        }
        return sSharedValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyConstraintsFromLayoutParams(boolean z10, View view, ConstraintWidget constraintWidget, b bVar, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        int i11;
        bVar.c();
        bVar.f7707w0 = false;
        constraintWidget.n1(view.getVisibility());
        if (bVar.f7681j0) {
            constraintWidget.X0(true);
            constraintWidget.n1(8);
        }
        constraintWidget.F0(view);
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).resolveRtl(constraintWidget, this.mLayoutWidget.U1());
        }
        if (bVar.f7677h0) {
            f fVar = (f) constraintWidget;
            int i12 = bVar.f7699s0;
            int i13 = bVar.f7701t0;
            float f11 = bVar.f7703u0;
            if (f11 != -1.0f) {
                fVar.D1(f11);
                return;
            } else if (i12 != -1) {
                fVar.B1(i12);
                return;
            } else {
                if (i13 != -1) {
                    fVar.C1(i13);
                    return;
                }
                return;
            }
        }
        int i14 = bVar.f7685l0;
        int i15 = bVar.f7687m0;
        int i16 = bVar.f7689n0;
        int i17 = bVar.f7691o0;
        int i18 = bVar.f7693p0;
        int i19 = bVar.f7695q0;
        float f12 = bVar.f7697r0;
        int i20 = bVar.f7692p;
        if (i20 != -1) {
            ConstraintWidget constraintWidget6 = sparseArray.get(i20);
            if (constraintWidget6 != null) {
                constraintWidget.m(constraintWidget6, bVar.f7696r, bVar.f7694q);
            }
        } else {
            if (i14 != -1) {
                ConstraintWidget constraintWidget7 = sparseArray.get(i14);
                if (constraintWidget7 != null) {
                    ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                    constraintWidget.g0(type, constraintWidget7, type, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i18);
                }
            } else if (i15 != -1 && (constraintWidget2 = sparseArray.get(i15)) != null) {
                constraintWidget.g0(ConstraintAnchor.Type.LEFT, constraintWidget2, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i18);
            }
            if (i16 != -1) {
                ConstraintWidget constraintWidget8 = sparseArray.get(i16);
                if (constraintWidget8 != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.RIGHT, constraintWidget8, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i19);
                }
            } else if (i17 != -1 && (constraintWidget3 = sparseArray.get(i17)) != null) {
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.g0(type2, constraintWidget3, type2, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i19);
            }
            int i21 = bVar.f7678i;
            if (i21 != -1) {
                ConstraintWidget constraintWidget9 = sparseArray.get(i21);
                if (constraintWidget9 != null) {
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    constraintWidget.g0(type3, constraintWidget9, type3, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f7708x);
                }
            } else {
                int i22 = bVar.f7680j;
                if (i22 != -1 && (constraintWidget4 = sparseArray.get(i22)) != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.TOP, constraintWidget4, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f7708x);
                }
            }
            int i23 = bVar.f7682k;
            if (i23 != -1) {
                ConstraintWidget constraintWidget10 = sparseArray.get(i23);
                if (constraintWidget10 != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.BOTTOM, constraintWidget10, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f7710z);
                }
            } else {
                int i24 = bVar.f7684l;
                if (i24 != -1 && (constraintWidget5 = sparseArray.get(i24)) != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                    constraintWidget.g0(type4, constraintWidget5, type4, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f7710z);
                }
            }
            int i25 = bVar.f7686m;
            if (i25 != -1) {
                f(constraintWidget, bVar, sparseArray, i25, ConstraintAnchor.Type.BASELINE);
            } else {
                int i26 = bVar.f7688n;
                if (i26 != -1) {
                    f(constraintWidget, bVar, sparseArray, i26, ConstraintAnchor.Type.TOP);
                } else {
                    int i27 = bVar.f7690o;
                    if (i27 != -1) {
                        f(constraintWidget, bVar, sparseArray, i27, ConstraintAnchor.Type.BOTTOM);
                    }
                }
            }
            if (f12 >= 0.0f) {
                constraintWidget.Q0(f12);
            }
            float f13 = bVar.H;
            if (f13 >= 0.0f) {
                constraintWidget.h1(f13);
            }
        }
        if (z10 && ((i11 = bVar.X) != -1 || bVar.Y != -1)) {
            constraintWidget.f1(i11, bVar.Y);
        }
        if (bVar.f7671e0) {
            constraintWidget.T0(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.o1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.f7663a0) {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.q(ConstraintAnchor.Type.LEFT).f6852g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            constraintWidget.q(ConstraintAnchor.Type.RIGHT).f6852g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.o1(0);
        }
        if (bVar.f7673f0) {
            constraintWidget.k1(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.P0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.f7665b0) {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.q(ConstraintAnchor.Type.TOP).f6852g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            constraintWidget.q(ConstraintAnchor.Type.BOTTOM).f6852g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.P0(0);
        }
        constraintWidget.H0(bVar.I);
        constraintWidget.V0(bVar.L);
        constraintWidget.m1(bVar.M);
        constraintWidget.R0(bVar.N);
        constraintWidget.i1(bVar.O);
        constraintWidget.p1(bVar.f7669d0);
        constraintWidget.U0(bVar.P, bVar.R, bVar.T, bVar.V);
        constraintWidget.l1(bVar.Q, bVar.S, bVar.U, bVar.W);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i11 = 0; i11 < size; i11++) {
                this.mConstraintHelpers.get(i11).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i13 = Integer.parseInt(strArrSplit[0]);
                        int i14 = Integer.parseInt(strArrSplit[1]);
                        int i15 = Integer.parseInt(strArrSplit[2]);
                        int i16 = (int) ((i13 / 1080.0f) * width);
                        int i17 = (int) ((i14 / 1920.0f) * height);
                        int i18 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(FlowLayout.SPACING_AUTO);
                        float f11 = i16;
                        float f12 = i17;
                        float f13 = i16 + ((int) ((i15 / 1080.0f) * width));
                        canvas.drawLine(f11, f12, f13, f12, paint);
                        float f14 = i17 + i18;
                        canvas.drawLine(f13, f12, f13, f14, paint);
                        canvas.drawLine(f13, f14, f11, f14, paint);
                        canvas.drawLine(f11, f14, f11, f12, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f11, f12, f13, f14, paint);
                        canvas.drawLine(f11, f14, f13, f12, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(androidx.constraintlayout.core.e eVar) {
        this.mMetrics = eVar;
        this.mLayoutWidget.M1(eVar);
    }

    @Override // android.view.View
    public void forceLayout() {
        c();
        super.forceLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    @Override // android.view.ViewGroup
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public Object getDesignInformation(int i11, Object obj) {
        if (i11 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.mDesignIds;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.O1();
    }

    public String getSceneString() {
        int id2;
        StringBuilder sb2 = new StringBuilder();
        if (this.mLayoutWidget.f6884o == null) {
            int id3 = getId();
            if (id3 != -1) {
                this.mLayoutWidget.f6884o = getContext().getResources().getResourceEntryName(id3);
            } else {
                this.mLayoutWidget.f6884o = "parent";
            }
        }
        if (this.mLayoutWidget.v() == null) {
            androidx.constraintlayout.core.widgets.d dVar = this.mLayoutWidget;
            dVar.G0(dVar.f6884o);
            Log.v(TAG, " setDebugName " + this.mLayoutWidget.v());
        }
        for (ConstraintWidget constraintWidget : this.mLayoutWidget.v1()) {
            View view = (View) constraintWidget.u();
            if (view != null) {
                if (constraintWidget.f6884o == null && (id2 = view.getId()) != -1) {
                    constraintWidget.f6884o = getContext().getResources().getResourceEntryName(id2);
                }
                if (constraintWidget.v() == null) {
                    constraintWidget.G0(constraintWidget.f6884o);
                    Log.v(TAG, " setDebugName " + constraintWidget.v());
                }
            }
        }
        this.mLayoutWidget.Q(sb2);
        return sb2.toString();
    }

    public View getViewById(int i11) {
        return this.mChildrenByIds.get(i11);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f7705v0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f7705v0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isRtl() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    public void loadLayoutDescription(int i11) {
        if (i11 == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.a(getContext(), this, i11);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            b bVar = (b) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = bVar.f7705v0;
            if ((childAt.getVisibility() != 8 || bVar.f7677h0 || bVar.f7679i0 || bVar.f7683k0 || zIsInEditMode) && !bVar.f7681j0) {
                int iZ = constraintWidget.Z();
                int iA0 = constraintWidget.a0();
                int iY = constraintWidget.Y() + iZ;
                int iZ2 = constraintWidget.z() + iA0;
                childAt.layout(iZ, iA0, iY, iZ2);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iZ, iA0, iY, iZ2);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i16 = 0; i16 < size; i16++) {
                this.mConstraintHelpers.get(i16).updatePostLayout(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.mOnMeasureWidthMeasureSpec == i11) {
            int i13 = this.mOnMeasureHeightMeasureSpec;
        }
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                if (getChildAt(i14).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
            }
        }
        this.mOnMeasureWidthMeasureSpec = i11;
        this.mOnMeasureHeightMeasureSpec = i12;
        this.mLayoutWidget.d2(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (g()) {
                this.mLayoutWidget.f2();
            }
        }
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i11, i12);
        resolveMeasuredDimension(i11, i12, this.mLayoutWidget.Y(), this.mLayoutWidget.z(), this.mLayoutWidget.V1(), this.mLayoutWidget.T1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof f)) {
            b bVar = (b) view.getLayoutParams();
            f fVar = new f();
            bVar.f7705v0 = fVar;
            bVar.f7677h0 = true;
            fVar.E1(bVar.Z);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((b) view.getLayoutParams()).f7679i0 = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.x1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    protected void parseLayoutDescription(int i11) {
        this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.a(getContext(), this, i11);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        c();
        super.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resolveMeasuredDimension(int i11, int i12, int i13, int i14, boolean z10, boolean z11) {
        c cVar = this.mMeasurer;
        int i15 = cVar.f7716e;
        int iResolveSizeAndState = View.resolveSizeAndState(i13 + cVar.f7715d, i11, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i14 + i15, i12, 0) & 16777215;
        int iMin = Math.min(this.mMaxWidth, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.mMaxHeight, iResolveSizeAndState2);
        if (z10) {
            iMin |= 16777216;
        }
        if (z11) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.mLastMeasureWidth = iMin;
        this.mLastMeasureHeight = iMin2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resolveSystem(androidx.constraintlayout.core.widgets.d dVar, int i11, int i12, int i13) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        int mode2 = View.MeasureSpec.getMode(i13);
        int size2 = View.MeasureSpec.getSize(i13);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i14 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i12, i13, iMax2, iMax3, paddingWidth, i14);
        int iMax4 = Math.max(0, getPaddingStart());
        int iMax5 = Math.max(0, getPaddingEnd());
        if (iMax4 > 0 || iMax5 > 0) {
            iMax = isRtl() ? iMax5 : iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i15 = size - paddingWidth;
        int i16 = size2 - i14;
        setSelfDimensionBehaviour(dVar, mode, i15, mode2, i16);
        dVar.W1(i11, mode, i15, mode2, i16, this.mLastMeasureWidth, this.mLastMeasureHeight, iMax, iMax2);
    }

    public void setConstraintSet(androidx.constraintlayout.widget.b bVar) {
        this.mConstraintSet = bVar;
    }

    public void setDesignInformation(int i11, Object obj, Object obj2) {
        if (i11 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            Integer num = (Integer) obj2;
            num.intValue();
            this.mDesignIds.put(strSubstring, num);
        }
    }

    @Override // android.view.View
    public void setId(int i11) {
        this.mChildrenByIds.remove(getId());
        super.setId(i11);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i11) {
        if (i11 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i11;
        requestLayout();
    }

    public void setMaxWidth(int i11) {
        if (i11 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i11;
        requestLayout();
    }

    public void setMinHeight(int i11) {
        if (i11 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i11;
        requestLayout();
    }

    public void setMinWidth(int i11) {
        if (i11 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i11;
        requestLayout();
    }

    public void setOnConstraintsChanged(androidx.constraintlayout.widget.c cVar) {
        this.mConstraintsChangedListener = cVar;
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.c(cVar);
        }
    }

    public void setOptimizationLevel(int i11) {
        this.mOptimizationLevel = i11;
        this.mLayoutWidget.b2(i11);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[PHI: r2
  0x003e: PHI (r2v4 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
  (r2v3 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
  (r2v0 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
 binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    protected void setSelfDimensionBehaviour(androidx.constraintlayout.core.widgets.d dVar, int i11, int i12, int i13, int i14) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        c cVar = this.mMeasurer;
        int i15 = cVar.f7716e;
        int i16 = cVar.f7715d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i11 == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i12 = Math.max(0, this.mMinWidth);
            }
        } else if (i11 == 0) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            i12 = childCount == 0 ? Math.max(0, this.mMinWidth) : 0;
        } else if (i11 != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
        } else {
            i12 = Math.min(this.mMaxWidth - i16, i12);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (i13 == Integer.MIN_VALUE) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i14 = Math.max(0, this.mMinHeight);
            }
        } else if (i13 == 0) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i14 = Math.max(0, this.mMinHeight);
            } else {
                i14 = 0;
            }
        } else if (i13 != 1073741824) {
            i14 = 0;
        } else {
            i14 = Math.min(this.mMaxHeight - i15, i14);
        }
        if (i12 != dVar.Y() || i14 != dVar.z()) {
            dVar.S1();
        }
        dVar.q1(0);
        dVar.r1(0);
        dVar.b1(this.mMaxWidth - i16);
        dVar.a1(this.mMaxHeight - i15);
        dVar.e1(0);
        dVar.d1(0);
        dVar.T0(dimensionBehaviour);
        dVar.o1(i12);
        dVar.k1(dimensionBehaviour2);
        dVar.P0(i14);
        dVar.e1(this.mMinWidth - i16);
        dVar.d1(this.mMinHeight - i15);
    }

    public void setState(int i11, int i12, int i13) {
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i11, i12, i13);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
