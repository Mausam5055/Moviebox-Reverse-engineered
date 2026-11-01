package com.transsion.usercenter.profile.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class UserProfileViewModel extends t0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f57310l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f57311a = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserProfileViewModel.r();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57312b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserProfileViewModel.t();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57313c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserProfileViewModel.s();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f57314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LiveData f57315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f57316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LiveData f57317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f57318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LiveData f57319i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f57320j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LiveData f57321k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public UserProfileViewModel() {
        b0 b0Var = new b0();
        this.f57314d = b0Var;
        this.f57315e = b0Var;
        b0 b0Var2 = new b0(Boolean.FALSE);
        this.f57316f = b0Var2;
        this.f57317g = b0Var2;
        b0 b0Var3 = new b0();
        this.f57318h = b0Var3;
        this.f57319i = b0Var3;
        b0 b0Var4 = new b0();
        this.f57320j = b0Var4;
        this.f57321k = b0Var4;
    }

    private final ILoginApi k() {
        return (ILoginApi) this.f57311a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.usercenter.profile.b l() {
        return (com.transsion.usercenter.profile.b) this.f57313c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.usercenter.profile.c m() {
        return (com.transsion.usercenter.profile.c) this.f57312b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi r() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b s() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.c t() {
        return (com.transsion.usercenter.profile.c) zg.c.f79414e.a().h(com.transsion.usercenter.profile.c.class);
    }

    public final void i(String targetUID) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UserProfileViewModel$fetchSubscriptionStatus$1(this, targetUID, null), 3, null);
    }

    public final void j(String str) {
        k.d(u0.a(this), null, null, new UserProfileViewModel$fetchUserProfileV3$1(this, str, null), 3, null);
    }

    public final LiveData n() {
        return this.f57319i;
    }

    public final LiveData o() {
        return this.f57321k;
    }

    public final void p(String str) {
        UserInfo userInfoI;
        String userId;
        this.f57314d.q(str);
        ILoginApi iLoginApiK = k();
        String string = (iLoginApiK == null || (userInfoI = iLoginApiK.i()) == null || (userId = userInfoI.getUserId()) == null) ? null : userId.toString();
        boolean z10 = str == null || StringsKt.q0(str) || Intrinsics.c(str, string);
        lg.a.f68839a.c("UserProfileVM", "initProfile target=" + str + ", current=" + string + ", isSelf=" + z10, false);
        this.f57316f.q(Boolean.valueOf(z10));
        j(str);
        if (z10 || str == null || StringsKt.q0(str)) {
            this.f57318h.q(null);
        } else {
            i(str);
        }
    }

    public final LiveData q() {
        return this.f57317g;
    }

    public final void u(String targetUID, boolean z10) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UserProfileViewModel$toggleSubscription$1(targetUID, z10, this, null), 3, null);
    }
}
