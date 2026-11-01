package com.transsion.home.adapter.operateUGC;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.operateUGC.provider.FeedsBigUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.FeedsGridUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.RoomUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.c;
import com.transsion.home.adapter.operateUGC.provider.c0;
import com.transsion.home.adapter.operateUGC.provider.j0;
import com.transsion.home.adapter.operateUGC.provider.l;
import com.transsion.home.adapter.operateUGC.provider.p;
import com.transsion.home.adapter.operateUGC.provider.s;
import com.transsion.home.adapter.suboperate.provider.r0;
import com.transsion.home.adapter.trending.provider.e;
import com.transsion.home.adapter.trending.provider.k;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.TrendingUGCFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 32\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00014B3\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0018\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR*\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020)0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0017\u00102\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/bean/OperateItem;", "Lr6/i;", "", "gridCount", "Lhl/b;", "exposureHelper", "", "isTablet", "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;", "trendingViewModel", "Lcom/transsion/home/fragment/tab/TrendingUGCFragment;", "fragment", "<init>", "(ILhl/b;ZLcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)V", "", "list", "", "n1", "(Ljava/util/Collection;)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lhl/b;", "Lkotlin/Function0;", "H", "Lkotlin/jvm/functions/Function0;", "T1", "()Lkotlin/jvm/functions/Function0;", "U1", "(Lkotlin/jvm/functions/Function0;)V", "retryListener", "", "", "I", "Ljava/util/List;", "supportTypes", "Lcom/transsion/home/adapter/trending/provider/e;", "J", "Lcom/transsion/home/adapter/trending/provider/e;", "S1", "()Lcom/transsion/home/adapter/trending/provider/e;", "preferencesProvider", "K", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class b extends BaseProviderMultiAdapter<OperateItem> implements i {
    public static final int L = 8;
    public static final String M = "UGC_VIDEO_PORTRAIT_LINES";
    public static final String N = "UGC_VIDEO_SHORT_TV";
    public static final String O = "UGC_VIDEO_LIST_METADATA";

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final hl.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Function0<Unit> retryListener;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final List<String> supportTypes;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final e preferencesProvider;

    /* JADX INFO: renamed from: com.transsion.home.adapter.operateUGC.b$b, reason: collision with other inner class name */
    public /* synthetic */ class C0626b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44304a;

        static {
            int[] iArr = new int[PostItemType.values().length];
            try {
                iArr[PostItemType.UGC_CUSTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f44304a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(int i11, hl.b bVar, boolean z10, TrendingUGCViewModel trendingUGCViewModel, TrendingUGCFragment fragment) {
        super(null, 1, null);
        Intrinsics.h(fragment, "fragment");
        this.exposureHelper = bVar;
        this.supportTypes = new ArrayList();
        e eVar = new e();
        this.preferencesProvider = eVar;
        Function2 function2 = new Function2() { // from class: com.transsion.home.adapter.operateUGC.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return b.R1(this.f44275a, (String) obj, (BaseItemProvider) obj2);
            }
        };
        HomeTabId homeTabId = HomeTabId.UGC_Trending;
        c cVar = new c(homeTabId.getValue(), fragment);
        fragment.getLifecycle().a(cVar);
        function2.invoke(PostItemType.UGC_BANNER.getValue(), cVar);
        function2.invoke(PostItemType.TRENDING_FEES_GRID.getValue(), new FeedsGridUGCProvider(i11, homeTabId.getValue()));
        function2.invoke(PostItemType.TRENDING_FEES_BIG.getValue(), new FeedsBigUGCProvider(homeTabId.getValue()));
        function2.invoke(PostItemType.NO_NETWORK.getValue(), new k());
        function2.invoke(PostItemType.UGC_MOVIE_RANK.getValue(), new p(homeTabId.getValue(), z10));
        function2.invoke(PostItemType.UGC_MUSIC_RANK.getValue(), new s(homeTabId.getValue()));
        function2.invoke(PostItemType.HASH_TAG.getValue(), new l(Integer.valueOf(homeTabId.getValue())));
        function2.invoke(PostItemType.ROOM.getValue(), new RoomUGCProvider(homeTabId.getValue(), fragment, trendingUGCViewModel));
        function2.invoke(PostItemType.UGC_PORTRAIT_GRID.getValue(), new j0(homeTabId.getValue()));
        function2.invoke(PostItemType.UGC_CUSTOM.getValue(), new com.transsion.home.adapter.suboperate.provider.k(homeTabId.getValue(), z10));
        function2.invoke(PostItemType.FEEDS_TITLE.getValue(), new r0());
        function2.invoke(PostItemType.TRENDING_MARGIN.getValue(), new c0());
        function2.invoke(PostItemType.PREFERENCES.getValue(), eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R1(b bVar, String key, BaseItemProvider provider) {
        Intrinsics.h(key, "key");
        Intrinsics.h(provider, "provider");
        bVar.supportTypes.add(key);
        bVar.F1(provider);
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bVar.h((LinearLayoutManager) layoutManager, bindingAdapterPosition, true);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends OperateItem> data, int position) {
        Intrinsics.h(data, "data");
        OperateItem operateItem = data.get(position);
        PostItemType.Companion companion = PostItemType.INSTANCE;
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        PostItemType postItemTypeA = companion.a(type);
        int i11 = postItemTypeA == null ? -1 : C0626b.f44304a[postItemTypeA.ordinal()];
        if (i11 != -1) {
            return i11 != 1 ? postItemTypeA.ordinal() : PostItemType.CUSTOM_DATA.ordinal();
        }
        return PostItemType.TRENDING_FEES_GRID.ordinal();
    }

    /* JADX INFO: renamed from: S1, reason: from getter */
    public final e getPreferencesProvider() {
        return this.preferencesProvider;
    }

    public final Function0<Unit> T1() {
        return this.retryListener;
    }

    public final void U1(Function0<Unit> function0) {
        this.retryListener = function0;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void n1(Collection<OperateItem> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list == null ? new ArrayList<>() : list);
        if (list != null) {
            for (OperateItem operateItem : list) {
                if (!CollectionsKt.b0(this.supportTypes, operateItem.getType())) {
                    arrayList.remove(operateItem);
                    lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "remove unSupport operate " + operateItem.getType(), false, 4, null);
                }
            }
        }
        super.n1(arrayList);
    }
}
