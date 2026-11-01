package com.transsion.home.tv;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.home.tv.bean.Pager;
import com.transsion.home.tv.bean.StreamItem;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.home.tv.bean.TvChannelListDataBean;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends t0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f45687f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f45688g = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f45692d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f45689a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f45690b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f45691c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f45693e = LazyKt.b(new Function0() { // from class: com.transsion.home.tv.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.m();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f45695e;

        b(String str) {
            this.f45695e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("TvLiveDetailViewModel", "fetchChannelList failed code=" + str + " msg=" + str2, true);
            g.this.f().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(TvChannelListDataBean tvChannelListDataBean) {
            Pager pager;
            List<TvChannelItem> items;
            Pager pager2;
            Pager pager3;
            Boolean hasMore = null;
            g.this.f45692d = (!((tvChannelListDataBean == null || (pager3 = tvChannelListDataBean.getPager()) == null) ? false : Intrinsics.c(pager3.getHasMore(), Boolean.TRUE)) || (pager2 = tvChannelListDataBean.getPager()) == null) ? null : pager2.getNextPage();
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.f45695e;
            Integer numValueOf = (tvChannelListDataBean == null || (items = tvChannelListDataBean.getItems()) == null) ? null : Integer.valueOf(items.size());
            if (tvChannelListDataBean != null && (pager = tvChannelListDataBean.getPager()) != null) {
                hasMore = pager.getHasMore();
            }
            c0828a.c("TvLiveDetailViewModel", "fetchChannelList success page=" + str + " size=" + numValueOf + " hasMore=" + hasMore, false);
            g.this.f().q(tvChannelListDataBean);
        }
    }

    public static final class c extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f45696d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ g f45697e;

        c(String str, g gVar) {
            this.f45696d = str;
            this.f45697e = gVar;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("TvLiveDetailViewModel", "loadChannelDetail failed code=" + str + " msg=" + str2, true);
            this.f45697e.e().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(TvChannelItem tvChannelItem) {
            List<StreamItem> streams;
            StreamItem streamItem;
            lg.a.f68839a.c("TvLiveDetailViewModel", "loadChannelDetail success channelId=" + this.f45696d + " url=" + ((tvChannelItem == null || (streams = tvChannelItem.getStreams()) == null || (streamItem = (StreamItem) CollectionsKt.k0(streams)) == null) ? null : streamItem.getUrl()), false);
            this.f45697e.e().q(tvChannelItem);
        }
    }

    private final void d(String str, String str2) {
        g().d(str2, 20, str).f(sg.d.f75349a.c()).subscribe(new b(str2));
    }

    private final ql.a g() {
        return (ql.a) this.f45693e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ql.a m() {
        return (ql.a) zg.c.f79414e.a().h(ql.a.class);
    }

    public final b0 e() {
        return this.f45689a;
    }

    public final b0 f() {
        return this.f45690b;
    }

    public final boolean h() {
        String str = this.f45692d;
        return !(str == null || str.length() == 0);
    }

    public final boolean i() {
        return this.f45691c;
    }

    public final void j(String channelId) {
        Intrinsics.h(channelId, "channelId");
        g().b(channelId).f(sg.d.f75349a.c()).subscribe(new c(channelId, this));
    }

    public final void k(String countryCode) {
        Intrinsics.h(countryCode, "countryCode");
        String str = this.f45692d;
        if (str == null || str.length() == 0) {
            lg.a.f68839a.x("TvLiveDetailViewModel", "loadMoreChannelList: nextPage is null, stop", false);
        } else {
            this.f45691c = false;
            d(countryCode, str);
        }
    }

    public final void l(String countryCode) {
        Intrinsics.h(countryCode, "countryCode");
        this.f45691c = true;
        this.f45692d = null;
        d(countryCode, "1");
    }
}
