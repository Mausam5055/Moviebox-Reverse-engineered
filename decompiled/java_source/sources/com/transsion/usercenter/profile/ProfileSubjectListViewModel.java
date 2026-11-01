package com.transsion.usercenter.profile;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsnet.flow.event.sync.event.PublishEvent;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ProfileSubjectListViewModel extends AbsSubjectListViewModel {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f57086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f57087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f57088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Lazy f57089n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f57090o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f57091p;

    static final class a implements lz.h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57093b;

        a(String str) {
            this.f57093b = str;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(Integer it) {
            Intrinsics.h(it, "it");
            if (ProfileSubjectListViewModel.this.f57086k == 0) {
                return ProfileSubjectListViewModel.this.b0() ? com.transsion.usercenter.profile.b.a.d(ProfileSubjectListViewModel.this.a0(), this.f57093b, ProfileSubjectListViewModel.this.f57091p, ProfileSubjectListViewModel.this.Z(), null, null, 24, null) : com.transsion.usercenter.profile.b.a.f(ProfileSubjectListViewModel.this.a0(), this.f57093b, ProfileSubjectListViewModel.this.f57091p, ProfileSubjectListViewModel.this.Z(), null, null, 24, null);
            }
            return com.transsion.usercenter.profile.b.a.b(ProfileSubjectListViewModel.this.a0(), this.f57093b, ProfileSubjectListViewModel.this.f57091p, ProfileSubjectListViewModel.this.Z(), null, 8, null);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            ProfileSubjectListViewModel.this.y().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PostSubjectBean postSubjectBean) {
            String nextPage;
            Integer perPage;
            super.c(postSubjectBean);
            if (postSubjectBean != null) {
                ProfileSubjectListViewModel profileSubjectListViewModel = ProfileSubjectListViewModel.this;
                try {
                    Pager pager = postSubjectBean.getPager();
                    profileSubjectListViewModel.h0((pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue());
                    Pager pager2 = postSubjectBean.getPager();
                    if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
                        nextPage = "";
                    }
                    profileSubjectListViewModel.f57091p = nextPage;
                } catch (Exception unused) {
                }
            }
            ProfileSubjectListViewModel.this.y().q(postSubjectBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileSubjectListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57088m = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileSubjectListViewModel.e0();
            }
        });
        this.f57089n = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileSubjectListViewModel.f0();
            }
        });
        this.f57090o = 10;
        this.f57091p = "";
    }

    private final ILoginApi Y() {
        return (ILoginApi) this.f57088m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.usercenter.profile.b a0() {
        return (com.transsion.usercenter.profile.b) this.f57089n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b0() {
        UserInfo userInfoI;
        String str = this.f57087l;
        if (str != null && str.length() != 0) {
            String str2 = this.f57087l;
            ILoginApi iLoginApiY = Y();
            if (!Intrinsics.c(str2, (iLoginApiY == null || (userInfoI = iLoginApiY.i()) == null) ? null : userInfoI.getUserId())) {
                return false;
            }
        }
        return true;
    }

    private final boolean c0() {
        ILoginApi iLoginApiY;
        UserInfo userInfoI;
        UserInfo userInfoI2;
        String userId = this.f57087l;
        String userId2 = null;
        if (userId == null) {
            ILoginApi iLoginApiY2 = Y();
            userId = (iLoginApiY2 == null || (userInfoI2 = iLoginApiY2.i()) == null) ? null : userInfoI2.getUserId();
            if (userId == null) {
                userId = "";
            }
        }
        if (userId.length() == 0) {
            return true;
        }
        ILoginApi iLoginApiY3 = Y();
        if (iLoginApiY3 != null && (userInfoI = iLoginApiY3.i()) != null) {
            userId2 = userInfoI.getUserId();
        }
        return Intrinsics.c(userId, userId2) && ((iLoginApiY = Y()) == null || !iLoginApiY.a());
    }

    private final void d0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileSubjectListViewModel$loadNewSubject$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi e0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b f0() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(ProfileSubjectListViewModel profileSubjectListViewModel, PublishEvent it) {
        Intrinsics.h(it, "it");
        profileSubjectListViewModel.d0(it.getPostId());
        return Unit.f67061a;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public PostListSource A() {
        return PostListSource.PROFILE;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public ProfileSubSource B() {
        return this.f57086k == 0 ? ProfileSubSource.POSTS : ProfileSubSource.LIKES;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void E(boolean z10) {
        UserInfo userInfoI;
        String userId = this.f57087l;
        if (userId == null) {
            ILoginApi iLoginApiY = Y();
            userId = (iLoginApiY == null || (userInfoI = iLoginApiY.i()) == null) ? null : userInfoI.getUserId();
            if (userId == null) {
                userId = "";
            }
        }
        if (c0() && this.f57086k == 0) {
            y().q(null);
        } else {
            io.reactivex.rxjava3.core.j.t(Integer.valueOf(this.f57086k)).n(new a(userId)).f(sg.d.f75349a.c()).subscribe(new b());
        }
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public void F(Bundle bundle) {
        this.f57086k = bundle != null ? bundle.getInt(EventConstants.KEY_SOURCE) : 0;
        this.f57087l = bundle != null ? bundle.getString("userId") : null;
        if (this.f57086k == 0 && b0() && !c0()) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1(false, new Function1() { // from class: com.transsion.usercenter.profile.l0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ProfileSubjectListViewModel.g0(this.f57230a, (PublishEvent) obj);
                }
            }, null), 3, null);
        }
        this.f57091p = "0";
    }

    public int Z() {
        return this.f57090o;
    }

    public void h0(int i11) {
        this.f57090o = i11;
    }

    @Override // com.transsion.moviedetailapi.AbsSubjectListViewModel
    public String w(int i11) {
        return this.f57086k == 0 ? "profiledetail_posts" : "profiledetail_likes";
    }
}
