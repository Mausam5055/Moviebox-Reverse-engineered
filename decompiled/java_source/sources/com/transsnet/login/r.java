package com.transsnet.login;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.JsonObject;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public final class r implements ILoginApi {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f60553g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f60554h = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.login.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return r.H();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f60555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f60556b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile UserInfo f60557c = I("create");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f60558d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f60559e = LazyKt.b(new Function0() { // from class: com.transsnet.login.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return r.F();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f60560f;

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ILoginApi a() {
            return (ILoginApi) r.f60554h.getValue();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class b implements lz.h {
        b() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseDto apply(BaseDto response) {
            String userId;
            Intrinsics.h(response, "response");
            UserInfo userInfoD = r.this.D("fetchUserInfo");
            UserInfo userInfo = (UserInfo) response.getData();
            if (userInfo != null) {
                userInfo.setToken(userInfoD != null ? userInfoD.getToken() : null);
                if (userInfoD != null && ((userId = userInfo.getUserId()) == null || userId.length() == 0 || Intrinsics.c(userInfo.getUserId(), userInfoD.getUserId()))) {
                    String userId2 = userInfo.getUserId();
                    if (userId2 == null) {
                        userId2 = userInfoD.getUserId();
                    }
                    userInfo.setUserId(userId2);
                    userInfo.setUserType(userInfoD.getUserType());
                }
            }
            return response;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class c extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f60562d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ r f60563e;

        c(String str, r rVar) {
            this.f60562d = str;
            this.f60563e = rVar;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.f68839a.i("LoginProvider", "fetchUserInfo failed code=" + str + ", message=" + str2 + ", requestUserId=" + this.f60562d + ", instance=" + this.f60563e.G(), true);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            if (userInfo != null) {
                this.f60563e.T(userInfo);
                return;
            }
            lg.a.f68839a.x("LoginProvider", "fetchUserInfo returned null, keep current user, requestUserId=" + this.f60562d + ", instance=" + this.f60563e.G(), true);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class d implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f60564a = new d();

        d() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(String it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class e implements lz.h {
        e() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return r.this.E().h(vg.a.f77324a.a(), it);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class f extends sg.a {
        f() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            r.this.M("logout_request_failed code=" + str);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UserInfo userInfo) {
            r.this.M("logout_request_success");
            if (userInfo != null) {
                r.this.O(userInfo);
            }
        }
    }

    public r() {
        S(this.f60557c);
        K(this, "created", null, 2, null);
        this.f60560f = "X-User";
    }

    private final WeakReference C(dz.a aVar) {
        for (WeakReference weakReference : this.f60558d) {
            dz.a aVar2 = (dz.a) weakReference.get();
            if (aVar2 != null && aVar2 == aVar) {
                return weakReference;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UserInfo D(String str) {
        UserInfo userInfoI;
        UserInfo userInfo = this.f60557c;
        if (userInfo != null) {
            return userInfo;
        }
        synchronized (this.f60556b) {
            userInfoI = this.f60557c;
            if (userInfoI == null) {
                userInfoI = I(str);
                if (userInfoI != null) {
                    this.f60557c = userInfoI;
                    S(userInfoI);
                    lg.a.f68839a.x("LoginProvider", "restore memory from MMKV source=" + str + ", instance=" + G() + ", user=" + V(userInfoI) + ", thread=" + Thread.currentThread().getName(), true);
                } else {
                    userInfoI = null;
                }
            }
        }
        return userInfoI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final az.a E() {
        return (az.a) this.f60559e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final az.a F() {
        return (az.a) zg.c.f79414e.a().h(az.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int G() {
        return System.identityHashCode(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi H() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final UserInfo I(String str) {
        Object objM454constructorimpl;
        String str2 = "";
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = vy.d.f77480a.b().getString("login_user", "");
            if (string != null) {
                str2 = string;
            }
            objM454constructorimpl = Result.m454constructorimpl((StringsKt.q0(str2) || Intrinsics.c(str2, "null")) ? null : (UserInfo) com.blankj.utilcode.util.o.d(str2, UserInfo.class));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.h("LoginProvider", "loadUserInfo failed source=" + str + ", instance=" + G() + ", thread=" + Thread.currentThread().getName(), thM457exceptionOrNullimpl, true);
        }
        return (UserInfo) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    private final void J(String str, UserInfo userInfo) {
        lg.a.f68839a.c("LoginProvider", str + " instance=" + G() + ", user=" + V(userInfo) + ", thread=" + Thread.currentThread().getName(), true);
    }

    static /* synthetic */ void K(r rVar, String str, UserInfo userInfo, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            userInfo = rVar.f60557c;
        }
        rVar.J(str, userInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(String str) {
        UserInfo userInfo = this.f60557c;
        synchronized (this.f60556b) {
            vy.d.f77480a.b().putString("login_user", "");
            this.f60557c = null;
            S(null);
            Unit unit = Unit.f67061a;
        }
        lg.a.f68839a.x("LoginProvider", "resetData reason=" + str + ", instance=" + G() + ", previous=" + V(userInfo) + ", thread=" + Thread.currentThread().getName(), true);
        ThreadUtils.k(new Runnable() { // from class: com.transsnet.login.p
            @Override // java.lang.Runnable
            public final void run() {
                r.N(this.f60391a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(r rVar) {
        Iterator it = rVar.f60558d.iterator();
        while (it.hasNext()) {
            dz.a aVar = (dz.a) ((WeakReference) it.next()).get();
            if (aVar != null) {
                aVar.onLogout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(final UserInfo userInfo) {
        c(userInfo);
        ThreadUtils.k(new Runnable() { // from class: com.transsnet.login.n
            @Override // java.lang.Runnable
            public final void run() {
                r.P(this.f60389a, userInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(r rVar, UserInfo userInfo) {
        Iterator it = rVar.f60558d.iterator();
        while (it.hasNext()) {
            dz.a aVar = (dz.a) ((WeakReference) it.next()).get();
            if (aVar != null) {
                aVar.onLogin(userInfo);
            }
        }
    }

    private final void Q() {
        uh.b.a aVar = uh.b.f76753a;
        int i11 = com.transsion.baseui.R$layout.base_layout_new_warn_toast;
        String string = Utils.a().getString(R$string.login_signed_out_toast);
        Intrinsics.g(string, "getString(...)");
        aVar.g(i11, string, (24 & 4) != 0 ? 0 : 17, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
        com.transsion.baselib.helper.a.f43262a.c("toast", "signed_out");
    }

    private final void S(UserInfo userInfo) {
        bh.a.C0148a c0148a = bh.a.f16469a;
        String userId = userInfo != null ? userInfo.getUserId() : null;
        if (userId == null) {
            userId = "";
        }
        c0148a.h(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(final UserInfo userInfo) {
        c(userInfo);
        ThreadUtils.k(new Runnable() { // from class: com.transsnet.login.q
            @Override // java.lang.Runnable
            public final void run() {
                r.U(this.f60551a, userInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(r rVar, UserInfo userInfo) {
        Iterator it = rVar.f60558d.iterator();
        while (it.hasNext()) {
            dz.a aVar = (dz.a) ((WeakReference) it.next()).get();
            if (aVar != null) {
                aVar.onUpdateUserInfo(userInfo);
            }
        }
    }

    private final String V(UserInfo userInfo) {
        if (userInfo == null) {
            return "null";
        }
        String userId = userInfo.getUserId();
        int userType = userInfo.getUserType();
        String token = userInfo.getToken();
        boolean z10 = token == null || token.length() == 0;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("id=");
        sb2.append(userId);
        sb2.append(", type=");
        sb2.append(userType);
        sb2.append(", hasToken=");
        sb2.append(!z10);
        return sb2.toString();
    }

    public final void L() {
        io.reactivex.rxjava3.core.j.t("").u(d.f60564a).n(new e()).f(sg.d.f75349a.c()).subscribe(new f());
    }

    public void R() {
        M("token_expired");
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public boolean a() {
        UserInfo userInfoD = D("isLogin");
        return userInfoD != null && userInfoD.getUserType() == 1;
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public String b() {
        String string = Utils.a().getString(R$string.login_success);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void c(UserInfo userInfo) {
        synchronized (this.f60556b) {
            try {
                this.f60557c = userInfo;
                S(userInfo);
                MMKV mmkvB = vy.d.f77480a.b();
                String strJ = userInfo != null ? com.blankj.utilcode.util.o.j(userInfo) : null;
                if (strJ == null) {
                    strJ = "";
                }
                mmkvB.putString("login_user", strJ);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        J("saveUserInfo", userInfo);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void d() {
        if (nh.m.f70474a.e()) {
            L();
        } else {
            M("logout_without_network");
        }
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public Country e() {
        return yy.a.f79094a.b();
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void f(String str) {
        if (str == null) {
            str = "";
        }
        K(this, "fetchUserInfo start requestUserId=" + str, null, 2, null);
        az.a.C0140a.c(E(), str, null, 2, null).v(qz.a.c()).u(new b()).f(sg.d.f75349a.c()).subscribe(new c(str, this));
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void g(dz.a listener) {
        Intrinsics.h(listener, "listener");
        if (C(listener) == null) {
            this.f60558d.add(new WeakReference(listener));
        }
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void h(Response response) {
        Intrinsics.h(response, "response");
        try {
            if (response.code() == 200) {
                String str = response.headers().get(this.f60560f);
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                UserInfo userInfo = (UserInfo) com.blankj.utilcode.util.o.d(str, UserInfo.class);
                if (this.f60557c == null) {
                    Intrinsics.e(userInfo);
                    O(userInfo);
                    return;
                }
                UserInfo userInfo2 = this.f60557c;
                if (TextUtils.equals(userInfo2 != null ? userInfo2.getToken() : null, userInfo.getToken())) {
                    return;
                }
                UserInfo userInfo3 = this.f60557c;
                if (userInfo3 != null) {
                    userInfo3.setToken(userInfo.getToken());
                }
                c(this.f60557c);
                return;
            }
            if (response.code() == 401) {
                lg.a.f68839a.x("LoginProvider", "HTTP 401 force logout, instance=" + G() + ", request=" + response.request().method() + " " + response.request().url().host() + response.request().url().encodedPath() + ", user=" + V(this.f60557c) + ", thread=" + Thread.currentThread().getName(), true);
                R();
                Q();
            }
        } catch (Exception e11) {
            lg.a.f68839a.h("LoginProvider", "checkTokenExpired failed code=" + response.code() + ", instance=" + G(), e11, true);
        }
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public UserInfo i() {
        return D("getUserInfo");
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void j(Context context) {
        Intrinsics.h(context, "context");
        Intent intent = new Intent(context, (Class<?>) LoginLikeActivity.class);
        intent.setFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void k(Context context) {
        Intrinsics.h(context, "context");
        this.f60555a = context.getApplicationContext();
        UserInfo userInfoD = D("initialize");
        S(userInfoD);
        J("initialized", userInfoD);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public Object l(UserInfo userInfo, Continuation continuation) {
        O(userInfo);
        f(userInfo.getUserId());
        return Unit.f67061a;
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void m(long j11) {
        vy.d.f77480a.b().putLong("login_launch_first_state", j11);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public long n() {
        return vy.d.f77480a.b().getLong("login_launch_first_state", 0L);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public Intent o(Context context) {
        Intrinsics.h(context, "context");
        return new Intent(context, (Class<?>) LoginLikeActivity.class);
    }

    @Override // com.transsnet.loginapi.ILoginApi
    public void p(dz.a listener) {
        Intrinsics.h(listener, "listener");
        List list = this.f60558d;
        TypeIntrinsics.a(list).remove(C(listener));
    }
}
