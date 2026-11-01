package com.transsnet.login;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.google.gson.JsonObject;
import com.meituan.android.walle.ChannelReader;
import com.therouter.TheRouter;
import com.transsion.memberapi.IPremiumApi;
import com.transsnet.login.bean.LoginThirdUserInfo;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
public final class LoginViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f60272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f60273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LiveData f60274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f60275d;

    static final class a implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f60276a = new a();

        a() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(JsonObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = it.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class b implements lz.h {
        b() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return az.a.C0140a.d(LoginViewModel.this.h(), it, null, 2, null);
        }
    }

    public static final class c extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60279e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f60280f;

        c(String str, String str2) {
            this.f60279e = str;
            this.f60280f = str2;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginViewModel.this.f60272a.q(null);
            if (str2 != null) {
                uh.b.f76753a.e(str2);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(LoginThirdUserInfo loginThirdUserInfo) {
            IPremiumApi iPremiumApiI;
            super.c(loginThirdUserInfo);
            String str = this.f60279e;
            if (str != null && str.length() != 0 && (iPremiumApiI = LoginViewModel.this.i()) != null) {
                iPremiumApiI.p(this.f60279e);
            }
            LoginViewModel loginViewModel = LoginViewModel.this;
            loginViewModel.l(loginThirdUserInfo, loginViewModel.f60272a);
            if (loginThirdUserInfo == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("module_name", this.f60280f);
            map.put("sign_up", loginThirdUserInfo.getReg() ? "1" : "0");
            hj.i.f64505a.s("sign_up_dialog", "login", map);
            if (loginThirdUserInfo.getReg()) {
                com.transsnet.login.b.f60283a.b(R$string.login_sign_up_success);
            } else {
                com.transsnet.login.b.f60283a.b(R$string.login_success);
            }
        }
    }

    public LoginViewModel() {
        b0 b0Var = new b0();
        this.f60272a = b0Var;
        this.f60273b = LazyKt.b(new Function0() { // from class: com.transsnet.login.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoginViewModel.m();
            }
        });
        this.f60274c = b0Var;
        this.f60275d = LazyKt.b(new Function0() { // from class: com.transsnet.login.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoginViewModel.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final az.a h() {
        return (az.a) this.f60273b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IPremiumApi i() {
        return (IPremiumApi) this.f60275d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(UserInfo userInfo, b0 b0Var) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new LoginViewModel$handleLoginSuccess$1(userInfo, b0Var, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final az.a m() {
        return (az.a) zg.c.f79414e.a().h(az.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPremiumApi n() {
        return (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
    }

    private final void o(JsonObject jsonObject, String str, String str2) {
        io.reactivex.rxjava3.core.j.t(jsonObject).u(a.f60276a).n(new b()).f(sg.d.f75349a.c()).subscribe(new c(str2, str));
    }

    public final LiveData j() {
        return this.f60274c;
    }

    public final void k(String idToken, String str) {
        Intrinsics.h(idToken, "idToken");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(ChannelReader.CHANNEL_KEY, "GOOGLE");
        jsonObject.addProperty("idToken", idToken);
        o(jsonObject, "GOOGLE", str);
    }
}
