package com.transsion.home.tv;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.p009lifecycle.b0;
import com.google.gson.Gson;
import com.transsion.home.R$string;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.tv.bean.CountryDataBean;
import com.transsion.home.tv.bean.CountryItem;
import com.transsion.home.tv.bean.Pager;
import com.transsion.home.tv.bean.PendingRefreshResult;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.home.tv.bean.TvChannelListDataBean;
import com.transsion.home.tv.bean.TvChannelLoadMoreResult;
import com.transsion.home.tv.bean.TvChannelRefreshResult;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import rl.h;

/* JADX INFO: loaded from: classes5.dex */
public final class TVChannelHomeViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f45552p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f45553q = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f45554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f45555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f45556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f45557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f45558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Gson f45559g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f45560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Pager f45561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f45562j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f45563k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PendingRefreshResult f45564l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f45565m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f45566n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final TVChannelHomeViewModel$localeChangedReceiver$1 f45567o;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f45569e;

        b(boolean z10) {
            this.f45569e = z10;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("TVChannelHomeViewModel", "loadCountryList failed code=" + str + " msg=" + str2, true);
            if (this.f45569e) {
                return;
            }
            TVChannelHomeViewModel.this.q().q(null);
            TVChannelHomeViewModel.this.p().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(CountryDataBean countryDataBean) {
            List<CountryItem> listL;
            String countryCode;
            if (countryDataBean == null || (listL = countryDataBean.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            TVChannelHomeViewModel.this.m().q(listL);
            if (this.f45569e) {
                lg.a.f68839a.c("TVChannelHomeViewModel", "loadCountryList success, country list updated, cache hit skip refresh", false);
                return;
            }
            CountryItem currentCountry = countryDataBean != null ? countryDataBean.getCurrentCountry() : null;
            TVChannelHomeViewModel.this.q().q(currentCountry);
            lg.a.f68839a.c("TVChannelHomeViewModel", "loadCountryList success, first=" + (currentCountry != null ? currentCountry.getCountryName() : null), false);
            if (currentCountry == null || (countryCode = currentCountry.getCountryCode()) == null) {
                return;
            }
            TVChannelHomeViewModel.this.y(countryCode);
        }
    }

    public static final class c extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f45571e;

        c(String str) {
            this.f45571e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            TVChannelHomeViewModel.this.f45566n = false;
            lg.a.f68839a.i("TVChannelHomeViewModel", "loadMore failed code=" + str + " msg=" + str2, true);
            TVChannelHomeViewModel.this.o().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(TvChannelListDataBean tvChannelListDataBean) {
            List<TvChannelItem> listL;
            TVChannelHomeViewModel.this.f45566n = false;
            TVChannelHomeViewModel.this.f45561i = tvChannelListDataBean != null ? tvChannelListDataBean.getPager() : null;
            TVChannelHomeViewModel tVChannelHomeViewModel = TVChannelHomeViewModel.this;
            if (tvChannelListDataBean == null || (listL = tvChannelListDataBean.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            List listK = tVChannelHomeViewModel.k(listL, false);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.f45571e;
            int size = listK.size();
            Pager pager = TVChannelHomeViewModel.this.f45561i;
            c0828a.c("TVChannelHomeViewModel", "loadMore success page=" + str + " size=" + size + " hasMore=" + (pager != null ? pager.getHasMore() : null), false);
            TVChannelHomeViewModel.this.o().q(new TvChannelLoadMoreResult(listK, TVChannelHomeViewModel.this.s()));
        }
    }

    public static final class d extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f45573e;

        d(long j11) {
            this.f45573e = j11;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("TVChannelHomeViewModel", "requestFirstPageChannels failed code=" + str + " msg=" + str2, true);
            TVChannelHomeViewModel.this.v(this.f45573e, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(TvChannelListDataBean tvChannelListDataBean) {
            TVChannelHomeViewModel.this.v(this.f45573e, tvChannelListDataBean);
        }
    }

    public static final class e extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f45575e;

        e(long j11) {
            this.f45575e = j11;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("TVChannelHomeViewModel", "requestOperateData failed code=" + str + " msg=" + str2, true);
            TVChannelHomeViewModel.this.w(this.f45575e, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(SubOperateData subOperateData) {
            SubOperateData subOperateDataCopy$default = null;
            if (subOperateData != null) {
                List<OperateItem> items = subOperateData.getItems();
                subOperateDataCopy$default = SubOperateData.copy$default(subOperateData, items != null ? CollectionsKt.U0(items) : null, null, null, null, 14, null);
            }
            TVChannelHomeViewModel.this.w(this.f45575e, subOperateDataCopy$default);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [android.content.BroadcastReceiver, com.transsion.home.tv.TVChannelHomeViewModel$localeChangedReceiver$1] */
    public TVChannelHomeViewModel(Application app) {
        super(app);
        Intrinsics.h(app, "app");
        this.f45554b = new b0();
        this.f45555c = new b0();
        this.f45556d = new b0();
        this.f45557e = new b0();
        this.f45558f = LazyKt.b(new Function0() { // from class: com.transsion.home.tv.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TVChannelHomeViewModel.C();
            }
        });
        this.f45559g = new Gson();
        this.f45560h = "";
        this.f45562j = true;
        ?? r11 = new BroadcastReceiver() { // from class: com.transsion.home.tv.TVChannelHomeViewModel$localeChangedReceiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Intrinsics.h(context, "context");
                Intrinsics.h(intent, "intent");
                rl.e.f74553a.b().remove("default_tv_country");
                this.f45576a.q().n(null);
                lg.a.f68839a.c("TVChannelHomeViewModel", "locale changed, clear cached tv country", false);
            }
        };
        this.f45567o = r11;
        IntentFilter intentFilter = new IntentFilter(b().getPackageName() + "_LOCALE_CHANGED_ACTION");
        if (Build.VERSION.SDK_INT >= 33) {
            b().registerReceiver(r11, intentFilter, 2);
        } else {
            b().registerReceiver(r11, intentFilter);
        }
    }

    private final void A(long j11, String str) {
        r().c(str).f(sg.d.f75349a.c()).subscribe(new e(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ql.a C() {
        return (ql.a) zg.c.f79414e.a().h(ql.a.class);
    }

    private final void D(long j11) {
        PendingRefreshResult pendingRefreshResult;
        List<TvChannelItem> listL;
        if (j11 == this.f45563k && (pendingRefreshResult = this.f45564l) != null && pendingRefreshResult.getChannelDone() && pendingRefreshResult.getOperateDone()) {
            this.f45565m = false;
            if (pendingRefreshResult.getChannelFailed() || pendingRefreshResult.getChannelData() == null) {
                this.f45556d.q(null);
                return;
            }
            TvChannelListDataBean channelData = pendingRefreshResult.getChannelData();
            this.f45561i = channelData != null ? channelData.getPager() : null;
            List listL2 = l(pendingRefreshResult.getOperateData());
            TvChannelListDataBean channelData2 = pendingRefreshResult.getChannelData();
            if (channelData2 == null || (listL = channelData2.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            List listK = k(listL, true);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(listL2);
            arrayList.addAll(listK);
            lg.a.C0828a c0828a = lg.a.f68839a;
            int size = listL2.size();
            int size2 = listK.size();
            Pager pager = this.f45561i;
            c0828a.c("TVChannelHomeViewModel", "refresh merge success operate=" + size + " channels=" + size2 + " hasMore=" + (pager != null ? pager.getHasMore() : null), false);
            this.f45556d.q(new TvChannelRefreshResult(arrayList, s()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List k(List list, boolean z10) {
        if (list.isEmpty()) {
            return CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        if (z10) {
            String string = b().getString(R$string.home_tv_all_channels);
            Intrinsics.g(string, "getString(...)");
            arrayList.add(new OperateItem(string, PostItemType.TV_CHANNEL_HEADER.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483644, null));
        }
        List list2 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(new OperateItem(null, PostItemType.TV_CHANNEL_ITEM.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, (TvChannelItem) it.next(), 1073741821, null));
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private final List l(SubOperateData subOperateData) {
        List arrayList;
        List<OperateItem> items;
        List listI0;
        if (subOperateData == null || (items = subOperateData.getItems()) == null || (listI0 = CollectionsKt.I0(items, new Comparator() { // from class: com.transsion.home.tv.TVChannelHomeViewModel$convertOperateDataToList$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((OperateItem) t11).getPosition(), ((OperateItem) t12).getPosition());
            }
        })) == null || (arrayList = CollectionsKt.U0(listI0)) == null) {
            arrayList = new ArrayList();
        }
        String trendingTitle = subOperateData != null ? subOperateData.getTrendingTitle() : null;
        if (trendingTitle != null && trendingTitle.length() != 0) {
            arrayList.add(new OperateItem(subOperateData != null ? subOperateData.getTrendingTitle() : null, PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483644, null));
        }
        h.c(arrayList, subOperateData != null ? subOperateData.getOps() : null);
        return arrayList;
    }

    private final ql.a r() {
        return (ql.a) this.f45558f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(long j11, TvChannelListDataBean tvChannelListDataBean) {
        PendingRefreshResult pendingRefreshResult;
        if (j11 == this.f45563k && (pendingRefreshResult = this.f45564l) != null) {
            pendingRefreshResult.setChannelDone(true);
            pendingRefreshResult.setChannelData(tvChannelListDataBean);
            pendingRefreshResult.setChannelFailed(tvChannelListDataBean == null);
            D(j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(long j11, SubOperateData subOperateData) {
        PendingRefreshResult pendingRefreshResult;
        if (j11 == this.f45563k && (pendingRefreshResult = this.f45564l) != null) {
            pendingRefreshResult.setOperateDone(true);
            pendingRefreshResult.setOperateData(subOperateData);
            D(j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(String str) {
        if (this.f45565m) {
            return;
        }
        this.f45565m = true;
        this.f45560h = str;
        this.f45561i = null;
        this.f45562j = true;
        long j11 = this.f45563k + 1;
        this.f45563k = j11;
        this.f45564l = new PendingRefreshResult(str, false, false, false, null, null, 62, null);
        A(j11, str);
        z(j11, str);
    }

    private final void z(long j11, String str) {
        r().d("1", 10, str).f(sg.d.f75349a.c()).subscribe(new d(j11));
    }

    public final void B(CountryItem country) {
        Intrinsics.h(country, "country");
        this.f45554b.q(country);
        rl.e.f74553a.b().putString("default_tv_country", this.f45559g.toJson(country));
        String countryCode = country.getCountryCode();
        if (countryCode != null) {
            y(countryCode);
        }
    }

    public final b0 m() {
        return this.f45555c;
    }

    public final String n() {
        TvChannelListDataBean channelData;
        List<TvChannelItem> items;
        TvChannelItem tvChannelItem;
        PendingRefreshResult pendingRefreshResult = this.f45564l;
        if (pendingRefreshResult == null || (channelData = pendingRefreshResult.getChannelData()) == null || (items = channelData.getItems()) == null || (tvChannelItem = (TvChannelItem) CollectionsKt.k0(items)) == null) {
            return null;
        }
        return tvChannelItem.getChannelId();
    }

    public final b0 o() {
        return this.f45557e;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        super.onCleared();
        b().unregisterReceiver(this.f45567o);
    }

    public final b0 p() {
        return this.f45556d;
    }

    public final b0 q() {
        return this.f45554b;
    }

    public final boolean s() {
        Pager pager = this.f45561i;
        if (pager != null) {
            return Intrinsics.c(pager.getHasMore(), Boolean.TRUE);
        }
        return false;
    }

    public final void t() {
        String string = rl.e.f74553a.b().getString("default_tv_country", "");
        boolean z10 = string == null || string.length() == 0;
        boolean z11 = !z10;
        if (!z10) {
            try {
                CountryItem countryItem = (CountryItem) this.f45559g.fromJson(string, CountryItem.class);
                if (countryItem != null) {
                    this.f45554b.q(countryItem);
                    lg.a.f68839a.c("TVChannelHomeViewModel", "loadCountryList use cache country=" + countryItem.getCountryName(), false);
                    String countryCode = countryItem.getCountryCode();
                    if (countryCode != null) {
                        y(countryCode);
                    }
                }
            } catch (Exception e11) {
                lg.a.f68839a.i("TVChannelHomeViewModel", "restore country from cache failed: " + e11.getMessage(), false);
            }
        }
        r().a().f(sg.d.f75349a.c()).subscribe(new b(z11));
    }

    public final void u() {
        if (this.f45565m || this.f45566n) {
            return;
        }
        Pager pager = this.f45561i;
        String nextPage = pager != null ? pager.getNextPage() : null;
        if (nextPage == null || nextPage.length() == 0) {
            lg.a.f68839a.x("TVChannelHomeViewModel", "loadMoreChannels: nextPage is null, ignore", false);
            return;
        }
        this.f45566n = true;
        this.f45562j = false;
        r().d(nextPage, 10, this.f45560h).f(sg.d.f75349a.c()).subscribe(new c(nextPage));
    }

    public final void x() {
        if (this.f45560h.length() == 0 || this.f45565m) {
            return;
        }
        y(this.f45560h);
    }
}
