package com.transsion.shorttv_pugc.ui.adapter;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.RankingData;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.ui.adapter.provider.ShortTvFavoriteProvider;
import com.transsion.shorttv_pugc.ui.adapter.provider.s;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001fR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001fRC\u0010+\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020%0$j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020%`&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/d;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "Landroidx/fragment/app/Fragment;", "fragment", "", "pageName", "", "isTablet", "isDownloadBtn", "Lbt/b;", "exposureHelper", "isMbTopTab", "<init>", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZLbt/b;Z)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Landroidx/fragment/app/Fragment;", "H", "Ljava/lang/String;", "I", "Z", "J", "K", "Lbt/b;", "L", "Ljava/util/HashMap;", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "Lkotlin/collections/HashMap;", "M", "Lkotlin/Lazy;", "R1", "()Ljava/util/HashMap;", "supportProviders", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseProviderMultiAdapter<OperateItem> {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final Fragment fragment;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final boolean isTablet;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final boolean isDownloadBtn;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final bt.b exposureHelper;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final boolean isMbTopTab;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final Lazy supportProviders;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54016a;

        static {
            int[] iArr = new int[ShortTvItemType.values().length];
            try {
                iArr[ShortTvItemType.RANKING_MOVIE_HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f54016a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Fragment fragment, String pageName, boolean z10, boolean z11, bt.b bVar, boolean z12) {
        super(null, 1, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.fragment = fragment;
        this.pageName = pageName;
        this.isTablet = z10;
        this.isDownloadBtn = z11;
        this.exposureHelper = bVar;
        this.isMbTopTab = z12;
        this.supportProviders = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.adapter.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.S1(this.f54015a);
            }
        });
        Collection<BaseItemProvider> collectionValues = R1().values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (BaseItemProvider baseItemProvider : collectionValues) {
            Intrinsics.g(baseItemProvider, "next(...)");
            F1(baseItemProvider);
        }
    }

    public /* synthetic */ d(Fragment fragment, String str, boolean z10, boolean z11, bt.b bVar, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, str, z10, z11, bVar, (i11 & 32) != 0 ? false : z12);
    }

    private final HashMap<String, BaseItemProvider> R1() {
        return (HashMap) this.supportProviders.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap S1(d dVar) {
        return MapsKt.j(TuplesKt.a(ShortTvItemType.BANNER.getValue(), new com.transsion.shorttv_pugc.ui.adapter.provider.j(dVar.fragment, dVar.pageName, dVar.isTablet, dVar.isMbTopTab)), TuplesKt.a(ShortTvItemType.FILTER.getValue(), new com.transsion.shorttv_pugc.ui.adapter.provider.q()), TuplesKt.a(ShortTvItemType.APPOINTMENT_LIST.getValue(), new com.transsion.shorttv_pugc.ui.adapter.provider.f(dVar.pageName)), TuplesKt.a(ShortTvItemType.CUSTOM_DATA.getValue(), new com.transsion.shorttv_pugc.ui.adapter.provider.m(dVar.pageName, dVar.isTablet)), TuplesKt.a(ShortTvItemType.TRENDING.getValue(), new com.transsion.shorttv_pugc.ui.adapter.provider.r(dVar.pageName, dVar.isDownloadBtn)), TuplesKt.a(ShortTvItemType.TRENDING_TITLE.getValue(), new s()), TuplesKt.a(ShortTvItemType.FAVORITE.getValue(), new ShortTvFavoriteProvider(dVar.fragment)));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        bt.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bt.b.h(bVar, (LinearLayoutManager) layoutManager, bindingAdapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends OperateItem> data, int position) {
        Intrinsics.h(data, "data");
        OperateItem operateItem = data.get(position);
        ShortTvItemType.Companion companion = ShortTvItemType.INSTANCE;
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        ShortTvItemType shortTvItemTypeA = companion.a(type);
        int i11 = shortTvItemTypeA == null ? -1 : a.f54016a[shortTvItemTypeA.ordinal()];
        if (i11 == -1) {
            return ShortTvItemType.TRENDING.ordinal();
        }
        if (i11 != 1) {
            return shortTvItemTypeA.ordinal();
        }
        operateItem.setRankingData(new RankingData(null, true, 1, null));
        return ShortTvItemType.OP_SUBJECTS_MOVIE.ordinal();
    }
}
