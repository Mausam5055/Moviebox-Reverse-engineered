package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class k {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static volatile String f38529o = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f38531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f38532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private x f38533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f38534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f38535f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<String> f38536g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile c f38537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile l f38538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile d f38539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile j f38540k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile s f38541l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile boolean f38542m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile o f38543n;

    k(String str, m mVar) {
        this.f38530a = str;
        this.f38531b = mVar;
    }

    void a(Context context) {
        this.f38532c = context;
    }

    void a(x xVar) {
        this.f38533d = xVar;
    }

    void a(JSONObject jSONObject) {
        this.f38534e = jSONObject;
    }

    boolean a() throws IllegalStateException {
        if (y.b(b())) {
            throw new IllegalStateException("config can not be null");
        }
        if (y.b(f())) {
            throw new IllegalStateException("decorate can not be null");
        }
        if (y.b(r())) {
            throw new IllegalStateException("responseHandler can not be null");
        }
        if (y.b(n()) || y.b(n().b())) {
            throw new IllegalStateException("networkStackConfig or stack can not be null");
        }
        if (TextUtils.isEmpty(n().c())) {
            throw new IllegalStateException("report url is null");
        }
        return true;
    }

    boolean a(e eVar) {
        if (y.b(eVar)) {
            return false;
        }
        f fVar = b().f38749j;
        if (y.a(fVar)) {
            try {
                return fVar.a(eVar);
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "event filter apply exception", e11);
                }
            }
        }
        String strB = eVar.b();
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        List<String> list = this.f38536g;
        if (list != null) {
            try {
                return !list.contains(strB);
            } catch (Exception e12) {
                if (a.f38496a) {
                    Log.e("TrackManager", "disallowTrackEventNames contains exception", e12);
                }
            }
        }
        List<String> list2 = this.f38535f;
        if (list2 != null) {
            try {
                return list2.contains(strB);
            } catch (Exception e13) {
                if (a.f38496a) {
                    Log.e("TrackManager", "allowTrackEventNames contains exception", e13);
                }
            }
        }
        return true;
    }

    x b() {
        x xVar = this.f38533d;
        if (xVar != null) {
            return xVar;
        }
        x xVarA = new x.b().a();
        this.f38533d = xVarA;
        return xVarA;
    }

    Context c() {
        return this.f38532c;
    }

    c d() {
        if (y.b(this.f38537h)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f38537h)) {
                        String strT = t();
                        this.f38537h = new c(new b(c(), e(), strT), strT);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f38537h;
    }

    String e() {
        return TextUtils.isEmpty(v()) ? String.format("track_manager_%s.db", "default") : String.format("track_manager_%s.db", v());
    }

    d f() {
        if (y.b(this.f38539j)) {
            this.f38539j = b().f38747h;
        }
        return this.f38539j;
    }

    l g() {
        if (y.b(this.f38538i)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f38538i)) {
                        this.f38538i = new q(new g(d(), p()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f38538i;
    }

    j h() {
        if (y.b(this.f38540k)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f38540k)) {
                        this.f38540k = new j();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f38540k;
    }

    int i() {
        if (b().f38740a < 0) {
            return 50;
        }
        return b().f38740a;
    }

    int j() {
        return Math.max(b().f38744e, 0);
    }

    int k() {
        if (b().f38743d <= 0) {
            return 2;
        }
        return b().f38743d;
    }

    int l() {
        return Math.max(b().f38741b, 0);
    }

    o m() {
        if (y.b(this.f38543n)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f38543n)) {
                        this.f38543n = new o(k(), n(), r(), q());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f38543n;
    }

    p n() {
        return b().f38746g;
    }

    JSONObject o() {
        JSONObject jSONObject = this.f38534e;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        this.f38534e = jSONObject2;
        return jSONObject2;
    }

    s p() {
        if (y.b(this.f38541l)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f38541l)) {
                        this.f38541l = new s(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f38541l;
    }

    int q() {
        return b().f38742c;
    }

    w r() {
        return b().f38748i;
    }

    String s() {
        if (!TextUtils.isEmpty(f38529o)) {
            return f38529o;
        }
        String string = UUID.randomUUID().toString();
        f38529o = string;
        return string;
    }

    String t() {
        return "event_table";
    }

    m u() {
        return this.f38531b;
    }

    String v() {
        return this.f38530a;
    }

    boolean w() {
        return this.f38542m;
    }

    String x() {
        if (!y.b(this.f38532c) && !y.b(this.f38533d)) {
            try {
                p().j();
                this.f38542m = false;
                if (TextUtils.isEmpty(f38529o)) {
                    f38529o = UUID.randomUUID().toString();
                }
                return f38529o;
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "start error", e11);
                }
                this.f38542m = true;
            }
        }
        return "";
    }
}
