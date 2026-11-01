package com.transsion.shorttv_pugc.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import com.transsion.shorttv_pugc.bean.AppointSubject;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.RankingData;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTvOpRankingAdapter;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b*\u0001.\u0018\u0000 42\u00020\u0001:\u0001\u001eBA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010B1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J1\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTvOpRankingView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "pageName", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", WebConstants.FIELD_ITEM, "", "tabId", "", "isTablet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;I)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;)V", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;)V", "isHorizontal", "", CampaignEx.JSON_KEY_AD_R, "(Lcom/transsion/shorttv_pugc/bean/OperateItem;Z)V", "Lcom/transsion/shorttv_pugc/bean/Subject;", RequestParameters.POSITION, "operateItem", "s", "(Lcom/transsion/shorttv_pugc/bean/Subject;ILcom/transsion/shorttv_pugc/bean/OperateItem;Z)V", "updateData", "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "c", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "Lms/j;", "e", "Lms/j;", "viewBinding", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;", "f", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;", "mAdapter", "com/transsion/shorttv_pugc/ui/widget/ShortTvOpRankingView$b", "g", "Lkotlin/Lazy;", "getCustomRecycledViewPool", "()Lcom/transsion/shorttv_pugc/ui/widget/ShortTvOpRankingView$b;", "customRecycledViewPool", "Companion", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvOpRankingView extends ConstraintLayout {
    public static final int MAX_COUNT = 30;
    public static final int VIEW_TYPE_MORE = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final OperateItem item;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final ms.j viewBinding;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ShortTvOpRankingAdapter mAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy customRecycledViewPool;

    public static final class b extends RecyclerView.s {
        b() {
            m(100, 1);
            m(0, 16);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void k(RecyclerView.b0 b0Var) {
            super.k(b0Var);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i11, boolean z10, Context context) {
        this(pageName, item, i11, z10, context, null);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet) {
        this(pageName, item, i11, z10, context, attributeSet, 0);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i11, boolean z10, Context context, AttributeSet attributeSet, int i12) {
        super(context, attributeSet, i12);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
        this.pageName = pageName;
        this.item = item;
        this.tabId = i11;
        this.isTablet = z10;
        this.customRecycledViewPool = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.widget.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvOpRankingView.q();
            }
        });
        View.inflate(context, R$layout.pugc_short_tv_op_ranking, this);
        ms.j jVarA = ms.j.a(this);
        Intrinsics.g(jVarA, "bind(...)");
        this.viewBinding = jVarA;
        RankingData rankingData = item.getRankingData();
        final boolean z11 = rankingData != null && rankingData.getRankingHorizontal();
        TnTextView mainOperationMovieRankTitle = jVarA.f69802d;
        Intrinsics.g(mainOperationMovieRankTitle, "mainOperationMovieRankTitle");
        mainOperationMovieRankTitle.setText(item.getTitle());
        TnTextView mainOperationMovieMoreText = jVarA.f69800b;
        Intrinsics.g(mainOperationMovieMoreText, "mainOperationMovieMoreText");
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            ct.b.c(mainOperationMovieMoreText);
        } else {
            ct.b.d(mainOperationMovieMoreText);
            mainOperationMovieRankTitle.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.widget.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvOpRankingView.n(this.f54408a, z11, view);
                }
            });
            mainOperationMovieMoreText.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.widget.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvOpRankingView.o(this.f54410a, z11, view);
                }
            });
        }
        RecyclerView mainOperationMovieRankRecycler = jVarA.f69801c;
        Intrinsics.g(mainOperationMovieRankRecycler, "mainOperationMovieRankRecycler");
        final ShortTvOpRankingAdapter shortTvOpRankingAdapter = new ShortTvOpRankingAdapter(0, i11, pageName, z11, z10, 1, null);
        this.mAdapter = shortTvOpRankingAdapter;
        mainOperationMovieRankRecycler.setAdapter(shortTvOpRankingAdapter);
        mainOperationMovieRankRecycler.setLayoutManager(new LinearLayoutManager(context, 0, false));
        if (!Intrinsics.c(mainOperationMovieRankRecycler.getRecycledViewPool(), getCustomRecycledViewPool())) {
            mainOperationMovieRankRecycler.setRecycledViewPool(getCustomRecycledViewPool());
        }
        if (mainOperationMovieRankRecycler.getItemDecorationCount() == 0) {
            mainOperationMovieRankRecycler.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        subjects = subjects == null ? new ArrayList<>() : subjects;
        shortTvOpRankingAdapter.n1(subjects.size() > 30 ? subjects.subList(0, 31) : subjects);
        shortTvOpRankingAdapter.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.widget.t
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                ShortTvOpRankingView.p(this.f54412a, shortTvOpRankingAdapter, z11, baseQuickAdapter, view, i13);
            }
        });
        HashMap map = new HashMap();
        map.put("event_type", z11 ? "browse_rank_horiz_more" : "browse_rank_more");
        String deepLink2 = item.getDeepLink();
        map.put("deepLink", deepLink2 == null ? "" : deepLink2);
        String title = item.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(i11));
        ShortTvExtKt.a(item, map);
        map.put("opt_type", item.getType() + "_RANK_MORE");
        hj.i.f64505a.p(pageName, map);
    }

    private final b getCustomRecycledViewPool() {
        return (b) this.customRecycledViewPool.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ShortTvOpRankingView shortTvOpRankingView, boolean z10, View view) {
        shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ShortTvOpRankingView shortTvOpRankingView, boolean z10, View view) {
        shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ShortTvOpRankingView shortTvOpRankingView, ShortTvOpRankingAdapter shortTvOpRankingAdapter, boolean z10, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<AppointSubject> subjects;
        AppointSubject appointSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<AppointSubject> subjects2 = shortTvOpRankingView.item.getSubjects();
        if (i11 >= (subjects2 != null ? subjects2.size() : 0) || (subjects = shortTvOpRankingView.item.getSubjects()) == null || (appointSubject = subjects.get(i11)) == null) {
            return;
        }
        if (shortTvOpRankingAdapter.getItemViewType(i11) == 100) {
            shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
        } else {
            shortTvOpRankingView.s(appointSubject, i11, shortTvOpRankingView.item, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b q() {
        return new b();
    }

    private final void r(OperateItem item, boolean isHorizontal) {
        String deepLink = item.getDeepLink();
        if (deepLink != null) {
            ht.b.d(deepLink, null, 1, null);
        }
        HashMap map = new HashMap();
        map.put("event_type", isHorizontal ? "click_rank_horiz_more" : "click_rank_more");
        String deepLink2 = item.getDeepLink();
        if (deepLink2 == null) {
            deepLink2 = "";
        }
        map.put("deepLink", deepLink2);
        String title = item.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(this.tabId));
        ShortTvExtKt.a(item, map);
        map.put("opt_type", item.getType() + "_RANK_MORE");
        hj.i.f64505a.p(this.pageName, map);
    }

    private final void s(Subject item, int position, OperateItem operateItem, boolean isHorizontal) {
        Navigator.x(TheRouter.c(ls.a.f69034a.b()).K("id", item.getSubjectId()).K("ops", item.getOps()), getContext(), null, 2, null);
        HashMap map = new HashMap();
        map.put("event_type", isHorizontal ? "click_rank_horiz_item" : "click_rank_item");
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        if (operateItem != null) {
            ShortTvExtKt.a(operateItem, map);
        }
        ShortTvExtKt.c(item, map);
        hj.i.f64505a.p(this.pageName, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ShortTvOpRankingView shortTvOpRankingView, OperateItem operateItem, boolean z10, View view) {
        shortTvOpRankingView.r(operateItem, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ShortTvOpRankingView shortTvOpRankingView, OperateItem operateItem, boolean z10, View view) {
        shortTvOpRankingView.r(operateItem, z10);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public final void updateData(final OperateItem item) {
        final boolean z10;
        Intrinsics.h(item, "item");
        ShortTvOpRankingAdapter shortTvOpRankingAdapter = this.mAdapter;
        if (shortTvOpRankingAdapter != null) {
            shortTvOpRankingAdapter.D1(item);
        }
        RankingData rankingData = item.getRankingData();
        if (rankingData != null) {
            z10 = rankingData.getRankingHorizontal();
        }
        TnTextView mainOperationMovieRankTitle = this.viewBinding.f69802d;
        Intrinsics.g(mainOperationMovieRankTitle, "mainOperationMovieRankTitle");
        mainOperationMovieRankTitle.setText(item.getTitle());
        TnTextView mainOperationMovieMoreText = this.viewBinding.f69800b;
        Intrinsics.g(mainOperationMovieMoreText, "mainOperationMovieMoreText");
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            ct.b.c(mainOperationMovieMoreText);
        } else {
            ct.b.d(mainOperationMovieMoreText);
            mainOperationMovieRankTitle.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.widget.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvOpRankingView.t(this.f54402a, item, z10, view);
                }
            });
            mainOperationMovieMoreText.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.widget.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvOpRankingView.u(this.f54405a, item, z10, view);
                }
            });
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        if (subjects.size() > 30) {
            subjects = subjects.subList(0, 31);
        }
        ShortTvOpRankingAdapter shortTvOpRankingAdapter2 = this.mAdapter;
        if (shortTvOpRankingAdapter2 != null) {
            shortTvOpRankingAdapter2.n1(subjects);
        }
    }
}
