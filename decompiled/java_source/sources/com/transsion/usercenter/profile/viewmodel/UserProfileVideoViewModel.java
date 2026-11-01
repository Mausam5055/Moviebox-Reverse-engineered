package com.transsion.usercenter.profile.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class UserProfileVideoViewModel extends t0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f57295o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f57296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f57298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f57299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f57300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f57301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f57302g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f57303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LiveData f57304i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f57305j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f57306k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final LiveData f57307l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f57308m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final LiveData f57309n;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public UserProfileVideoViewModel() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f57296a = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: com.transsion.usercenter.profile.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UserProfileVideoViewModel.n();
            }
        });
        this.f57297b = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: com.transsion.usercenter.profile.viewmodel.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UserProfileVideoViewModel.v();
            }
        });
        this.f57299d = "";
        this.f57300e = 12;
        this.f57301f = true;
        this.f57302g = new ArrayList();
        b0 b0Var = new b0(Boolean.FALSE);
        this.f57303h = b0Var;
        this.f57304i = b0Var;
        b0 b0Var2 = new b0();
        this.f57306k = b0Var2;
        this.f57307l = b0Var2;
        b0 b0Var3 = new b0(null);
        this.f57308m = b0Var3;
        this.f57309n = b0Var3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tw.c n() {
        return (tw.c) zg.c.f79414e.a().h(tw.c.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final tw.c o() {
        return (tw.c) this.f57296a.getValue();
    }

    private final ILoginApi r() {
        return (ILoginApi) this.f57297b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi v() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void x(boolean z10) {
        String str;
        UserInfo userInfoI;
        String userId;
        UserInfo userInfoI2;
        String userId2;
        if (z10) {
            this.f57303h.q(Boolean.TRUE);
        } else {
            this.f57305j = true;
        }
        String string = this.f57298c;
        String string2 = null;
        if (string != null) {
            str = string;
        } else {
            ILoginApi iLoginApiR = r();
            if (iLoginApiR == null || (userInfoI2 = iLoginApiR.i()) == null || (userId2 = userInfoI2.getUserId()) == null) {
                str = null;
            } else {
                string = userId2.toString();
                str = string;
            }
        }
        String str2 = z10 ? "" : this.f57299d;
        ILoginApi iLoginApiR2 = r();
        if (iLoginApiR2 != null && (userInfoI = iLoginApiR2.i()) != null && (userId = userInfoI.getUserId()) != null) {
            string2 = userId.toString();
        }
        String str3 = this.f57298c;
        boolean z11 = (str3 == null || StringsKt.q0(str3) || !Intrinsics.c(this.f57298c, string2)) ? false : true;
        lg.a.f68839a.c("UserProfileVideoVM", "requestPage isRefresh=" + z10 + ", isSelf=" + z11 + ", target=" + this.f57298c + ", current=" + string2, false);
        k.d(u0.a(this), null, null, new UserProfileVideoViewModel$requestPage$1(this, z10, z11, str2, str, null), 3, null);
    }

    public final LiveData p() {
        return this.f57309n;
    }

    public final LiveData q() {
        return this.f57307l;
    }

    public final LiveData s() {
        return this.f57304i;
    }

    public final void t(String str) {
        this.f57298c = str;
    }

    public final void u() {
        if (!this.f57301f || Intrinsics.c(this.f57303h.f(), Boolean.TRUE) || this.f57305j) {
            return;
        }
        lg.a.f68839a.c("UserProfileVideoVM", "loadMore start nextPage=" + this.f57299d, false);
        x(false);
    }

    public final void w() {
        if (Intrinsics.c(this.f57303h.f(), Boolean.TRUE) || this.f57305j) {
            return;
        }
        lg.a.f68839a.c("UserProfileVideoVM", "refresh start userId=" + this.f57298c, false);
        this.f57299d = "";
        this.f57301f = true;
        this.f57302g.clear();
        x(true);
    }
}
