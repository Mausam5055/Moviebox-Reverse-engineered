package com.transsion.postdetail.shorttv;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.baselib.db.video.ShortTvFavoriteState;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvPlayListViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f49175n = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsion.postdetail.shorttv.a f49176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f49177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f49178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f49179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f49180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f49181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f49182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f49183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f49184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f49185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f49186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final HashMap f49187m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvPlayListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49176b = (com.transsion.postdetail.shorttv.a) zg.c.f79414e.a().h(com.transsion.postdetail.shorttv.a.class);
        this.f49177c = new b0();
        this.f49178d = new b0();
        this.f49179e = new b0();
        this.f49180f = new b0();
        this.f49181g = new b0();
        this.f49182h = new b0();
        this.f49183i = new b0();
        this.f49184j = new b0();
        this.f49185k = new b0();
        this.f49186l = new b0();
        this.f49187m = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        ShortTvFavoriteState shortTvFavoriteState = new ShortTvFavoriteState();
        shortTvFavoriteState.setFavoriteNum(shortTVFavInfo.getFavoriteNum());
        shortTvFavoriteState.setHasFavorite(shortTVFavInfo.getHasFavorite());
        shortTvFavoriteState.setFavoriteTime(shortTVFavInfo.getFavoriteTime());
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        shortTvFavoriteState.setSubjectId(subjectId);
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvPlayListViewModel$updateFavorite$1$1(this, shortTvFavoriteState, null), 3, null);
    }

    public final void d(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvPlayListViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final b0 e() {
        return this.f49180f;
    }

    public final b0 f() {
        return this.f49181g;
    }

    public final com.transsion.postdetail.shorttv.a g() {
        return this.f49176b;
    }

    public final b0 h() {
        return this.f49177c;
    }

    public final void i(String type) {
        Intrinsics.h(type, "type");
        this.f49183i.q(type);
    }

    public final void j() {
        this.f49183i.q("ad_cancel");
    }
}
