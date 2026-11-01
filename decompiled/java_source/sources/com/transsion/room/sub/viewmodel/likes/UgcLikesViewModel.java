package com.transsion.room.sub.viewmodel.likes;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class UgcLikesViewModel extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f51765i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f51766j = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f51767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f51768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kq.a f51769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f51770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f51771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f51772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f51773h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcLikesViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51767b = new b0();
        this.f51768c = new b0();
        this.f51769d = (kq.a) c.f79414e.a().h(kq.a.class);
    }

    public final b0 e() {
        return this.f51767b;
    }

    public final b0 f() {
        return this.f51768c;
    }

    public final void g(String page, String userId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(userId, "userId");
        this.f51771f = page;
        this.f51772g = userId;
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesViewModel", "Likes getUgcVideoLikesBean", false, 4, null);
        k.d(u0.a(this), y0.b(), null, new UgcLikesViewModel$getUgcVideoLikesBean$1(page, userId, this, null), 2, null);
    }

    public final boolean h() {
        return this.f51773h;
    }

    public final void i(String str) {
        this.f51773h = false;
        if (str == null || str.length() == 0) {
            lg.a.f68839a.x("UgcLikesViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f51768c.n(null);
            return;
        }
        lg.a.f68839a.c("UgcLikesViewModel", "loadMore: load nextPage=" + str, true);
        g(str.toString(), String.valueOf(this.f51772g));
    }

    public final void j(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        this.f51770e = ugcVideoId;
        k.d(u0.a(this), y0.b(), null, new UgcLikesViewModel$postLikeUgcVideo$1(ugcVideoId, z10, this, null), 2, null);
    }

    public final void k() {
        lg.a.f68839a.c("UgcLikesViewModel", "refresh: reset page to 1 and load first page", true);
        this.f51771f = "1";
        this.f51773h = true;
        g(String.valueOf("1"), String.valueOf(this.f51772g));
    }
}
