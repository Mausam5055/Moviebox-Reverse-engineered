package com.transsnet.login.email;

import android.os.SystemClock;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.t0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f60332a = LazyKt.b(new Function0() { // from class: com.transsnet.login.email.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c0.l();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60333b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60334c = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60335d = new androidx.p009lifecycle.b0();

    static final class a implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f60336a;

        a(String str) {
            this.f60336a = str;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(String it) throws JSONException {
            Intrinsics.h(it, "it");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("mail", this.f60336a);
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jSONObject.toString();
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
            return com.transsnet.login.email.a.C0698a.a(c0.this.k(), it, null, 2, null);
        }
    }

    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null) {
                uh.b.f76753a.e(str2);
            }
            c0.this.f60333b.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
            super.c(loginCheckPhoneExistResult);
            c0.this.f60333b.q(loginCheckPhoneExistResult);
        }
    }

    static final class d implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f60339a;

        d(JSONObject jSONObject) {
            this.f60339a = jSONObject;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(JSONObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = this.f60339a.toString();
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
            return com.transsnet.login.email.a.C0698a.b(c0.this.k(), it, null, 2, null);
        }
    }

    public static final class f extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60342e;

        f(String str) {
            this.f60342e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null) {
                uh.b.f76753a.e(str2);
            }
            c0.this.f60334c.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(String str) {
            super.c(str);
            vy.f.f77482a.b().putLong(this.f60342e, SystemClock.elapsedRealtime());
            c0.this.f60334c.q(this.f60342e);
        }
    }

    public static /* synthetic */ void i(c0 c0Var, String str, int i11, int i12, Object obj) throws JSONException {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        c0Var.h(str, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.login.email.a k() {
        return (com.transsnet.login.email.a) this.f60332a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.login.email.a l() {
        return (com.transsnet.login.email.a) zg.c.f79414e.a().h(com.transsnet.login.email.a.class);
    }

    public final void f(String email) {
        Intrinsics.h(email, "email");
        io.reactivex.rxjava3.core.j.t(email).u(new a(email)).n(new b()).f(sg.d.f75349a.c()).subscribe(new c());
    }

    public final LiveData g() {
        return this.f60333b;
    }

    public final void h(String email, int i11) throws JSONException {
        Intrinsics.h(email, "email");
        long jElapsedRealtime = SystemClock.elapsedRealtime() - vy.f.f77482a.b().getLong(email, 0L);
        if (0 <= jElapsedRealtime && jElapsedRealtime < 60000) {
            this.f60334c.q(email);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mail", email);
        jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
        jSONObject.put("authType", 1);
        io.reactivex.rxjava3.core.j.t(jSONObject).u(new d(jSONObject)).n(new e()).f(sg.d.f75349a.c()).subscribe(new f(email));
    }

    public final LiveData j() {
        return this.f60334c;
    }
}
