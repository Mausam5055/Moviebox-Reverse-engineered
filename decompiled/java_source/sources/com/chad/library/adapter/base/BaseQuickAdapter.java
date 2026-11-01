package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseQuickAdapter extends RecyclerView.Adapter {
    public static final a A = new a(null);
    public static final int B = 268435729;
    public static final int C = 268436002;
    public static final int D = 268436275;
    public static final int E = 268436821;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f21142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<Object> f21143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f21144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f21145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f21146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f21147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f21148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f21149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f21150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k6.b f21151j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private m6.c f21152k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private LinearLayout f21153l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LinearLayout f21154m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private FrameLayout f21155n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f21156o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private p6.a f21157p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private p6.d f21158q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private p6.e f21159r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private p6.b f21160s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private p6.c f21161t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private r6.g f21162u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private r6.a f21163v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private r6.f f21164w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RecyclerView f21165x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final LinkedHashSet<Integer> f21166y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final LinkedHashSet<Integer> f21167z;

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21168a;

        static {
            int[] iArr = new int[AnimationType.values().length];
            try {
                iArr[AnimationType.AlphaIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationType.ScaleIn.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationType.SlideInBottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationType.SlideInLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnimationType.SlideInRight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f21168a = iArr;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class c extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ RecyclerView.m f21170f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ GridLayoutManager.c f21171g;

        c(RecyclerView.m mVar, GridLayoutManager.c cVar) {
            this.f21170f = mVar;
            this.f21171g = cVar;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            int itemViewType = BaseQuickAdapter.this.getItemViewType(i11);
            if (itemViewType == 268435729 && BaseQuickAdapter.this.b0()) {
                return 1;
            }
            if (itemViewType == 268436275 && BaseQuickAdapter.this.W()) {
                return 1;
            }
            BaseQuickAdapter.j(BaseQuickAdapter.this);
            return BaseQuickAdapter.this.u0(itemViewType) ? ((GridLayoutManager) this.f21170f).U() : this.f21171g.f(i11);
        }
    }

    public BaseQuickAdapter(int i11, List list) {
        this.f21142a = i11;
        this.f21143b = list == null ? new ArrayList() : list;
        this.f21146e = true;
        this.f21150i = true;
        this.f21156o = -1;
        D();
        this.f21166y = new LinkedHashSet<>();
        this.f21167z = new LinkedHashSet<>();
    }

    public /* synthetic */ BaseQuickAdapter(int i11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i12 & 2) != 0 ? null : list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v11) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v11, "v");
        this$0.r1(v11, iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v11) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v11, "v");
        this$0.v1(v11, iA0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v11) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v11, "v");
        return this$0.x1(v11, iA0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D() {
        if (this instanceof r6.i) {
            this.f21164w = ((r6.i) this).b(this);
        }
        if (this instanceof r6.l) {
            this.f21162u = ((r6.l) this).f(this);
        }
    }

    private final BaseViewHolder H(Class cls, View view) {
        try {
            if (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
                Constructor declaredConstructor = cls.getDeclaredConstructor(View.class);
                Intrinsics.g(declaredConstructor, "z.getDeclaredConstructor(View::class.java)");
                declaredConstructor.setAccessible(true);
                Object objNewInstance = declaredConstructor.newInstance(view);
                Intrinsics.f(objNewInstance, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
                return (BaseViewHolder) objNewInstance;
            }
            Constructor declaredConstructor2 = cls.getDeclaredConstructor(getClass(), View.class);
            Intrinsics.g(declaredConstructor2, "z.getDeclaredConstructor…aClass, View::class.java)");
            declaredConstructor2.setAccessible(true);
            Object objNewInstance2 = declaredConstructor2.newInstance(this, view);
            Intrinsics.f(objNewInstance2, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
            return (BaseViewHolder) objNewInstance2;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return null;
        } catch (InstantiationException e12) {
            e12.printStackTrace();
            return null;
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
            return null;
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
            return null;
        }
    }

    public static /* synthetic */ void W0(BaseQuickAdapter baseQuickAdapter, List list, Runnable runnable, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDiffNewData");
        }
        if ((i11 & 2) != 0) {
            runnable = null;
        }
        baseQuickAdapter.V0(list, runnable);
    }

    public static /* synthetic */ int c1(BaseQuickAdapter baseQuickAdapter, View view, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFooterView");
        }
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        return baseQuickAdapter.b1(view, i11, i12);
    }

    private final Class e0(Class cls) {
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType)) {
                return null;
            }
            Type[] types = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
            Intrinsics.g(types, "types");
            for (Type type : types) {
                if (type instanceof Class) {
                    if (BaseViewHolder.class.isAssignableFrom((Class) type)) {
                        return (Class) type;
                    }
                } else if (type instanceof ParameterizedType) {
                    Type rawType = ((ParameterizedType) type).getRawType();
                    if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                        return (Class) rawType;
                    }
                } else {
                    continue;
                }
            }
            return null;
        } catch (TypeNotPresentException e11) {
            e11.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e12) {
            e12.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e13) {
            e13.printStackTrace();
            return null;
        }
    }

    public static final /* synthetic */ p6.a j(BaseQuickAdapter baseQuickAdapter) {
        baseQuickAdapter.getClass();
        return null;
    }

    private final void k(RecyclerView.b0 b0Var) {
        if (this.f21149h) {
            if (!this.f21150i || b0Var.getLayoutPosition() > this.f21156o) {
                k6.b aVar = this.f21151j;
                if (aVar == null) {
                    aVar = new k6.a(0.0f, 1, null);
                }
                View view = b0Var.itemView;
                Intrinsics.g(view, "holder.itemView");
                for (Animator animator : aVar.a(view)) {
                    A1(animator, b0Var.getLayoutPosition());
                }
                this.f21156o = b0Var.getLayoutPosition();
            }
        }
    }

    public static /* synthetic */ int k1(BaseQuickAdapter baseQuickAdapter, View view, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHeaderView");
        }
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        return baseQuickAdapter.j1(view, i11, i12);
    }

    public static /* synthetic */ int u(BaseQuickAdapter baseQuickAdapter, View view, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addFooterView");
        }
        if ((i13 & 2) != 0) {
            i11 = -1;
        }
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        return baseQuickAdapter.t(view, i11, i12);
    }

    public static /* synthetic */ int y(BaseQuickAdapter baseQuickAdapter, View view, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addHeaderView");
        }
        if ((i13 & 2) != 0) {
            i11 = -1;
        }
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        return baseQuickAdapter.x(view, i11, i12);
    }

    protected void A0(BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
    }

    protected void A1(Animator anim, int i11) {
        Intrinsics.h(anim, "anim");
        anim.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (u0(holder.getItemViewType())) {
            f1(holder);
        } else {
            k(holder);
        }
    }

    @Deprecated
    public void C0(int i11) {
        G0(i11);
    }

    public void D0(Object obj) {
        int iIndexOf = this.f21143b.indexOf(obj);
        if (iIndexOf == -1) {
            return;
        }
        G0(iIndexOf);
    }

    protected final void E(int i11) {
        if (this.f21143b.size() == i11) {
            notifyDataSetChanged();
        }
    }

    public final void E0() {
        if (r0()) {
            LinearLayout linearLayout = this.f21154m;
            if (linearLayout == null) {
                Intrinsics.z("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int iX = X();
            if (iX != -1) {
                notifyItemRemoved(iX);
            }
        }
    }

    protected abstract void F(BaseViewHolder baseViewHolder, Object obj);

    public final void F0() {
        if (s0()) {
            LinearLayout linearLayout = this.f21153l;
            if (linearLayout == null) {
                Intrinsics.z("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int iC0 = c0();
            if (iC0 != -1) {
                notifyItemRemoved(iC0);
            }
        }
    }

    protected void G(BaseViewHolder holder, Object obj, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
    }

    public void G0(int i11) {
        if (i11 >= this.f21143b.size()) {
            return;
        }
        this.f21143b.remove(i11);
        int iA0 = i11 + a0();
        notifyItemRemoved(iA0);
        E(0);
        notifyItemRangeChanged(iA0, this.f21143b.size() - iA0);
    }

    public final void H0() {
        FrameLayout frameLayout = this.f21155n;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.z("mEmptyLayout");
                frameLayout = null;
            }
            frameLayout.removeAllViews();
        }
    }

    protected BaseViewHolder I(View view) {
        Intrinsics.h(view, "view");
        Class clsE0 = null;
        for (Class<?> superclass = getClass(); clsE0 == null && superclass != null; superclass = superclass.getSuperclass()) {
            clsE0 = e0(superclass);
        }
        BaseViewHolder baseViewHolder = clsE0 == null ? new BaseViewHolder(view) : H(clsE0, view);
        return baseViewHolder == null ? new BaseViewHolder(view) : baseViewHolder;
    }

    public final void I0(View footer) {
        int iX;
        Intrinsics.h(footer, "footer");
        if (r0()) {
            LinearLayout linearLayout = this.f21154m;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.z("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeView(footer);
            LinearLayout linearLayout3 = this.f21154m;
            if (linearLayout3 == null) {
                Intrinsics.z("mFooterLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (iX = X()) == -1) {
                return;
            }
            notifyItemRemoved(iX);
        }
    }

    protected BaseViewHolder J(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return I(s6.a.a(parent, i11));
    }

    public final void J0(View header) {
        int iC0;
        Intrinsics.h(header, "header");
        if (s0()) {
            LinearLayout linearLayout = this.f21153l;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.z("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeView(header);
            LinearLayout linearLayout3 = this.f21153l;
            if (linearLayout3 == null) {
                Intrinsics.z("mHeaderLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (iC0 = c0()) == -1) {
                return;
            }
            notifyItemRemoved(iC0);
        }
    }

    public final k6.b K() {
        return this.f21151j;
    }

    @Deprecated
    public void K0(Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        n1(newData);
    }

    public final boolean L() {
        return this.f21149h;
    }

    public final void L0(k6.b bVar) {
        this.f21149h = true;
        this.f21151j = bVar;
    }

    public final LinkedHashSet<Integer> M() {
        return this.f21166y;
    }

    public final void M0(boolean z10) {
        this.f21149h = z10;
    }

    public final LinkedHashSet<Integer> N() {
        return this.f21167z;
    }

    public final void N0(boolean z10) {
        this.f21150i = z10;
    }

    protected int O() {
        return this.f21143b.size();
    }

    public final void O0(AnimationType animationType) {
        k6.b aVar;
        Intrinsics.h(animationType, "animationType");
        int i11 = b.f21168a[animationType.ordinal()];
        if (i11 == 1) {
            aVar = new k6.a(0.0f, 1, null);
        } else if (i11 == 2) {
            aVar = new k6.c(0.0f, 1, null);
        } else if (i11 == 3) {
            aVar = new k6.d();
        } else if (i11 == 4) {
            aVar = new k6.e();
        } else {
            if (i11 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            aVar = new k6.f();
        }
        L0(aVar);
    }

    protected int P(int i11) {
        return super.getItemViewType(i11);
    }

    public void P0(int i11, Object obj) {
        if (i11 >= this.f21143b.size()) {
            return;
        }
        this.f21143b.set(i11, obj);
        notifyItemChanged(i11 + a0());
    }

    @Deprecated
    public final m6.c Q() {
        return R();
    }

    public final void Q0(List<Object> list) {
        Intrinsics.h(list, "<set-?>");
        this.f21143b = list;
    }

    public final m6.c R() {
        m6.c cVar = this.f21152k;
        if (cVar == null) {
            throw new IllegalStateException("Please use setDiffCallback() or setDiffConfig() first!");
        }
        Intrinsics.e(cVar);
        return cVar;
    }

    public final void R0(DiffUtil.e diffCallback) {
        Intrinsics.h(diffCallback, "diffCallback");
        S0(new m6.d.a(diffCallback).a());
    }

    public final r6.a S() {
        throw new IllegalStateException("Please first implements DraggableModule");
    }

    public final void S0(m6.d config) {
        Intrinsics.h(config, "config");
        this.f21152k = new m6.c(this, config);
    }

    public final FrameLayout T() {
        FrameLayout frameLayout = this.f21155n;
        if (frameLayout != null) {
            if (frameLayout != null) {
                return frameLayout;
            }
            Intrinsics.z("mEmptyLayout");
        }
        return null;
    }

    public void T0(@NonNull DiffUtil.d diffResult, List<Object> list) {
        Intrinsics.h(diffResult, "diffResult");
        Intrinsics.h(list, "list");
        if (q0()) {
            q1(list);
        } else {
            diffResult.b(new m6.e(this));
            this.f21143b = list;
        }
    }

    public final LinearLayout U() {
        LinearLayout linearLayout = this.f21154m;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.z("mFooterLayout");
        }
        return null;
    }

    @JvmOverloads
    public final void U0(List<Object> list) {
        W0(this, list, null, 2, null);
    }

    public final int V() {
        return r0() ? 1 : 0;
    }

    @JvmOverloads
    public void V0(List<Object> list, Runnable runnable) {
        if (q0()) {
            q1(list);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        m6.c cVar = this.f21152k;
        if (cVar != null) {
            cVar.f(list, runnable);
        }
    }

    public final boolean W() {
        return this.f21148g;
    }

    public final int X() {
        if (!q0()) {
            return a0() + this.f21143b.size();
        }
        int i11 = (this.f21144c && s0()) ? 2 : 1;
        if (this.f21145d) {
            return i11;
        }
        return -1;
    }

    public final void X0(int i11) {
        RecyclerView recyclerView = this.f21165x;
        if (recyclerView != null) {
            View view = LayoutInflater.from(recyclerView.getContext()).inflate(i11, (ViewGroup) recyclerView, false);
            Intrinsics.g(view, "view");
            Y0(view);
        }
    }

    public final boolean Y() {
        return this.f21145d;
    }

    public final void Y0(View emptyView) {
        boolean z10;
        Intrinsics.h(emptyView, "emptyView");
        int itemCount = getItemCount();
        FrameLayout frameLayout = null;
        if (this.f21155n == null) {
            FrameLayout frameLayout2 = new FrameLayout(emptyView.getContext());
            this.f21155n = frameLayout2;
            ViewGroup.LayoutParams layoutParams = emptyView.getLayoutParams();
            frameLayout2.setLayoutParams(layoutParams != null ? new ViewGroup.LayoutParams(layoutParams.width, layoutParams.height) : new ViewGroup.LayoutParams(-1, -1));
            z10 = true;
        } else {
            ViewGroup.LayoutParams layoutParams2 = emptyView.getLayoutParams();
            if (layoutParams2 != null) {
                FrameLayout frameLayout3 = this.f21155n;
                if (frameLayout3 == null) {
                    Intrinsics.z("mEmptyLayout");
                    frameLayout3 = null;
                }
                ViewGroup.LayoutParams layoutParams3 = frameLayout3.getLayoutParams();
                layoutParams3.width = layoutParams2.width;
                layoutParams3.height = layoutParams2.height;
                FrameLayout frameLayout4 = this.f21155n;
                if (frameLayout4 == null) {
                    Intrinsics.z("mEmptyLayout");
                    frameLayout4 = null;
                }
                frameLayout4.setLayoutParams(layoutParams3);
            }
            z10 = false;
        }
        FrameLayout frameLayout5 = this.f21155n;
        if (frameLayout5 == null) {
            Intrinsics.z("mEmptyLayout");
            frameLayout5 = null;
        }
        frameLayout5.removeAllViews();
        FrameLayout frameLayout6 = this.f21155n;
        if (frameLayout6 == null) {
            Intrinsics.z("mEmptyLayout");
        } else {
            frameLayout = frameLayout6;
        }
        frameLayout.addView(emptyView);
        this.f21146e = true;
        if (z10 && q0()) {
            int i11 = (this.f21144c && s0()) ? 1 : 0;
            if (getItemCount() > itemCount) {
                notifyItemInserted(i11);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public final LinearLayout Z() {
        LinearLayout linearLayout = this.f21153l;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.z("mHeaderLayout");
        }
        return null;
    }

    @JvmOverloads
    public final int Z0(View view) {
        Intrinsics.h(view, "view");
        return c1(this, view, 0, 0, 6, null);
    }

    public final int a0() {
        return s0() ? 1 : 0;
    }

    @JvmOverloads
    public final int a1(View view, int i11) {
        Intrinsics.h(view, "view");
        return c1(this, view, i11, 0, 4, null);
    }

    public final boolean b0() {
        return this.f21147f;
    }

    @JvmOverloads
    public final int b1(View view, int i11, int i12) {
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = this.f21154m;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.z("mFooterLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i11) {
                LinearLayout linearLayout3 = this.f21154m;
                if (linearLayout3 == null) {
                    Intrinsics.z("mFooterLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i11);
                LinearLayout linearLayout4 = this.f21154m;
                if (linearLayout4 == null) {
                    Intrinsics.z("mFooterLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i11);
                return i11;
            }
        }
        return t(view, i11, i12);
    }

    public final int c0() {
        return (!q0() || this.f21144c) ? 0 : -1;
    }

    public final boolean d0() {
        return this.f21144c;
    }

    public final void d1(boolean z10) {
        this.f21148g = z10;
    }

    public final void e1(boolean z10) {
        this.f21145d = z10;
    }

    public Object f0(int i11) {
        return CollectionsKt.l0(this.f21143b, i11);
    }

    protected void f1(RecyclerView.b0 holder) {
        Intrinsics.h(holder, "holder");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
    }

    public int g0(Object obj) {
        if (obj == null || this.f21143b.isEmpty()) {
            return -1;
        }
        return this.f21143b.indexOf(obj);
    }

    public final void g1(p6.a aVar) {
    }

    public final Context getContext() {
        Context context = getRecyclerView().getContext();
        Intrinsics.g(context, "recyclerView.context");
        return context;
    }

    public final List<Object> getData() {
        return this.f21143b;
    }

    public Object getItem(int i11) {
        return this.f21143b.get(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i11 = 1;
        if (!q0()) {
            r6.f fVar = this.f21164w;
            return a0() + O() + V() + ((fVar == null || !fVar.m()) ? 0 : 1);
        }
        if (this.f21144c && s0()) {
            i11 = 2;
        }
        return (this.f21145d && r0()) ? i11 + 1 : i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i11) {
        return i11;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        if (q0()) {
            boolean z10 = this.f21144c && s0();
            if (i11 != 0) {
                return i11 != 1 ? D : D;
            }
            if (z10) {
                return B;
            }
            return E;
        }
        boolean zS0 = s0();
        if (zS0 && i11 == 0) {
            return B;
        }
        if (zS0) {
            i11--;
        }
        int size = this.f21143b.size();
        if (i11 < size) {
            return P(i11);
        }
        return i11 - size < r0() ? D : C;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.f21165x;
        if (recyclerView == null) {
            throw new IllegalStateException("Please get it after onAttachedToRecyclerView()");
        }
        Intrinsics.e(recyclerView);
        return recyclerView;
    }

    public final r6.f h0() {
        r6.f fVar = this.f21164w;
        if (fVar == null) {
            throw new IllegalStateException("Please first implements LoadMoreModule");
        }
        Intrinsics.e(fVar);
        return fVar;
    }

    @JvmOverloads
    public final int h1(View view) {
        Intrinsics.h(view, "view");
        return k1(this, view, 0, 0, 6, null);
    }

    public final r6.f i0() {
        return this.f21164w;
    }

    @JvmOverloads
    public final int i1(View view, int i11) {
        Intrinsics.h(view, "view");
        return k1(this, view, i11, 0, 4, null);
    }

    public final p6.b j0() {
        return this.f21160s;
    }

    @JvmOverloads
    public final int j1(View view, int i11, int i12) {
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = this.f21153l;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.z("mHeaderLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i11) {
                LinearLayout linearLayout3 = this.f21153l;
                if (linearLayout3 == null) {
                    Intrinsics.z("mHeaderLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i11);
                LinearLayout linearLayout4 = this.f21153l;
                if (linearLayout4 == null) {
                    Intrinsics.z("mHeaderLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i11);
                return i11;
            }
        }
        return x(view, i11, i12);
    }

    public final p6.c k0() {
        return null;
    }

    public final void l(int... viewIds) {
        Intrinsics.h(viewIds, "viewIds");
        for (int i11 : viewIds) {
            this.f21166y.add(Integer.valueOf(i11));
        }
    }

    public final p6.d l0() {
        return this.f21158q;
    }

    public final void l1(boolean z10) {
        this.f21147f = z10;
    }

    public final void m(int... viewIds) {
        Intrinsics.h(viewIds, "viewIds");
        for (int i11 : viewIds) {
            this.f21167z.add(Integer.valueOf(i11));
        }
    }

    public final p6.e m0() {
        return this.f21159r;
    }

    public final void m1(boolean z10) {
        this.f21144c = z10;
    }

    public void n(int i11, Object obj) {
        this.f21143b.add(i11, obj);
        notifyItemInserted(i11 + a0());
        E(1);
    }

    public final RecyclerView n0() {
        return this.f21165x;
    }

    public void n1(Collection<Object> collection) {
        List<Object> list = this.f21143b;
        if (collection != list) {
            list.clear();
            if (collection != null && !collection.isEmpty()) {
                this.f21143b.addAll(collection);
            }
        } else if (collection == null || collection.isEmpty()) {
            this.f21143b.clear();
        } else {
            ArrayList arrayList = new ArrayList(collection);
            this.f21143b.clear();
            this.f21143b.addAll(arrayList);
        }
        r6.f fVar = this.f21164w;
        if (fVar != null) {
            fVar.x();
        }
        this.f21156o = -1;
        notifyDataSetChanged();
        r6.f fVar2 = this.f21164w;
        if (fVar2 != null) {
            fVar2.f();
        }
    }

    public void o(int i11, Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        this.f21143b.addAll(i11, newData);
        notifyItemRangeInserted(i11 + a0(), newData.size());
        E(newData.size());
    }

    public final r6.g o0() {
        r6.g gVar = this.f21162u;
        if (gVar == null) {
            throw new IllegalStateException("Please first implements UpFetchModule");
        }
        Intrinsics.e(gVar);
        return gVar;
    }

    public final void o1(r6.f fVar) {
        this.f21164w = fVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.f21165x = recyclerView;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.d0(new c(layoutManager, gridLayoutManager.Y()));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.f21165x = null;
    }

    public void p(@NonNull Object obj) {
        this.f21143b.add(obj);
        notifyItemInserted(this.f21143b.size() + a0());
        E(1);
    }

    public final View p0(int i11, int i12) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView = this.f21165x;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(i11)) == null) {
            return null;
        }
        return baseViewHolder.getViewOrNull(i12);
    }

    @Deprecated
    public void p1(List<Object> list) {
        q1(list);
    }

    public void q(@NonNull Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        this.f21143b.addAll(newData);
        notifyItemRangeInserted((this.f21143b.size() - newData.size()) + a0(), newData.size());
        E(newData.size());
    }

    public final boolean q0() {
        FrameLayout frameLayout = this.f21155n;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.z("mEmptyLayout");
                frameLayout = null;
            }
            if (frameLayout.getChildCount() != 0 && this.f21146e) {
                return this.f21143b.isEmpty();
            }
            return false;
        }
        return false;
    }

    public void q1(List<Object> list) {
        if (list == this.f21143b) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f21143b = list;
        r6.f fVar = this.f21164w;
        if (fVar != null) {
            fVar.x();
        }
        this.f21156o = -1;
        notifyDataSetChanged();
        r6.f fVar2 = this.f21164w;
        if (fVar2 != null) {
            fVar2.f();
        }
    }

    @JvmOverloads
    public final int r(View view) {
        Intrinsics.h(view, "view");
        return u(this, view, 0, 0, 6, null);
    }

    public final boolean r0() {
        LinearLayout linearLayout = this.f21154m;
        if (linearLayout == null) {
            return false;
        }
        if (linearLayout == null) {
            Intrinsics.z("mFooterLayout");
            linearLayout = null;
        }
        return linearLayout.getChildCount() > 0;
    }

    protected void r1(View v11, int i11) {
        Intrinsics.h(v11, "v");
        p6.b bVar = this.f21160s;
        if (bVar != null) {
            bVar.a(this, v11, i11);
        }
    }

    @JvmOverloads
    public final int s(View view, int i11) {
        Intrinsics.h(view, "view");
        return u(this, view, i11, 0, 4, null);
    }

    public final boolean s0() {
        LinearLayout linearLayout = this.f21153l;
        if (linearLayout == null) {
            return false;
        }
        if (linearLayout == null) {
            Intrinsics.z("mHeaderLayout");
            linearLayout = null;
        }
        return linearLayout.getChildCount() > 0;
    }

    public final void s1(p6.b bVar) {
        this.f21160s = bVar;
    }

    @JvmOverloads
    public final int t(View view, int i11, int i12) {
        int iX;
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = null;
        if (this.f21154m == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.f21154m = linearLayout2;
            linearLayout2.setOrientation(i12);
            LinearLayout linearLayout3 = this.f21154m;
            if (linearLayout3 == null) {
                Intrinsics.z("mFooterLayout");
                linearLayout3 = null;
            }
            linearLayout3.setLayoutParams(i12 == 1 ? new RecyclerView.n(-1, -2) : new RecyclerView.n(-2, -1));
        }
        LinearLayout linearLayout4 = this.f21154m;
        if (linearLayout4 == null) {
            Intrinsics.z("mFooterLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i11 < 0 || i11 > childCount) {
            i11 = childCount;
        }
        LinearLayout linearLayout5 = this.f21154m;
        if (linearLayout5 == null) {
            Intrinsics.z("mFooterLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i11);
        LinearLayout linearLayout6 = this.f21154m;
        if (linearLayout6 == null) {
            Intrinsics.z("mFooterLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (iX = X()) != -1) {
            notifyItemInserted(iX);
        }
        return i11;
    }

    public final boolean t0() {
        return this.f21150i;
    }

    protected boolean t1(View v11, int i11) {
        Intrinsics.h(v11, "v");
        return false;
    }

    protected boolean u0(int i11) {
        return i11 == 268436821 || i11 == 268435729 || i11 == 268436275 || i11 == 268436002;
    }

    public final void u1(p6.c cVar) {
    }

    @JvmOverloads
    public final int v(View view) {
        Intrinsics.h(view, "view");
        return y(this, view, 0, 0, 6, null);
    }

    public final boolean v0() {
        return this.f21146e;
    }

    protected void v1(View v11, int i11) {
        Intrinsics.h(v11, "v");
        p6.d dVar = this.f21158q;
        if (dVar != null) {
            dVar.a(this, v11, i11);
        }
    }

    @JvmOverloads
    public final int w(View view, int i11) {
        Intrinsics.h(view, "view");
        return y(this, view, i11, 0, 4, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(BaseViewHolder holder, int i11) {
        Intrinsics.h(holder, "holder");
        r6.g gVar = this.f21162u;
        if (gVar != null) {
            gVar.a(i11);
        }
        r6.f fVar = this.f21164w;
        if (fVar != null) {
            fVar.e(i11);
        }
        switch (holder.getItemViewType()) {
            case B /* 268435729 */:
            case D /* 268436275 */:
            case E /* 268436821 */:
                break;
            case C /* 268436002 */:
                r6.f fVar2 = this.f21164w;
                if (fVar2 != null) {
                    fVar2.j().convert(holder, i11, fVar2.i());
                }
                break;
            default:
                F(holder, getItem(i11 - a0()));
                break;
        }
    }

    public final void w1(p6.d dVar) {
        this.f21158q = dVar;
    }

    @JvmOverloads
    public final int x(View view, int i11, int i12) {
        int iC0;
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = null;
        if (this.f21153l == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.f21153l = linearLayout2;
            linearLayout2.setOrientation(i12);
            LinearLayout linearLayout3 = this.f21153l;
            if (linearLayout3 == null) {
                Intrinsics.z("mHeaderLayout");
                linearLayout3 = null;
            }
            linearLayout3.setLayoutParams(i12 == 1 ? new RecyclerView.n(-1, -2) : new RecyclerView.n(-2, -1));
        }
        LinearLayout linearLayout4 = this.f21153l;
        if (linearLayout4 == null) {
            Intrinsics.z("mHeaderLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i11 < 0 || i11 > childCount) {
            i11 = childCount;
        }
        LinearLayout linearLayout5 = this.f21153l;
        if (linearLayout5 == null) {
            Intrinsics.z("mHeaderLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i11);
        LinearLayout linearLayout6 = this.f21153l;
        if (linearLayout6 == null) {
            Intrinsics.z("mHeaderLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (iC0 = c0()) != -1) {
            notifyItemInserted(iC0);
        }
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(BaseViewHolder holder, int i11, List<Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i11);
        }
        r6.g gVar = this.f21162u;
        if (gVar != null) {
            gVar.a(i11);
        }
        r6.f fVar = this.f21164w;
        if (fVar != null) {
            fVar.e(i11);
        }
        switch (holder.getItemViewType()) {
            case B /* 268435729 */:
            case D /* 268436275 */:
            case E /* 268436821 */:
                break;
            case C /* 268436002 */:
                r6.f fVar2 = this.f21164w;
                if (fVar2 != null) {
                    fVar2.j().convert(holder, i11, fVar2.i());
                }
                break;
            default:
                G(holder, getItem(i11 - a0()), payloads);
                break;
        }
    }

    protected boolean x1(View v11, int i11) {
        Intrinsics.h(v11, "v");
        p6.e eVar = this.f21159r;
        if (eVar != null) {
            return eVar.a(this, v11, i11);
        }
        return false;
    }

    protected BaseViewHolder y0(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return J(parent, this.f21142a);
    }

    public final void y1(p6.e eVar) {
        this.f21159r = eVar;
    }

    protected void z(final BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (this.f21158q != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseQuickAdapter.B(viewHolder, this, view);
                }
            });
        }
        if (this.f21159r != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.m
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return BaseQuickAdapter.C(viewHolder, this, view);
                }
            });
        }
        if (this.f21160s != null) {
            for (Integer id2 : M()) {
                View view = viewHolder.itemView;
                Intrinsics.g(id2, "id");
                View viewFindViewById = view.findViewById(id2.intValue());
                if (viewFindViewById != null) {
                    Intrinsics.g(viewFindViewById, "findViewById<View>(id)");
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.n
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BaseQuickAdapter.A(viewHolder, this, view2);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View view = null;
        switch (i11) {
            case B /* 268435729 */:
                LinearLayout linearLayout = this.f21153l;
                if (linearLayout == null) {
                    Intrinsics.z("mHeaderLayout");
                    linearLayout = null;
                }
                ViewParent parent2 = linearLayout.getParent();
                if (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    LinearLayout linearLayout2 = this.f21153l;
                    if (linearLayout2 == null) {
                        Intrinsics.z("mHeaderLayout");
                        linearLayout2 = null;
                    }
                    viewGroup.removeView(linearLayout2);
                }
                LinearLayout linearLayout3 = this.f21153l;
                if (linearLayout3 == null) {
                    Intrinsics.z("mHeaderLayout");
                } else {
                    view = linearLayout3;
                }
                return I(view);
            case C /* 268436002 */:
                r6.f fVar = this.f21164w;
                Intrinsics.e(fVar);
                BaseViewHolder baseViewHolderI = I(fVar.j().getRootView(parent));
                r6.f fVar2 = this.f21164w;
                Intrinsics.e(fVar2);
                fVar2.F(baseViewHolderI);
                return baseViewHolderI;
            case D /* 268436275 */:
                LinearLayout linearLayout4 = this.f21154m;
                if (linearLayout4 == null) {
                    Intrinsics.z("mFooterLayout");
                    linearLayout4 = null;
                }
                ViewParent parent3 = linearLayout4.getParent();
                if (parent3 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent3;
                    LinearLayout linearLayout5 = this.f21154m;
                    if (linearLayout5 == null) {
                        Intrinsics.z("mFooterLayout");
                        linearLayout5 = null;
                    }
                    viewGroup2.removeView(linearLayout5);
                }
                LinearLayout linearLayout6 = this.f21154m;
                if (linearLayout6 == null) {
                    Intrinsics.z("mFooterLayout");
                } else {
                    view = linearLayout6;
                }
                return I(view);
            case E /* 268436821 */:
                FrameLayout frameLayout = this.f21155n;
                if (frameLayout == null) {
                    Intrinsics.z("mEmptyLayout");
                    frameLayout = null;
                }
                ViewParent parent4 = frameLayout.getParent();
                if (parent4 instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) parent4;
                    FrameLayout frameLayout2 = this.f21155n;
                    if (frameLayout2 == null) {
                        Intrinsics.z("mEmptyLayout");
                        frameLayout2 = null;
                    }
                    viewGroup3.removeView(frameLayout2);
                }
                FrameLayout frameLayout3 = this.f21155n;
                if (frameLayout3 == null) {
                    Intrinsics.z("mEmptyLayout");
                } else {
                    view = frameLayout3;
                }
                return I(view);
            default:
                BaseViewHolder baseViewHolderY0 = y0(parent, i11);
                z(baseViewHolderY0, i11);
                A0(baseViewHolderY0, i11);
                return baseViewHolderY0;
        }
    }

    public final void z1(boolean z10) {
        this.f21146e = z10;
    }
}
