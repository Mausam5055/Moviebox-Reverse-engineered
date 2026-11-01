package com.transsion.home.adapter.trending;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider;
import com.transsion.home.adapter.suboperate.provider.c;
import com.transsion.home.adapter.suboperate.provider.k0;
import com.transsion.home.adapter.suboperate.provider.r0;
import com.transsion.home.adapter.suboperate.provider.w;
import com.transsion.home.adapter.trending.provider.RoomProvider;
import com.transsion.home.adapter.trending.provider.SubjectItemProvider;
import com.transsion.home.adapter.trending.provider.SubjectSingleImgItemProvider;
import com.transsion.home.adapter.trending.provider.b0;
import com.transsion.home.adapter.trending.provider.h;
import com.transsion.home.adapter.trending.provider.h0;
import com.transsion.home.adapter.trending.provider.k;
import com.transsion.home.adapter.trending.provider.l;
import com.transsion.home.adapter.trending.provider.l0;
import com.transsion.home.adapter.trending.provider.p;
import com.transsion.home.adapter.trending.provider.q;
import com.transsion.home.adapter.trending.provider.q0;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingData;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.bean.RankingListItem;
import com.transsion.home.fragment.tab.TrendingFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.TrendingViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import r6.f;
import r6.i;
import rl.e;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B]\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u001e\u0010\u000f\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f\u0012\u0004\u0012\u00020\u000e0\f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0018\u001a\u00020\u00112\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u000e2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010&R*\u0010.\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0017\u00102\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b/\u0010%\u001a\u0004\b0\u00101RC\u0010;\u001a*\u0012\u0004\u0012\u000204\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020503j\u0014\u0012\u0004\u0012\u000204\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000205`68FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006<"}, d2 = {"Lcom/transsion/home/adapter/trending/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/bean/OperateItem;", "Lr6/i;", "Lhl/b;", "exposureHelper", "Lcom/transsion/home/preload/b;", "xmlPreloadImp", "Lcom/transsion/home/fragment/tab/TrendingFragment;", "fragment", "Lcom/transsion/home/viewmodel/TrendingViewModel;", "viewModel", "Lkotlin/Function1;", "", "", "onAppointmentCLick", "isTablet", "", "gridCount", "<init>", "(Lhl/b;Lcom/transsion/home/preload/b;Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/viewmodel/TrendingViewModel;Lkotlin/jvm/functions/Function1;ZI)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "", "list", "n1", "(Ljava/util/Collection;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lhl/b;", "H", "Z", "I", "Lkotlin/Function0;", "J", "Lkotlin/jvm/functions/Function0;", "R1", "()Lkotlin/jvm/functions/Function0;", "U1", "(Lkotlin/jvm/functions/Function0;)V", "retryListener", "K", "T1", "()Z", "isGridTrendingAdapter", "Ljava/util/HashMap;", "", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "Lkotlin/collections/HashMap;", "L", "Lkotlin/Lazy;", "S1", "()Ljava/util/HashMap;", "supportProviders", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class b extends BaseProviderMultiAdapter<OperateItem> implements i {
    public static final int M = 8;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final hl.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int gridCount;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private Function0<Unit> retryListener;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final boolean isGridTrendingAdapter;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final Lazy supportProviders;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44672a;

        static {
            int[] iArr = new int[PostItemType.values().length];
            try {
                iArr[PostItemType.SUBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PostItemType.RANKING_MOVIE_HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PostItemType.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f44672a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(hl.b bVar, final com.transsion.home.preload.b bVar2, final TrendingFragment fragment, final TrendingViewModel trendingViewModel, final Function1<? super Function1<? super Boolean, Unit>, Unit> onAppointmentCLick, boolean z10, int i11) {
        super(null, 1, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(onAppointmentCLick, "onAppointmentCLick");
        this.exposureHelper = bVar;
        this.isTablet = z10;
        this.gridCount = i11;
        this.isGridTrendingAdapter = e.f74553a.b().getBoolean("trending_operation_grid_feeds", true);
        this.supportProviders = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.trending.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.V1(fragment, bVar2, this, onAppointmentCLick, trendingViewModel);
            }
        });
        Collection<BaseItemProvider> collectionValues = S1().values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (BaseItemProvider baseItemProvider : collectionValues) {
            Intrinsics.g(baseItemProvider, "next(...)");
            F1(baseItemProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap V1(TrendingFragment trendingFragment, com.transsion.home.preload.b bVar, b bVar2, Function1 function1, TrendingViewModel trendingViewModel) {
        HomeTabId homeTabId = HomeTabId.Trending;
        com.transsion.home.adapter.suboperate.provider.i iVar = new com.transsion.home.adapter.suboperate.provider.i(homeTabId.getValue(), trendingFragment);
        trendingFragment.getLifecycle().a(iVar);
        SubHorizontalBannerProvider subHorizontalBannerProvider = new SubHorizontalBannerProvider(homeTabId.getValue(), trendingFragment);
        trendingFragment.getLifecycle().a(subHorizontalBannerProvider);
        p pVar = new p(1, bVar, false, bVar2.isTablet);
        return MapsKt.j(TuplesKt.a(PostItemType.GRID_SUBJECT.getValue(), new l(bVar2.gridCount)), TuplesKt.a(PostItemType.OP_SUBJECTS_MOVIE.getValue(), pVar), TuplesKt.a(PostItemType.RANKING_MOVIE_HORIZONTAL.getValue(), pVar), TuplesKt.a(PostItemType.BANNER.getValue(), iVar), TuplesKt.a(PostItemType.OP_RANKING.getValue(), new q(bVar)), TuplesKt.a(PostItemType.TRENDING_NATIVE_AD.getValue(), new q0()), TuplesKt.a(PostItemType.NO_NETWORK.getValue(), new k()), TuplesKt.a(PostItemType.FILTER.getValue(), new w(Integer.valueOf(homeTabId.getValue()), bVar2.isTablet)), TuplesKt.a(PostItemType.CUSTOM_DATA.getValue(), new com.transsion.home.adapter.suboperate.provider.k(homeTabId.getValue(), bVar2.isTablet)), TuplesKt.a(PostItemType.APPOINTMENT_LIST.getValue(), new c(function1, homeTabId.getValue())), TuplesKt.a(PostItemType.FEEDS_TITLE.getValue(), new r0()), TuplesKt.a(PostItemType.SPORT_LIVE.getValue(), new h0(homeTabId.getValue(), bVar2.isTablet)), TuplesKt.a(PostItemType.ROOM.getValue(), new RoomProvider(trendingFragment, trendingViewModel)), TuplesKt.a(PostItemType.SINGLE_IMAGE.getValue(), new b0()), TuplesKt.a(PostItemType.HORIZONTAL_BANNER.getValue(), subHorizontalBannerProvider), TuplesKt.a(PostItemType.SINGLE_SUBJECT.getValue(), new SubjectSingleImgItemProvider(bVar2.isTablet)), TuplesKt.a(PostItemType.SUBJECT.getValue(), new SubjectItemProvider(bVar2.isTablet)), TuplesKt.a(PostItemType.POST_LIST.getValue(), new k0(homeTabId.getValue(), bVar2.isTablet)), TuplesKt.a(PostItemType.RANKING_LIST_MULTI_TAB.getValue(), new l0(homeTabId.getValue(), bVar2.isTablet)), TuplesKt.a(PostItemType.PREFERENCES.getValue(), new com.transsion.home.adapter.trending.provider.e()), TuplesKt.a(PostItemType.MEMBER_BANNER.getValue(), new h("trending/vip_entry")));
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
        Trailer trailer;
        Cover cover;
        Intrinsics.h(data, "data");
        OperateItem operateItem = data.get(position);
        PostItemType.Companion companion = PostItemType.INSTANCE;
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        PostItemType postItemTypeA = companion.a(type);
        int i11 = postItemTypeA == null ? -1 : a.f44672a[postItemTypeA.ordinal()];
        if (i11 == -1) {
            return PostItemType.SUBJECT.ordinal();
        }
        Cover stills = null;
        if (i11 == 1) {
            if (this.isGridTrendingAdapter) {
                return PostItemType.GRID_SUBJECT.ordinal();
            }
            Subject feedsSubject = operateItem.getFeedsSubject();
            Cover cover2 = feedsSubject != null ? feedsSubject.getCover() : null;
            Subject feedsSubject2 = operateItem.getFeedsSubject();
            if (feedsSubject2 == null || (trailer = feedsSubject2.getTrailer()) == null || (cover = trailer.getCover()) == null) {
                Subject feedsSubject3 = operateItem.getFeedsSubject();
                if (feedsSubject3 != null) {
                    stills = feedsSubject3.getStills();
                }
            } else {
                stills = cover;
            }
            return (stills == null || (cover2 != null && Intrinsics.c(stills.getSize(), cover2.getSize()) && Intrinsics.c(stills.getHeight(), cover2.getHeight()) && Intrinsics.c(stills.getWidth(), cover2.getWidth()))) ? PostItemType.SINGLE_SUBJECT.ordinal() : PostItemType.SUBJECT.ordinal();
        }
        if (i11 == 2) {
            operateItem.setRankingData(new RankingData(null, true, 1, null));
            return PostItemType.OP_SUBJECTS_MOVIE.ordinal();
        }
        if (i11 == 3) {
            BannerBean banner = operateItem.getBanner();
            return Intrinsics.c(banner != null ? banner.getStyle() : null, "HORIZONTAL") ? PostItemType.HORIZONTAL_BANNER.ordinal() : PostItemType.BANNER.ordinal();
        }
        if (S1().containsKey(postItemTypeA.getValue())) {
            return postItemTypeA.ordinal();
        }
        lg.a.C0828a.l(lg.a.f68839a, "TrendingAdapter", "unregistered itemType: " + postItemTypeA.name() + "(" + postItemTypeA.ordinal() + "), fallback to SUBJECT", false, 4, null);
        return PostItemType.SUBJECT.ordinal();
    }

    public final Function0<Unit> R1() {
        return this.retryListener;
    }

    public final HashMap<String, BaseItemProvider> S1() {
        return (HashMap) this.supportProviders.getValue();
    }

    /* JADX INFO: renamed from: T1, reason: from getter */
    public final boolean getIsGridTrendingAdapter() {
        return this.isGridTrendingAdapter;
    }

    public final void U1(Function0<Unit> function0) {
        this.retryListener = function0;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void n1(Collection<OperateItem> list) {
        Object objM454constructorimpl;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(list == null ? new ArrayList<>() : list);
        if (list != null) {
            for (OperateItem operateItem : list) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (Intrinsics.c(operateItem.getType(), PostItemType.RANKING_LIST_MULTI_TAB.getValue())) {
                        RankingListData rankingListData = operateItem.getRankingListData();
                        if (rankingListData == null) {
                            arrayList2.remove(operateItem);
                            lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "remove NEW_STYLE_RANKING: rankingListData is null", false, 4, null);
                        } else {
                            List<RankingListItem> items = rankingListData.getItems();
                            if (items != null) {
                                arrayList = new ArrayList();
                                for (Object obj : items) {
                                    RankingListItem rankingListItem = (RankingListItem) obj;
                                    List<Subject> subjects = rankingListItem.getSubjects();
                                    boolean z10 = false;
                                    if (subjects != null && (!subjects.isEmpty())) {
                                        z10 = true;
                                    }
                                    if (!z10) {
                                        lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "remove RankingListItem with empty subjects: " + rankingListItem.getTitle(), false, 4, null);
                                    }
                                    if (z10) {
                                        arrayList.add(obj);
                                    }
                                }
                            } else {
                                arrayList = null;
                            }
                            rankingListData.setItems(arrayList);
                            if (arrayList == null || arrayList.isEmpty()) {
                                arrayList2.remove(operateItem);
                                lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "remove NEW_STYLE_RANKING: items is empty after filtering", false, 4, null);
                            }
                        }
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "setList error: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
                }
            }
        }
        super.n1(arrayList2);
    }
}
