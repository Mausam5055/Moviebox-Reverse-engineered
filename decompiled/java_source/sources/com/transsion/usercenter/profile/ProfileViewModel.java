package com.transsion.usercenter.profile;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.ProfileEntranceInfo;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProfileViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f57100g;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("fetchEntrance: error:");
            sb2.append(str2);
            ProfileViewModel.this.l().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ProfileEntranceInfo profileEntranceInfo) {
            super.c(profileEntranceInfo);
            ProfileViewModel.this.l().q(profileEntranceInfo);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class b implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f57102a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ProfileViewModel f57103b;

        b(String str, ProfileViewModel profileViewModel) {
            this.f57102a = str;
            this.f57103b = profileViewModel;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x002d  */
        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(Throwable it) {
            String string;
            UserInfo userInfoI;
            Intrinsics.h(it, "it");
            String str = this.f57102a;
            if (str == null || str.length() == 0) {
                string = e0.f57130a.b().getString("PROFILE_JSON", null);
                if (string != null && string.length() != 0) {
                    try {
                        ProfileInfo profileInfo = (ProfileInfo) com.blankj.utilcode.util.o.d(string, ProfileInfo.class);
                        BaseDto baseDto = new BaseDto();
                        baseDto.setCode("0");
                        baseDto.setData(profileInfo);
                        return io.reactivex.rxjava3.core.j.t(baseDto);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            } else {
                String str2 = this.f57102a;
                ILoginApi iLoginApiN = this.f57103b.n();
                if (Intrinsics.c(str2, (iLoginApiN == null || (userInfoI = iLoginApiN.i()) == null) ? null : userInfoI.getUserId())) {
                    string = e0.f57130a.b().getString("PROFILE_JSON", null);
                    if (string != null) {
                        ProfileInfo profileInfo2 = (ProfileInfo) com.blankj.utilcode.util.o.d(string, ProfileInfo.class);
                        BaseDto baseDto2 = new BaseDto();
                        baseDto2.setCode("0");
                        baseDto2.setData(profileInfo2);
                        return io.reactivex.rxjava3.core.j.t(baseDto2);
                    }
                }
            }
            return io.reactivex.rxjava3.core.j.l(it);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class c implements lz.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f57104a = new c();

        c() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            ProfileInfo profileInfo = (ProfileInfo) it.getData();
            if (profileInfo != null) {
                e0.f57130a.b().putString("PROFILE_JSON", com.blankj.utilcode.util.o.j(profileInfo));
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class d extends sg.a {
        d() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            ProfileViewModel.this.f57097d.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ProfileInfo profileInfo) {
            super.c(profileInfo);
            ProfileViewModel.this.f57097d.q(profileInfo);
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            ProfileViewModel.this.f57100g = d11;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57095b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileViewModel.q();
            }
        });
        this.f57096c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileViewModel.r();
            }
        });
        this.f57097d = new androidx.p009lifecycle.b0();
        this.f57098e = new androidx.p009lifecycle.b0();
        this.f57099f = new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ILoginApi n() {
        return (ILoginApi) this.f57095b.getValue();
    }

    private final com.transsion.usercenter.profile.b o() {
        return (com.transsion.usercenter.profile.b) this.f57096c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi q() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b r() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final void i() {
        com.transsion.usercenter.profile.b.a.g(o(), null, 1, null).v(qz.a.c()).f(sg.d.f75349a.c()).subscribe(new a());
    }

    public final void j() {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileViewModel$fetchLatestDownloadList$1(this, null), 3, null);
    }

    public final void k(String str) {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f57100g;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f57100g) != null) {
            cVar.dispose();
        }
        com.transsion.usercenter.profile.b.a.h(o(), str == null ? "" : str, null, 2, null).v(qz.a.c()).x(new b(str, this)).h(c.f57104a).f(sg.d.f75349a.c()).subscribe(new d());
    }

    public final androidx.p009lifecycle.b0 l() {
        return this.f57099f;
    }

    public final LiveData m() {
        return this.f57098e;
    }

    public final LiveData p() {
        return this.f57097d;
    }
}
