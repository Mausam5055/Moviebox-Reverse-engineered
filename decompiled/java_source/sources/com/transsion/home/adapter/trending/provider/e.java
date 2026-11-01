package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesContentItem;
import com.transsion.home.bean.HomePreferencesSelectType;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends BaseItemProvider {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f44737r = new a(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f44738s = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function1 f44740f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Function1 f44741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Function3 f44742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Function1 f44743i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final TextPaint f44750p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map f44751q;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f44739e = new LinkedHashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f44744j = com.blankj.utilcode.util.a0.a(12.0f);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f44745k = com.blankj.utilcode.util.a0.a(32.0f);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f44746l = com.blankj.utilcode.util.a0.a(68.0f);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f44747m = com.blankj.utilcode.util.a0.a(8.0f);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f44748n = com.blankj.utilcode.util.a0.a(16.0f);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f44749o = com.blankj.utilcode.util.a0.a(4.0f);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e() {
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTextSize(com.blankj.utilcode.util.a0.a(12.0f));
        this.f44750p = textPaint;
        this.f44751q = new LinkedHashMap();
    }

    private final void A(LinearLayout linearLayout, List list, boolean z10, int i11, LinearLayout linearLayout2) {
        int iA = com.blankj.utilcode.util.a0.a(8.0f);
        int i12 = 0;
        for (Object obj : list) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            View viewE = E(linearLayout, (HomePreferencesContentItem) obj, z10, i11, linearLayout2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.f44745k);
            layoutParams.setMarginStart(i12 == 0 ? iA : this.f44747m);
            linearLayout.addView(viewE, layoutParams);
            i12 = i13;
        }
    }

    private final void B(GradientTextView gradientTextView, Context context, boolean z10) {
        int color = androidx.core.content.b.getColor(context, R$color.white_80);
        int color2 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start);
        int color3 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_center);
        int color4 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end);
        if (!z10) {
            color2 = color;
        }
        if (!z10) {
            color3 = color;
        }
        if (z10) {
            color = color4;
        }
        gradientTextView.setGradientColors(color2, color3, color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(e eVar, HomePreferencesConfig homePreferencesConfig, View view) {
        Function1 function1 = eVar.f44740f;
        if (function1 != null) {
            function1.invoke(homePreferencesConfig);
        }
    }

    private final LinearLayout E(ViewGroup viewGroup, final HomePreferencesContentItem homePreferencesContentItem, final boolean z10, final int i11, final LinearLayout linearLayout) {
        final Context context = viewGroup.getContext();
        boolean zContains = this.f44739e.contains(homePreferencesContentItem.getValue());
        final LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setMinimumWidth(this.f44746l);
        int i12 = this.f44744j;
        linearLayout2.setPadding(i12, 0, i12, 0);
        linearLayout2.setBackground(androidx.core.content.b.getDrawable(context, R$drawable.bg_preferences_tag));
        linearLayout2.setSelected(zContains);
        linearLayout2.setTag(homePreferencesContentItem.getValue());
        Intrinsics.e(context);
        final GradientTextView gradientTextView = new GradientTextView(context, null, 0, 6, null);
        gradientTextView.setText(homePreferencesContentItem.getName());
        gradientTextView.setTextSize(12.0f);
        gradientTextView.setMaxLines(1);
        gradientTextView.setGravity(17);
        gradientTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        B(gradientTextView, context, zContains);
        final ImageView imageView = new ImageView(context);
        imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
        int i13 = this.f44748n;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i13, i13);
        layoutParams.setMarginStart(this.f44749o);
        imageView.setLayoutParams(layoutParams);
        linearLayout2.addView(gradientTextView);
        linearLayout2.addView(imageView);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.trending.provider.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.F(z10, this, homePreferencesContentItem, linearLayout, i11, context, linearLayout2, imageView, gradientTextView, view);
            }
        });
        return linearLayout2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(boolean z10, e eVar, HomePreferencesContentItem homePreferencesContentItem, LinearLayout linearLayout, int i11, Context context, LinearLayout linearLayout2, ImageView imageView, GradientTextView gradientTextView, View view) {
        if (z10) {
            if (eVar.f44739e.contains(homePreferencesContentItem.getValue())) {
                eVar.f44739e.remove(homePreferencesContentItem.getValue());
            } else {
                eVar.f44739e.clear();
                eVar.f44739e.add(homePreferencesContentItem.getValue());
            }
            eVar.I(linearLayout);
        } else {
            boolean zContains = eVar.f44739e.contains(homePreferencesContentItem.getValue());
            boolean z11 = !zContains;
            if (zContains) {
                eVar.f44739e.remove(homePreferencesContentItem.getValue());
            } else {
                if (i11 > 0 && eVar.f44739e.size() >= i11) {
                    String string = context.getString(R$string.home_preferences_max_select_tips, Integer.valueOf(i11));
                    Intrinsics.g(string, "getString(...)");
                    com.transsion.baseui.util.m.f(string);
                    return;
                }
                eVar.f44739e.add(homePreferencesContentItem.getValue());
            }
            linearLayout2.setSelected(z11);
            imageView.setImageResource(!zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
            Intrinsics.e(context);
            eVar.B(gradientTextView, context, z11);
        }
        Function1 function1 = eVar.f44741g;
        if (function1 != null) {
            function1.invoke(CollectionsKt.R0(eVar.f44739e));
        }
    }

    private final List G(List list, int i11) {
        List[] listArr = new List[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            listArr[i12] = new ArrayList();
        }
        float[] fArr = new float[i11];
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HomePreferencesContentItem homePreferencesContentItem = (HomePreferencesContentItem) it.next();
            float fH = H(homePreferencesContentItem.getName());
            float f11 = Float.MAX_VALUE;
            int i13 = -1;
            for (int i14 = 0; i14 < i11; i14++) {
                if (listArr[i14].size() < 8) {
                    float f12 = fArr[i14];
                    if (f12 < f11) {
                        i13 = i14;
                        f11 = f12;
                    }
                }
            }
            if (i13 == -1) {
                break;
            }
            listArr[i13].add(homePreferencesContentItem);
            fArr[i13] = fArr[i13] + fH + this.f44747m;
        }
        ArrayList arrayList = new ArrayList(i11);
        for (int i15 = 0; i15 < i11; i15++) {
            arrayList.add(CollectionsKt.R0(listArr[i15]));
        }
        return arrayList;
    }

    private final float H(String str) {
        return Math.max((this.f44744j * 2) + this.f44750p.measureText(str) + this.f44749o + this.f44748n, this.f44746l);
    }

    private final void I(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount2 = linearLayout.getChildCount();
                for (int i12 = 0; i12 < childCount2; i12++) {
                    View childAt2 = linearLayout.getChildAt(i12);
                    if (childAt2 instanceof LinearLayout) {
                        LinearLayout linearLayout2 = (LinearLayout) childAt2;
                        if (linearLayout2.getTag() instanceof String) {
                            Object tag = linearLayout2.getTag();
                            Intrinsics.f(tag, "null cannot be cast to non-null type kotlin.String");
                            boolean zContains = this.f44739e.contains((String) tag);
                            linearLayout2.setSelected(zContains);
                            if (linearLayout2.getChildCount() >= 2) {
                                View childAt3 = linearLayout2.getChildAt(0);
                                GradientTextView gradientTextView = childAt3 instanceof GradientTextView ? (GradientTextView) childAt3 : null;
                                if (gradientTextView != null) {
                                    Context context = linearLayout2.getContext();
                                    Intrinsics.g(context, "getContext(...)");
                                    B(gradientTextView, context, zContains);
                                }
                                View childAt4 = linearLayout2.getChildAt(1);
                                ImageView imageView = childAt4 instanceof ImageView ? (ImageView) childAt4 : null;
                                if (imageView != null) {
                                    imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        boolean zC;
        final e eVar = this;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        long jNanoTime = System.nanoTime();
        final HomePreferencesConfig homePreferencesConfig = item.getHomePreferencesConfig();
        if (homePreferencesConfig == null) {
            return;
        }
        List<HomePreferencesContentItem> options = homePreferencesConfig.getOptions();
        if (options.isEmpty()) {
            return;
        }
        TextView textView = (TextView) helper.getViewOrNull(R$id.tv_title);
        if (textView != null) {
            textView.setText(homePreferencesConfig.getTitle());
        }
        ImageView imageView = (ImageView) helper.getViewOrNull(R$id.iv_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.trending.provider.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.D(this.f44722a, homePreferencesConfig, view);
                }
            });
        }
        LinearLayout linearLayout = (LinearLayout) helper.getViewOrNull(R$id.ll_rows_container);
        if (linearLayout == null) {
            return;
        }
        boolean zC2 = Intrinsics.c(homePreferencesConfig.getSelectType(), HomePreferencesSelectType.SINGLE.getValue());
        String labelId = homePreferencesConfig.getLabelId();
        List listG = (List) eVar.f44751q.get(labelId);
        if (listG != null) {
            List listX = CollectionsKt.x(listG);
            boolean z10 = listX.size() == options.size();
            if (z10) {
                List list = listX;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((HomePreferencesContentItem) it.next()).getValue());
                }
                List<HomePreferencesContentItem> list2 = options;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((HomePreferencesContentItem) it2.next()).getValue());
                }
                zC = Intrinsics.c(arrayList, arrayList2);
            } else {
                zC = false;
            }
            if (!z10 || !zC) {
                listG = eVar.G(options, options.size() <= 8 ? 1 : (int) Math.ceil(options.size() / 8));
                eVar.f44751q.put(labelId, listG);
            }
        } else {
            listG = eVar.G(options, options.size() <= 8 ? 1 : (int) Math.ceil(options.size() / 8));
            eVar.f44751q.put(labelId, listG);
        }
        int size = listG.size();
        Object tag = linearLayout.getTag();
        if (!Intrinsics.c(tag instanceof String ? (String) tag : null, labelId) || linearLayout.getChildCount() == 0) {
            linearLayout.removeAllViews();
            int i11 = 0;
            for (Object obj : listG) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                List list3 = (List) obj;
                LinearLayout linearLayout2 = new LinearLayout(linearLayout.getContext());
                linearLayout2.setOrientation(0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                if (i11 > 0) {
                    layoutParams.topMargin = eVar.f44747m;
                }
                linearLayout2.setLayoutParams(layoutParams);
                A(linearLayout2, list3, zC2, homePreferencesConfig.getMaxSelectNum(), linearLayout);
                linearLayout.addView(linearLayout2);
                eVar = this;
                i11 = i12;
            }
            linearLayout.setTag(labelId);
        }
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) helper.getViewOrNull(R$id.hsv_tags);
        if (horizontalScrollView != null) {
            horizontalScrollView.scrollTo(0, 0);
        }
        float fNanoTime = (System.nanoTime() - jNanoTime) / 1000000.0f;
        lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesProvider", "convert cost=" + fNanoTime + "ms, items=" + options.size() + ", rows=" + size, false, 4, null);
    }

    public final void J(Function1 function1) {
        this.f44740f = function1;
    }

    public final void K(Function1 function1) {
        this.f44743i = function1;
    }

    public final void L(Function3 function3) {
        this.f44742h = function3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.PREFERENCES.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_home_preferences;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void t(BaseViewHolder holder) {
        HomePreferencesConfig homePreferencesConfig;
        List<Object> data;
        Intrinsics.h(holder, "holder");
        super.t(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        OperateItem operateItem = (baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : (OperateItem) CollectionsKt.l0(data, bindingAdapterPosition);
        OperateItem operateItem2 = operateItem instanceof OperateItem ? operateItem : null;
        if (operateItem2 == null || (homePreferencesConfig = operateItem2.getHomePreferencesConfig()) == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesProvider", "onViewAttachedToWindow: labelId=" + homePreferencesConfig.getLabelId(), false, 4, null);
        Function1 function1 = this.f44743i;
        if (function1 != null) {
            function1.invoke(homePreferencesConfig);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        HomePreferencesConfig homePreferencesConfig;
        List<Object> data;
        Intrinsics.h(holder, "holder");
        super.u(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        OperateItem operateItem = (baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : (OperateItem) CollectionsKt.l0(data, bindingAdapterPosition);
        OperateItem operateItem2 = operateItem instanceof OperateItem ? operateItem : null;
        if (operateItem2 == null || (homePreferencesConfig = operateItem2.getHomePreferencesConfig()) == null) {
            return;
        }
        List<HomePreferencesContentItem> options = homePreferencesConfig.getOptions();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(options, 10));
        Iterator<T> it = options.iterator();
        while (it.hasNext()) {
            arrayList.add(((HomePreferencesContentItem) it.next()).getValue());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (this.f44739e.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        if (arrayList2.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesProvider", "onViewDetachedFromWindow: no selection, skip submit, labelId=" + homePreferencesConfig.getLabelId(), false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesProvider", "onViewDetachedFromWindow: try submit, labelId=" + homePreferencesConfig.getLabelId() + ", options=" + arrayList2, false, 4, null);
        Function3 function3 = this.f44742h;
        if (function3 != null) {
            function3.invoke(homePreferencesConfig, arrayList2, "opt_scroll");
        }
    }
}
