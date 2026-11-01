package com.transsion.home.adapter.suboperate.provider;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44564f;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f44565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f44566b;

        public a(Integer num, List subjects) {
            Intrinsics.h(subjects, "subjects");
            this.f44565a = num;
            this.f44566b = subjects;
        }

        public final Integer a() {
            return this.f44565a;
        }

        public final List b() {
            return this.f44566b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f44565a, aVar.f44565a) && Intrinsics.c(this.f44566b, aVar.f44566b);
        }

        public int hashCode() {
            Integer num = this.f44565a;
            return ((num == null ? 0 : num.hashCode()) * 31) + this.f44566b.hashCode();
        }

        public String toString() {
            return "MusicRankData(index=" + this.f44565a + ", subjects=" + this.f44566b + ")";
        }
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u001f\u0010 \u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b \u0010!R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/transsion/home/adapter/suboperate/provider/b0$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/adapter/suboperate/provider/b0$a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;IZ)V", "F1", "()I", "Landroid/content/Context;", "context", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "Landroid/view/ViewGroup;", "parent", RequestParameters.POSITION, "Landroid/view/View;", "E1", "(Landroid/content/Context;Lcom/transsion/moviedetailapi/bean/Subject;Landroid/view/ViewGroup;I)Landroid/view/View;", "rankListItem", "", "G1", "(Lcom/transsion/home/adapter/suboperate/provider/b0$a;I)V", "H1", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/suboperate/provider/b0$a;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "Z", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class b extends BaseQuickAdapter {
        public static final int I = 8;

        /* JADX INFO: renamed from: F, reason: from kotlin metadata */
        private final OperateItem operateItem;

        /* JADX INFO: renamed from: G, reason: from kotlin metadata */
        private final int tabId;

        /* JADX INFO: renamed from: H, reason: from kotlin metadata */
        private final boolean isTablet;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i11, OperateItem operateItem, int i12, boolean z10) {
            super(i11, null, 2, null);
            Intrinsics.h(operateItem, "operateItem");
            this.operateItem = operateItem;
            this.tabId = i12;
            this.isTablet = z10;
        }

        public /* synthetic */ b(int i11, OperateItem operateItem, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? R$layout.item_provider_ranklist : i11, operateItem, i12, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void D1(Subject subject, b bVar, a aVar, int i11, View view) {
            rl.h.f(subject, "opt_ranking_list");
            bVar.H1(aVar, i11);
        }

        private final View E1(Context context, Subject subject, ViewGroup parent, int position) {
            String url;
            View viewInflate = LayoutInflater.from(context).inflate(R$layout.item_provider_music_rank_item, parent, false);
            View viewFindViewById = viewInflate.findViewById(R$id.ivCover);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            ShapeableImageView shapeableImageView = (ShapeableImageView) viewFindViewById;
            ej.f.b bVarM = ej.f.f61882a.m(context);
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            bVarM.g(url).d(shapeableImageView);
            ((TextView) viewInflate.findViewById(R$id.tvTitle)).setText(subject.getTitle());
            ((TextView) viewInflate.findViewById(R$id.tvRankNum)).setText(String.valueOf(position + 1));
            Intrinsics.e(viewInflate);
            return viewInflate;
        }

        private final int F1() {
            return (com.blankj.utilcode.util.y.e() - dk.a.b(68)) / (this.isTablet ? 2 : 1);
        }

        private final void G1(a rankListItem, int position) {
            Subject subject = (Subject) rankListItem.b().get(position);
            HashMap map = new HashMap();
            map.put("event_type", "browse_music_rank_list_item");
            map.put("sequence", String.valueOf(position));
            map.put("tabId", String.valueOf(this.tabId));
            il.b.a(this.operateItem, map);
            il.b.e(subject, map);
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
        }

        private final void H1(a rankListItem, int position) {
            Subject subject = (Subject) rankListItem.b().get(position);
            HashMap map = new HashMap();
            map.put("event_type", "click_music_rank_list_item");
            map.put("sequence", String.valueOf(position));
            map.put("tabId", String.valueOf(this.tabId));
            il.b.a(this.operateItem, map);
            il.b.e(subject, map);
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.tabId), map);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, final a item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            ViewGroup viewGroup = (LinearLayout) holder.getView(R$id.sub_operation_rankinglist_root);
            viewGroup.removeAllViews();
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.width = F1();
            marginLayoutParams.rightMargin = dk.a.b(8);
            viewGroup.setLayoutParams(marginLayoutParams);
            viewGroup.setBackground(null);
            Integer numA = item.a();
            final int i11 = 0;
            int iIntValue = numA != null ? numA.intValue() : 0;
            for (Object obj : item.b()) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                final Subject subject = (Subject) obj;
                View viewE1 = E1(getContext(), subject, viewGroup, (iIntValue * 3) + i11);
                viewGroup.addView(viewE1);
                viewE1.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.c0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        b0.b.D1(subject, this, item, i11, view);
                    }
                });
                G1(item, i11);
                i11 = i12;
            }
        }
    }

    public b0(int i11, boolean z10) {
        this.f44563e = i11;
        this.f44564f = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(OperateItem operateItem, b0 b0Var) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink == null || !StringsKt.c0(deepLink, "&showType=", false, 2, null)) {
            String deepLink2 = operateItem.getDeepLink();
            if (deepLink2 != null) {
                ak.k.g(deepLink2, "&showType=2");
            }
        } else {
            String deepLink3 = operateItem.getDeepLink();
            if (deepLink3 != null) {
                ak.k.h(deepLink3, null, 1, null);
            }
        }
        b0Var.G(operateItem);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(Function0 function0, View view) {
        function0.invoke();
    }

    private final void F(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("event_type", "browse_music_rank_more");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put("sequence", String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String deepLink = operateItem.getDeepLink();
        if (deepLink == null) {
            deepLink = "";
        }
        map.put("deepLink", deepLink);
        String title = operateItem.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(this.f44563e));
        il.b.a(operateItem, map);
        map.put("opt_type", PostItemType.RANKING_LIST_MUSIC.getValue() + "_MORE");
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44563e), map);
    }

    private final void G(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("event_type", "click_music_rank_more");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put("sequence", String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String deepLink = operateItem.getDeepLink();
        if (deepLink == null) {
            deepLink = "";
        }
        map.put("deepLink", deepLink);
        String title = operateItem.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(this.f44563e));
        il.b.a(operateItem, map);
        map.put("opt_type", PostItemType.RANKING_LIST_MUSIC.getValue() + "_MORE");
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44563e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.main_operation_movie_rank_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.main_operation_movie_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            jg.c.h(textView2);
        } else {
            final Function0 function0 = new Function0() { // from class: com.transsion.home.adapter.suboperate.provider.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b0.C(item, this);
                }
            };
            jg.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b0.D(function0, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b0.E(function0, view);
                }
            });
            F(item);
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.main_operation_movie_rank_recycler);
        b bVar = new b(0, item, this.f44563e, this.f44564f, 1, null);
        recyclerView.setAdapter(bVar);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (!this.f44564f) {
            recyclerView.setOnFlingListener(null);
            new androidx.recyclerview.widget.n().attachToRecyclerView(recyclerView);
        }
        ArrayList arrayList = new ArrayList();
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects != null) {
            int i11 = RangesKt.i(subjects.size(), 9);
            a aVar = null;
            for (int i12 = 0; i12 < i11; i12++) {
                if (aVar == null) {
                    aVar = new a(Integer.valueOf(i12 / 3), new ArrayList());
                }
                aVar.b().add(subjects.get(i12));
                if (aVar.b().size() == 3) {
                    arrayList.add(aVar);
                    aVar = null;
                }
            }
            bVar.n1(arrayList);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.RANKING_LIST_MUSIC.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_op_movie_rank;
    }
}
