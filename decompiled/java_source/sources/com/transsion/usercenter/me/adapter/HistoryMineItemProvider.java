package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.R$drawable;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.bean.MeHistoryInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class HistoryMineItemProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f56912f;

    /* JADX WARN: Multi-variable type inference failed */
    public HistoryMineItemProvider() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public HistoryMineItemProvider(o oVar) {
        this.f56911e = oVar;
        this.f56912f = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.me.adapter.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HistoryMineItemProvider.G();
            }
        });
    }

    public /* synthetic */ HistoryMineItemProvider(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(BaseViewHolder baseViewHolder, HistoryMineItemProvider historyMineItemProvider, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.u.f57015a.b(ShortTVHistoryView.TYPE_HISTORY);
        Navigator.x(TheRouter.c("/download/play_history"), baseViewHolder.itemView.getContext(), null, 2, null);
        o oVar = historyMineItemProvider.f56911e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(HistoryMineItemProvider historyMineItemProvider, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = historyMineItemProvider.E().getItem(i11);
        if (!(item instanceof VideoDetailPlayBean)) {
            if (item instanceof UGCVideoDetailPlayBean) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new HistoryMineItemProvider$convert$2$2(item, null), 3, null);
            }
        } else if (ak.g.f639a.b()) {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new HistoryMineItemProvider$convert$2$1(item, null), 3, null);
        } else {
            VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) item;
            historyMineItemProvider.F(view, videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getOps());
        }
    }

    private final p E() {
        return (p) this.f56912f.getValue();
    }

    private final void F(View view, Integer num, String str, String str2) {
        Navigator.x(TheRouter.c("/movie/detail").F("subject_type", num != null ? num.intValue() : SubjectType.MOVIE.getValue()).K("id", str).K("ops", str2).K("module_name", "profiledetail"), view.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p G() {
        return new p();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        MeHistoryInfo meHistoryInfo = data instanceof MeHistoryInfo ? (MeHistoryInfo) data : null;
        if (meHistoryInfo == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoryMineItemProvider.C(helper, this, item, (View) obj);
            }
        }, 1, null);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.historyRv);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        recyclerView.setAdapter(E());
        E().w1(new p6.d() { // from class: com.transsion.usercenter.me.adapter.d
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                HistoryMineItemProvider.D(this.f56924a, baseQuickAdapter, view, i11);
            }
        });
        E().n1(meHistoryInfo.getList());
        List<Object> list = meHistoryInfo.getList();
        recyclerView.setVisibility(!(list == null || list.isEmpty()) ? 0 : 8);
        helper.getView(R$id.divider).setVisibility(0);
        helper.getView(R$id.bgView).setBackgroundResource(R$drawable.bg_radius_top_6_color_white_6p);
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = dk.a.b(8);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 4;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_history_layout;
    }
}
