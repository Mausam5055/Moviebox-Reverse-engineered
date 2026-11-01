package com.transsion.home.tv.adapter;

import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.operateUGC.provider.FeedsBigUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.FeedsGridUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.f0;
import com.transsion.home.adapter.operateUGC.provider.p;
import com.transsion.home.adapter.operateUGC.provider.s;
import com.transsion.home.adapter.suboperate.provider.SubFeedsEducationProvider;
import com.transsion.home.adapter.suboperate.provider.SubFeedsSingleImageProvider;
import com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider;
import com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider;
import com.transsion.home.adapter.suboperate.provider.SubRankListProvider;
import com.transsion.home.adapter.suboperate.provider.SubRankingProvider;
import com.transsion.home.adapter.suboperate.provider.b0;
import com.transsion.home.adapter.suboperate.provider.k0;
import com.transsion.home.adapter.suboperate.provider.q;
import com.transsion.home.adapter.suboperate.provider.r0;
import com.transsion.home.adapter.suboperate.provider.w;
import com.transsion.home.adapter.trending.provider.h0;
import com.transsion.home.adapter.trending.provider.l0;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingData;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.bean.RankingListItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010#\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u009b\u0001\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004\u0012\u001a\b\u0002\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u000f\u0012 \b\u0002\u0010\u0011\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000f\u0012\u0004\u0012\u00020\t0\u000f\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\t2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u001e\u001a\u00020\b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\b¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\t2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)R\u001a\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R&\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010.R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u0010\u000e\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010.R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R,\u0010\u0011\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000f\u0012\u0004\u0012\u00020\t0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00103R\u001c\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020\u0013078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/transsion/home/tv/adapter/f;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/bean/OperateItem;", "Lr6/i;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "hostFragment", "Lkotlin/Function2;", "Lcom/transsion/home/tv/bean/TvChannelItem;", "", "", "onChannelClick", "tabId", "", "isTablet", "gridCount", "Lkotlin/Function1;", "onPositionScroll", "onAppointmentClick", "Lkotlin/Function0;", "", "firstChannelId", "<init>", "(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/functions/Function2;IZILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "", "list", "n1", "(Ljava/util/Collection;)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "a2", "(I)Z", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onDetachedFromRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "G", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "H", "Lkotlin/jvm/functions/Function2;", "I", "J", "Z", "K", "L", "Lkotlin/jvm/functions/Function1;", "M", "N", "Lkotlin/jvm/functions/Function0;", "", "O", "Ljava/util/Set;", "supportTypes", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class f extends BaseProviderMultiAdapter<OperateItem> implements r6.i {
    public static final int P = 8;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final BaseHomeSubFragment<?> hostFragment;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final Function2<TvChannelItem, Integer, Unit> onChannelClick;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final int gridCount;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final Function1<Integer, Unit> onPositionScroll;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final Function1<Function1<? super Boolean, Unit>, Unit> onAppointmentClick;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final Function0<String> firstChannelId;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private final Set<String> supportTypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class a implements Function0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f45594a = new a();

        a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke() {
            return null;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45595a;

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
            f45595a = iArr;
        }
    }

    public f() {
        this(null, null, 0, false, 0, null, null, null, 255, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public f(BaseHomeSubFragment<?> baseHomeSubFragment, Function2<? super TvChannelItem, ? super Integer, Unit> onChannelClick, int i11, boolean z10, int i12, Function1<? super Integer, Unit> onPositionScroll, Function1<? super Function1<? super Boolean, Unit>, Unit> onAppointmentClick, Function0<String> firstChannelId) {
        Lifecycle lifecycle;
        super(new ArrayList());
        Intrinsics.h(onChannelClick, "onChannelClick");
        Intrinsics.h(onPositionScroll, "onPositionScroll");
        Intrinsics.h(onAppointmentClick, "onAppointmentClick");
        Intrinsics.h(firstChannelId, "firstChannelId");
        this.hostFragment = baseHomeSubFragment;
        this.onChannelClick = onChannelClick;
        this.tabId = i11;
        this.isTablet = z10;
        this.gridCount = i12;
        this.onPositionScroll = onPositionScroll;
        this.onAppointmentClick = onAppointmentClick;
        this.firstChannelId = firstChannelId;
        this.supportTypes = new LinkedHashSet();
        Function2 function2 = new Function2() { // from class: com.transsion.home.tv.adapter.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return f.Y1(this.f45592a, (String) obj, (BaseItemProvider) obj2);
            }
        };
        function2.invoke(PostItemType.TV_CHANNEL_HEADER.getValue(), new i());
        function2.invoke(PostItemType.TV_CHANNEL_ITEM.getValue(), new k(new Function2() { // from class: com.transsion.home.tv.adapter.e
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return f.Z1(this.f45593a, (TvChannelItem) obj, ((Integer) obj2).intValue());
            }
        }, firstChannelId));
        if (baseHomeSubFragment != null) {
            com.transsion.home.adapter.suboperate.provider.i iVar = new com.transsion.home.adapter.suboperate.provider.i(i11, baseHomeSubFragment);
            baseHomeSubFragment.getLifecycle().a(iVar);
            function2.invoke(PostItemType.BANNER.getValue(), iVar);
            SubHorizontalBannerProvider subHorizontalBannerProvider = new SubHorizontalBannerProvider(i11, baseHomeSubFragment);
            baseHomeSubFragment.getLifecycle().a(subHorizontalBannerProvider);
            function2.invoke(PostItemType.HORIZONTAL_BANNER.getValue(), subHorizontalBannerProvider);
        }
        SubMyCourseProvider subMyCourseProvider = new SubMyCourseProvider(i11);
        if (baseHomeSubFragment != null && (lifecycle = baseHomeSubFragment.getLifecycle()) != null) {
            lifecycle.a(subMyCourseProvider);
        }
        function2.invoke(PostItemType.FILTER.getValue(), new w(Integer.valueOf(i11), z10));
        function2.invoke(PostItemType.APPOINTMENT_LIST.getValue(), new com.transsion.home.adapter.suboperate.provider.c(onAppointmentClick, i11));
        function2.invoke(PostItemType.CUSTOM_DATA.getValue(), new com.transsion.home.adapter.suboperate.provider.k(i11, z10));
        function2.invoke(PostItemType.MULTILINE_SUBJECTS_LIST.getValue(), new n(i11));
        function2.invoke(PostItemType.SUBJECT.getValue(), new q(i11, z10));
        function2.invoke(PostItemType.SINGLE_SUBJECT.getValue(), new SubFeedsSingleImageProvider(i11, z10));
        function2.invoke(PostItemType.EDUCATION_SUBJECT.getValue(), new SubFeedsEducationProvider(i11));
        function2.invoke(PostItemType.TRENDING_NATIVE_AD.getValue(), new com.transsion.home.adapter.suboperate.provider.a());
        function2.invoke(PostItemType.MY_COURSE.getValue(), subMyCourseProvider);
        function2.invoke(PostItemType.FEEDS_TITLE.getValue(), new r0());
        function2.invoke(PostItemType.OP_RANKING.getValue(), new SubRankingProvider(i11));
        function2.invoke(PostItemType.RANKING_LIST.getValue(), new SubRankListProvider(i11));
        function2.invoke(PostItemType.RANKING_LIST_MUSIC.getValue(), new b0(i11, z10));
        function2.invoke(PostItemType.RANKING_LIST_MULTI_TAB.getValue(), new l0(i11, z10));
        function2.invoke(PostItemType.POST_LIST.getValue(), new k0(i11, z10));
        function2.invoke(PostItemType.SINGLE_IMAGE.getValue(), new com.transsion.home.adapter.trending.provider.b0());
        function2.invoke(PostItemType.SPORT_LIVE.getValue(), new h0(i11, z10));
        if (baseHomeSubFragment != null) {
            com.transsion.home.adapter.operateUGC.provider.c cVar = new com.transsion.home.adapter.operateUGC.provider.c(i11, baseHomeSubFragment);
            baseHomeSubFragment.getLifecycle().a(cVar);
            function2.invoke(PostItemType.UGC_BANNER.getValue(), cVar);
        }
        function2.invoke(PostItemType.UGC_MOVIE_RANK.getValue(), new p(i11, z10));
        function2.invoke(PostItemType.UGC_MUSIC_RANK.getValue(), new s(i11));
        function2.invoke(PostItemType.UGC_FILTER.getValue(), new com.transsion.home.adapter.operateUGC.provider.j(Integer.valueOf(i11), z10));
        function2.invoke(PostItemType.HASH_TAG.getValue(), new com.transsion.home.adapter.operateUGC.provider.l(Integer.valueOf(i11)));
        function2.invoke(PostItemType.UGC_RANKING_LIST.getValue(), new com.transsion.home.adapter.operateUGC.provider.w(i11));
        function2.invoke(PostItemType.UGC_VERTICAL_OPT_LIST.getValue(), new f0(i11));
        function2.invoke(PostItemType.TRENDING_FEES_GRID.getValue(), new FeedsGridUGCProvider(i12, i11));
        function2.invoke(PostItemType.TRENDING_FEES_BIG.getValue(), new FeedsBigUGCProvider(i11));
        function2.invoke(PostItemType.UGC_CUSTOM.getValue(), new com.transsion.home.adapter.suboperate.provider.k(i11, z10));
        function2.invoke(PostItemType.UGC_SINGLE_IMAGE.getValue(), new com.transsion.home.adapter.trending.provider.b0());
        function2.invoke(PostItemType.UGC_SPORT_LIVE.getValue(), new h0(i11, z10));
    }

    public /* synthetic */ f(BaseHomeSubFragment baseHomeSubFragment, Function2 function2, int i11, boolean z10, int i12, Function1 function1, Function1 function3, Function0 function0, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : baseHomeSubFragment, (i13 & 2) != 0 ? new Function2() { // from class: com.transsion.home.tv.adapter.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return f.V1((TvChannelItem) obj, ((Integer) obj2).intValue());
            }
        } : function2, (i13 & 4) != 0 ? HomeTabId.TVChannel.getValue() : i11, (i13 & 8) != 0 ? false : z10, (i13 & 16) != 0 ? 2 : i12, (i13 & 32) != 0 ? new Function1() { // from class: com.transsion.home.tv.adapter.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.W1(((Integer) obj).intValue());
            }
        } : function1, (i13 & 64) != 0 ? new Function1() { // from class: com.transsion.home.tv.adapter.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.X1((Function1) obj);
            }
        } : function3, (i13 & 128) != 0 ? a.f45594a : function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V1(TvChannelItem tvChannelItem, int i11) {
        Intrinsics.h(tvChannelItem, "<unused var>");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W1(int i11) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X1(Function1 callback) {
        Intrinsics.h(callback, "callback");
        callback.invoke(Boolean.FALSE);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y1(f fVar, String key, BaseItemProvider provider) {
        Intrinsics.h(key, "key");
        Intrinsics.h(provider, "provider");
        fVar.supportTypes.add(key);
        fVar.F1(provider);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z1(f fVar, TvChannelItem channel, int i11) {
        Intrinsics.h(channel, "channel");
        fVar.onChannelClick.invoke(channel, Integer.valueOf(i11));
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        this.onPositionScroll.invoke(Integer.valueOf(holder.getBindingAdapterPosition()));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends OperateItem> data, int position) {
        Trailer trailer;
        Cover cover;
        Intrinsics.h(data, "data");
        OperateItem operateItem = data.get(position);
        String type = operateItem.getType();
        PostItemType postItemType = PostItemType.TV_CHANNEL_HEADER;
        if (Intrinsics.c(type, postItemType.getValue())) {
            return postItemType.ordinal();
        }
        String type2 = operateItem.getType();
        PostItemType postItemType2 = PostItemType.TV_CHANNEL_ITEM;
        if (Intrinsics.c(type2, postItemType2.getValue())) {
            return postItemType2.ordinal();
        }
        PostItemType.Companion companion = PostItemType.INSTANCE;
        String type3 = operateItem.getType();
        if (type3 == null) {
            type3 = "";
        }
        PostItemType postItemTypeA = companion.a(type3);
        if (postItemTypeA == PostItemType.UGC_CUSTOM) {
            return PostItemType.CUSTOM_DATA.ordinal();
        }
        if (postItemTypeA == PostItemType.UGC_SINGLE_IMAGE) {
            return PostItemType.SINGLE_IMAGE.ordinal();
        }
        if (postItemTypeA == PostItemType.UGC_SPORT_LIVE) {
            return PostItemType.SPORT_LIVE.ordinal();
        }
        int i11 = postItemTypeA == null ? -1 : b.f45595a[postItemTypeA.ordinal()];
        if (i11 == -1) {
            return postItemType2.ordinal();
        }
        Cover stills = null;
        if (i11 == 1) {
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
            if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), true)) {
                return PostItemType.EDUCATION_SUBJECT.ordinal();
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
        if (this.supportTypes.contains(postItemTypeA.getValue())) {
            return postItemTypeA.ordinal();
        }
        lg.a.C0828a.l(lg.a.f68839a, "TvChannelAdapter", "unregistered itemType: " + postItemTypeA.name() + "(" + postItemTypeA.ordinal() + "), fallback to tv channel", false, 4, null);
        return postItemType2.ordinal();
    }

    public final boolean a2(int position) {
        OperateItem operateItem = (OperateItem) CollectionsKt.l0(getData(), position);
        return Intrinsics.c(operateItem != null ? operateItem.getType() : null, PostItemType.TV_CHANNEL_ITEM.getValue());
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void n1(Collection<OperateItem> list) {
        Object objM454constructorimpl;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(list == null ? CollectionsKt.l() : list);
        if (list != null) {
            for (OperateItem operateItem : list) {
                if (!CollectionsKt.b0(this.supportTypes, operateItem.getType())) {
                    arrayList2.remove(operateItem);
                    lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "remove unSupport operate " + operateItem.getType(), false, 4, null);
                }
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

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
    }
}
