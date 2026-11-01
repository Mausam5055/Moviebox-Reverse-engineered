package com.transsnet.login.phone;

import android.app.Application;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import androidx.p009lifecycle.LiveData;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.google.gson.JsonObject;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ListIterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
public final class LoginPhoneViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f60426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final HashMap f60428l;

    static final class a implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60429a;

        a(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f60429a = loginSmsCodeRequest;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            if (this.f60429a.getAuthType() == 0) {
                jsonObject.addProperty("phone", it.getPhone());
                jsonObject.addProperty("cc", it.getCc());
            } else {
                jsonObject.addProperty("mail", it.getMail());
            }
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class b implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LoginPhoneViewModel f60431b;

        b(LoginSmsCodeRequest loginSmsCodeRequest, LoginPhoneViewModel loginPhoneViewModel) {
            this.f60430a = loginSmsCodeRequest;
            this.f60431b = loginPhoneViewModel;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return this.f60430a.getAuthType() == 0 ? this.f60431b.z().k(vg.a.f77324a.a(), it) : az.a.C0140a.a(this.f60431b.z(), it, null, 2, null);
        }
    }

    public static final class c extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60433e;

        c(String str) {
            this.f60433e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null && str != null && Integer.parseInt(str) >= 200000) {
                LoginPhoneViewModel.this.f60428l.put(this.f60433e, str2);
            }
            if (str2 != null) {
                LoginPhoneViewModel.this.f60427k.q(str2);
            }
            LoginPhoneViewModel.this.f60421e.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
            LoginPhoneViewModel.this.f60421e.q(loginCheckPhoneExistResult);
        }
    }

    static final class d implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f60434a = new d();

        d() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("mail", it.getMail());
            jsonObject.addProperty("verificationCode", it.getVerificationCode());
            jsonObject.addProperty("password", it.getPassword());
            jsonObject.addProperty("inviteCode", it.getInviteCode());
            jsonObject.addProperty("authType", (Number) 1);
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class e implements lz.h {
        e() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().b(vg.a.f77324a.a(), it);
        }
    }

    public static final class f extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60437e;

        f(String str) {
            this.f60437e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f60423g.q(str2);
            LoginPhoneViewModel.this.f60422f.q(null);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f60428l.put(this.f60437e, str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            vy.d.f77480a.b().putString("login_last_login_type", "EMAIL");
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f60422f);
        }
    }

    public static final class g extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60439e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60440f;

        g(String str, LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f60439e = str;
            this.f60440f = loginSmsCodeRequest;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null) {
                uh.b.f76753a.e(str2);
            }
            LoginPhoneViewModel.this.f60420d.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(String str) {
            vy.f.f77482a.b().putLong(this.f60439e, SystemClock.elapsedRealtime());
            LoginPhoneViewModel.this.f60420d.q(this.f60440f);
        }
    }

    public static final class h extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60442e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60443f;

        h(String str, LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f60442e = str;
            this.f60443f = loginSmsCodeRequest;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f60423g.q(str2);
            LoginPhoneViewModel.this.f60422f.q(null);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f60428l.put(this.f60442e, str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            vy.d.f77480a.b().putString("login_last_login_type", this.f60443f.getAuthType() == 1 ? "EMAIL" : PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f60422f);
        }
    }

    static final class i implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final i f60444a = new i();

        i() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("phone", it.getPhone());
            jsonObject.addProperty("cc", it.getCc());
            jsonObject.addProperty("verificationCode", it.getVerificationCode());
            jsonObject.addProperty("password", it.getPassword());
            jsonObject.addProperty("inviteCode", it.getInviteCode());
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class j implements lz.h {
        j() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().b(vg.a.f77324a.a(), it);
        }
    }

    public static final class k extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60447e;

        k(String str) {
            this.f60447e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f60423g.q(str2);
            LoginPhoneViewModel.this.f60422f.q(null);
            if (str2 == null || str == null || str.length() == 0) {
                return;
            }
            Integer numV = StringsKt.v(str);
            if ((numV != null ? numV.intValue() : 0) >= 200000) {
                LoginPhoneViewModel.this.f60428l.put(this.f60447e, str2);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            vy.d.f77480a.b().putString("login_last_login_type", PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f60422f);
        }
    }

    static final class l implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60448a;

        l(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f60448a = loginSmsCodeRequest;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(LoginSmsCodeRequest it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            if (this.f60448a.getAuthType() == 1) {
                jsonObject.addProperty("mail", it.getMail());
                jsonObject.addProperty("verificationCode", it.getVerificationCode());
                jsonObject.addProperty("inviteCode", it.getInviteCode());
                jsonObject.addProperty("authType", (Number) 1);
            } else {
                jsonObject.addProperty("phone", it.getPhone());
                jsonObject.addProperty("cc", it.getCc());
                jsonObject.addProperty("verification_code", it.getVerificationCode());
            }
            jsonObject.addProperty("password", it.getPassword());
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class m implements lz.h {
        m() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return LoginPhoneViewModel.this.z().j(vg.a.f77324a.a(), it);
        }
    }

    public static final class n extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ LoginSmsCodeRequest f60451e;

        n(LoginSmsCodeRequest loginSmsCodeRequest) {
            this.f60451e = loginSmsCodeRequest;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f60423g.q(str2);
            LoginPhoneViewModel.this.f60425i.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            vy.d.f77480a.b().putString("login_last_login_type", this.f60451e.getAuthType() == 1 ? "EMAIL" : PermissionConstants.PHONE);
            LoginPhoneViewModel loginPhoneViewModel = LoginPhoneViewModel.this;
            loginPhoneViewModel.H(userInfo, loginPhoneViewModel.f60425i);
        }
    }

    public static final class o extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60453e;

        o(String str) {
            this.f60453e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            LoginPhoneViewModel.this.f60423g.q(str2);
            LoginPhoneViewModel.this.f60424h.q(Boolean.FALSE);
            if (str2 == null || str == null || Integer.parseInt(str) < 200000) {
                return;
            }
            LoginPhoneViewModel.this.f60428l.put(this.f60453e, str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(String str) {
            LoginPhoneViewModel.this.f60424h.q(Boolean.TRUE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPhoneViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f60418b = new androidx.p009lifecycle.b0();
        this.f60419c = new androidx.p009lifecycle.b0();
        this.f60420d = new androidx.p009lifecycle.b0();
        this.f60421e = new androidx.p009lifecycle.b0();
        this.f60422f = new androidx.p009lifecycle.b0();
        this.f60423g = new androidx.p009lifecycle.b0();
        this.f60424h = new androidx.p009lifecycle.b0();
        this.f60425i = new androidx.p009lifecycle.b0();
        this.f60426j = LazyKt.b(new Function0() { // from class: com.transsnet.login.phone.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoginPhoneViewModel.I();
            }
        });
        this.f60427k = new androidx.p009lifecycle.b0();
        this.f60428l = new HashMap();
    }

    public static /* synthetic */ void F(LoginPhoneViewModel loginPhoneViewModel, LoginSmsCodeRequest loginSmsCodeRequest, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        loginPhoneViewModel.E(loginSmsCodeRequest, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(UserInfo userInfo, androidx.p009lifecycle.b0 b0Var) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new LoginPhoneViewModel$handleLoginSuccess$1(userInfo, b0Var, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final az.a I() {
        return (az.a) zg.c.f79414e.a().h(az.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Country x(String str) throws Throwable {
        Object obj = null;
        if (str == null || str.length() < 3) {
            return null;
        }
        String strSubstring = str.substring(0, 3);
        Intrinsics.g(strSubstring, "substring(...)");
        ArrayList arrayListA = yy.b.b().a(b());
        if (arrayListA == null || arrayListA.isEmpty()) {
            return null;
        }
        ListIterator listIterator = arrayListA.listIterator(arrayListA.size());
        while (listIterator.hasPrevious()) {
            Object objPrevious = listIterator.previous();
            if (Intrinsics.c(strSubstring, ((Country) objPrevious).getMcc())) {
                obj = objPrevious;
                break;
            }
        }
        return (Country) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final az.a z() {
        return (az.a) this.f60426j.getValue();
    }

    public final LiveData A() {
        return this.f60423g;
    }

    public final LiveData B() {
        return this.f60422f;
    }

    public final LiveData C() {
        return this.f60419c;
    }

    public final LiveData D() {
        return this.f60425i;
    }

    public final void E(LoginSmsCodeRequest loginSmsCodeRequest, int i11) {
        if (loginSmsCodeRequest == null) {
            this.f60420d.q(null);
            return;
        }
        loginSmsCodeRequest.setType(i11);
        loginSmsCodeRequest.setPackage_name(b().getPackageName());
        String strAccount = loginSmsCodeRequest.account();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - vy.f.f77482a.b().getLong(strAccount, 0L);
        if (0 > jElapsedRealtime || jElapsedRealtime >= 60000) {
            z().d(vg.a.f77324a.a(), loginSmsCodeRequest).f(sg.d.f75349a.c()).subscribe(new g(strAccount, loginSmsCodeRequest));
        } else {
            this.f60420d.q(loginSmsCodeRequest);
        }
    }

    public final LiveData G() {
        return this.f60420d;
    }

    public final void J(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f60422f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f60428l.get(strDataKey);
        if (str == null) {
            z().i(vg.a.f77324a.a(), loginSmsCodeRequest).f(sg.d.f75349a.c()).subscribe(new h(strDataKey, loginSmsCodeRequest));
        } else {
            this.f60423g.q(str);
            this.f60422f.q(null);
        }
    }

    public final void K(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f60422f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f60428l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(i.f60444a).n(new j()).f(sg.d.f75349a.c()).subscribe(new k(strDataKey));
        } else {
            this.f60423g.q(str);
            this.f60422f.q(null);
        }
    }

    public final void L(LoginSmsCodeRequest loginSmsCodeRequest, boolean z10) {
        if (loginSmsCodeRequest == null) {
            this.f60422f.q(null);
        } else {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(new l(loginSmsCodeRequest)).n(new m()).f(sg.d.f75349a.c()).subscribe(new n(loginSmsCodeRequest));
        }
    }

    public final void M(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f60422f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f60428l.get(strDataKey);
        if (str == null) {
            (loginSmsCodeRequest.getAuthType() == 0 ? z().g(vg.a.f77324a.a(), loginSmsCodeRequest) : az.a.C0140a.b(z(), loginSmsCodeRequest, null, 2, null)).f(sg.d.f75349a.c()).subscribe(new o(strDataKey));
        } else {
            this.f60423g.q(str);
            this.f60424h.q(Boolean.FALSE);
        }
    }

    public final void q(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f60420d.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f60428l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(new a(loginSmsCodeRequest)).n(new b(loginSmsCodeRequest, this)).f(sg.d.f75349a.c()).subscribe(new c(strDataKey));
        } else {
            this.f60427k.q(str);
            this.f60421e.q(null);
        }
    }

    public final void r(String phoneNum) {
        Intrinsics.h(phoneNum, "phoneNum");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), kotlinx.coroutines.y0.b(), null, new LoginPhoneViewModel$checkPhoneNum$1(this, phoneNum, null), 2, null);
    }

    public final void s(LoginSmsCodeRequest loginSmsCodeRequest) {
        if (loginSmsCodeRequest == null) {
            this.f60422f.q(null);
            return;
        }
        String strDataKey = loginSmsCodeRequest.dataKey();
        String str = (String) this.f60428l.get(strDataKey);
        if (str == null) {
            io.reactivex.rxjava3.core.j.t(loginSmsCodeRequest).u(d.f60434a).n(new e()).f(sg.d.f75349a.c()).subscribe(new f(strDataKey));
        } else {
            this.f60423g.q(str);
            this.f60422f.q(null);
        }
    }

    public final LiveData t() {
        return this.f60427k;
    }

    public final LiveData u() {
        return this.f60421e;
    }

    public final LiveData v() {
        return this.f60424h;
    }

    public final void w() {
        Object systemService = b().getSystemService("phone");
        if (!(systemService instanceof TelephonyManager)) {
            this.f60418b.q(null);
        } else {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), kotlinx.coroutines.y0.b(), null, new LoginPhoneViewModel$getCountry$1(this, ((TelephonyManager) systemService).getSimOperator(), null), 2, null);
        }
    }

    public final LiveData y() {
        return this.f60418b;
    }
}
