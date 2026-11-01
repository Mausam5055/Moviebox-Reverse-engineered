package com.transsion.search_pugc.fragment.result.provider;

import android.animation.ValueAnimator;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$plurals;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.ResultCollectItemWrapper;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends BaseItemProvider implements t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ t f52461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f52462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f52463g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f52464h;

    public s(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f52461e = reportable;
        this.f52462f = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.provider.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(s.O());
            }
        });
        this.f52463g = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.provider.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(s.N());
            }
        });
        this.f52464h = 0.95f;
    }

    private final void E(final View view, int i11, int i12) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i11, i12);
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.search_pugc.fragment.result.provider.r
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                s.F(view, valueAnimator);
            }
        });
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(View view, ValueAnimator animation) {
        Intrinsics.h(animation, "animation");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.n nVar = (RecyclerView.n) layoutParams;
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Number");
        ((ViewGroup.MarginLayoutParams) nVar).width = ((Number) animatedValue).intValue();
        view.setLayoutParams(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(SearchResultItem searchResultItem, s sVar, BaseViewHolder baseViewHolder, View view) {
        UGCVerticalRank verticalRank = searchResultItem.getVerticalRank();
        if (verticalRank != null) {
            com.transsion.search_pugc.constant.a.f(verticalRank, searchResultItem.getOps());
        }
        sVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(com.transsion.search_pugc.fragment.result.adapter.a aVar, s sVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        UGCVideo uGCVideoA = ((ResultCollectItemWrapper) aVar.getData().get(i11)).a();
        if (uGCVideoA != null) {
            com.transsion.search_pugc.constant.a.h(uGCVideoA, false, 1, null);
            sVar.a(uGCVideoA, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:30:0x0103  */
    /* JADX WARN: Code duplicated, block: B:32:0x0107  */
    /* JADX WARN: Code duplicated, block: B:34:0x010d  */
    public static final boolean J(FooterStretchRecyclerView footerStretchRecyclerView, com.transsion.search_pugc.fragment.result.adapter.a aVar, Ref.FloatRef floatRef, Ref.BooleanRef booleanRef, s sVar, SearchResultItem searchResultItem, BaseViewHolder baseViewHolder, View view, MotionEvent motionEvent) {
        Integer numValueOf;
        View viewFindViewByPosition;
        UGCVerticalRank verticalRank;
        RecyclerView.m layoutManager = footerStretchRecyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int itemCount = aVar.getItemCount() - 1;
        View viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(itemCount);
        int action = motionEvent.getAction();
        if (action == 0) {
            float x10 = motionEvent.getX();
            floatRef.element = x10;
            booleanRef.element = false;
            numValueOf = viewFindViewByPosition2 != null ? Integer.valueOf(viewFindViewByPosition2.getWidth()) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("--------------------------------DOWN startX=");
            sb2.append(x10);
            sb2.append(" 初始宽=");
            sb2.append(numValueOf);
        } else if (action == 1) {
            viewFindViewByPosition = linearLayoutManager.findViewByPosition(itemCount);
            boolean z10 = booleanRef.element;
            numValueOf = viewFindViewByPosition != null ? Integer.valueOf(viewFindViewByPosition.getWidth()) : null;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("UP atMax=");
            sb3.append(z10);
            sb3.append(", 宽=");
            sb3.append(numValueOf);
            if (viewFindViewByPosition != null) {
                if (booleanRef.element) {
                    verticalRank = searchResultItem.getVerticalRank();
                    if (verticalRank != null) {
                        com.transsion.search_pugc.constant.a.f(verticalRank, searchResultItem.getOps());
                    }
                    sVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
                }
                sVar.E(viewFindViewByPosition, viewFindViewByPosition.getWidth(), sVar.L());
            }
            booleanRef.element = false;
        } else {
            if (action == 2) {
                if (!footerStretchRecyclerView.canScrollHorizontally(1) && viewFindViewByPosition2 != null) {
                    if (floatRef.element == 0.0f) {
                        floatRef.element = motionEvent.getX();
                        booleanRef.element = false;
                    }
                    float f11 = floatRef.element;
                    float x11 = motionEvent.getX();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("startX = ");
                    sb4.append(f11);
                    sb4.append(", event.x= ");
                    sb4.append(x11);
                    float x12 = floatRef.element - motionEvent.getX();
                    int iL = sVar.L() + ((int) (((double) (sVar.K() - sVar.L())) * (((double) 1) - Math.exp((-x12) / ((double) com.blankj.utilcode.util.i.e(20.0f))))));
                    if (iL > sVar.K()) {
                        iL = sVar.K();
                    }
                    booleanRef.element = iL >= sVar.L() + ((int) (((float) (sVar.K() - sVar.L())) * sVar.f52464h));
                    ViewGroup.LayoutParams layoutParams = viewFindViewByPosition2.getLayoutParams();
                    Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                    RecyclerView.n nVar = (RecyclerView.n) layoutParams;
                    ((ViewGroup.MarginLayoutParams) nVar).width = Math.max(iL, sVar.L());
                    viewFindViewByPosition2.setLayoutParams(nVar);
                    boolean z11 = booleanRef.element;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("MOVE dist=");
                    sb5.append(x12);
                    sb5.append(", width=");
                    sb5.append(iL);
                    sb5.append(", atMax=");
                    sb5.append(z11);
                }
                return false;
            }
            if (action == 3) {
                viewFindViewByPosition = linearLayoutManager.findViewByPosition(itemCount);
                boolean z12 = booleanRef.element;
                if (viewFindViewByPosition != null) {
                }
                StringBuilder sb6 = new StringBuilder();
                sb6.append("UP atMax=");
                sb6.append(z12);
                sb6.append(", 宽=");
                sb6.append(numValueOf);
                if (viewFindViewByPosition != null) {
                    if (booleanRef.element) {
                        verticalRank = searchResultItem.getVerticalRank();
                        if (verticalRank != null) {
                            com.transsion.search_pugc.constant.a.f(verticalRank, searchResultItem.getOps());
                        }
                        sVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
                    }
                    sVar.E(viewFindViewByPosition, viewFindViewByPosition.getWidth(), sVar.L());
                }
                booleanRef.element = false;
            }
        }
        return false;
    }

    private final int K() {
        return ((Number) this.f52463g.getValue()).intValue();
    }

    private final int L() {
        return ((Number) this.f52462f.getValue()).intValue();
    }

    private final SpannableStringBuilder M(String str, String str2, int i11) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int iO0 = StringsKt.o0(str, str2, 0, false, 6, null);
        if (iO0 >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i11), iO0, str2.length() + iO0, 33);
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int N() {
        return com.blankj.utilcode.util.i.e(52.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int O() {
        return com.blankj.utilcode.util.i.e(26.0f);
    }

    private final void P(SearchResultItem searchResultItem) {
        List<UGCVideo> videos;
        UGCVerticalRank verticalRank = searchResultItem.getVerticalRank();
        if (verticalRank == null || (videos = verticalRank.getVideos()) == null) {
            return;
        }
        int i11 = 0;
        for (Object obj : videos) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            e((UGCVideo) obj, i11);
            i11 = i12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00f8  */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final SearchResultItem item) {
        boolean z10;
        List listK;
        List listU0;
        Integer count;
        String title;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i11 = R$id.tv_collection_info;
        String string = k().getString(R$string.collection);
        UGCVerticalRank verticalRank = item.getVerticalRank();
        List list = null;
        String str = string + " • " + (verticalRank != null ? verticalRank.getTitle() : null);
        UGCVerticalRank verticalRank2 = item.getVerticalRank();
        helper.setText(i11, M(str, String.valueOf((verticalRank2 == null || (title = verticalRank2.getTitle()) == null) ? null : com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f52478h.a(k()).e())), k().getColor(R$color.white)));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        UGCVerticalRank verticalRank3 = item.getVerticalRank();
        if (verticalRank3 != null && (count = verticalRank3.getCount()) != null) {
            int iIntValue = count.intValue();
            spannableStringBuilder.append((CharSequence) k().getResources().getQuantityString(R$plurals.videos_count_text, iIntValue, Integer.valueOf(iIntValue)));
        }
        ((TextView) helper.getView(R$id.tv_info)).setText(spannableStringBuilder);
        helper.getView(R$id.view_into).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.result.provider.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.H(item, this, helper, view);
            }
        });
        final FooterStretchRecyclerView footerStretchRecyclerView = (FooterStretchRecyclerView) helper.getView(R$id.f51939rv);
        footerStretchRecyclerView.setLayoutManager(new LinearLayoutManager(footerStretchRecyclerView.getContext(), 0, false));
        final com.transsion.search_pugc.fragment.result.adapter.a aVar = new com.transsion.search_pugc.fragment.result.adapter.a(false, 1, null);
        UGCVerticalRank verticalRank4 = item.getVerticalRank();
        List<UGCVideo> videos = verticalRank4 != null ? verticalRank4.getVideos() : null;
        List<UGCVideo> list2 = videos;
        if (list2 == null || list2.isEmpty()) {
            z10 = false;
        } else {
            if ((videos != null ? videos.size() : 0) >= 5) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            videos = videos != null ? videos.subList(0, 5) : null;
        }
        if (videos != null && (listK = com.transsion.search_pugc.constant.a.k(videos)) != null && (listU0 = CollectionsKt.U0(listK)) != null) {
            if (z10) {
                listU0.add(new ResultCollectItemWrapper(null, ResultCollectItemWrapper.Type.FOOTER, 1, null));
            }
            list = listU0;
        }
        aVar.n1(list);
        aVar.w1(new p6.d() { // from class: com.transsion.search_pugc.fragment.result.provider.p
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                s.I(aVar, this, baseQuickAdapter, view, i12);
            }
        });
        footerStretchRecyclerView.setAdapter(aVar);
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (z10) {
            footerStretchRecyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.search_pugc.fragment.result.provider.q
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return s.J(footerStretchRecyclerView, aVar, floatRef, booleanRef, this, item, helper, view, motionEvent);
                }
            });
        }
        P(item);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void a(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52461e.a(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void c(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52461e.c(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void d(SearchResultItem item, int i11) {
        Intrinsics.h(item, "item");
        this.f52461e.d(item, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void e(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52461e.e(ugcVideo, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return SearchType.VERTICAL_RANK.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_collection;
    }
}
