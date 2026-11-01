package z6;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.e4;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected G f79279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f79280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f79281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f79282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f79283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.cloud.hisavana.sdk.api.listener.d f79284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f79285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f79286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected b7.a f79287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected b7.b f79288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f79289k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected androidx.collection.b f79290l = new androidx.collection.b();

    /* JADX INFO: renamed from: z6.a$a, reason: collision with other inner class name */
    protected static class C0976a extends AdCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final a f79291a;

        C0976a(a aVar) {
            this.f79291a = aVar;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public com.cloud.hisavana.sdk.api.listener.d d() {
            a aVar = this.f79291a;
            if (aVar != null) {
                return aVar.f79284f;
            }
            return null;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String e() {
            a aVar = this.f79291a;
            return aVar != null ? SSPTrackingHelper.f21953a.o(aVar.f79279a) : "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String g() {
            a aVar = this.f79291a;
            return aVar != null ? SSPTrackingHelper.f21953a.q(aVar.f79279a) : "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void q(G g11, Bundle bundle) {
            a aVar = this.f79291a;
            if (aVar != null) {
                aVar.f79279a = g11;
            }
            super.q(g11, bundle);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void r(G g11, List list, Bundle bundle) {
            a aVar = this.f79291a;
            if (aVar != null) {
                aVar.f79279a = g11;
            }
            super.r(g11, list, bundle);
        }
    }

    public a(String str) {
        this.f79280b = str;
    }

    protected void a(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), sSPTrackingHelper.q(this.f79279a), this.f79280b, sSPTrackingHelper.m(this.f79279a), bundle);
        } catch (Throwable unused) {
        }
    }

    protected boolean b() {
        if (TextUtils.isEmpty(a7.c.f365b)) {
            e4.b().e("ssp", "AppId is empty, please check your config.");
            com.cloud.hisavana.sdk.api.listener.d dVar = this.f79284f;
            if (dVar != null) {
                dVar.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!com.cloud.sdk.commonutil.util.e.h()) {
            e4.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.f21953a.n();
        if (jCurrentTimeMillis - this.f79289k > jN) {
            this.f79289k = jCurrentTimeMillis;
            return true;
        }
        e4.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public void c() {
        this.f79284f = null;
        try {
            G g11 = this.f79279a;
            if (g11 != null) {
                this.f79290l.remove(g11);
                if (e4.c()) {
                    e4.b().i("ssp", "NonViewApi mLoadedAd destroy");
                }
                this.f79279a.m();
            }
            if (this.f79290l.isEmpty()) {
                return;
            }
            for (int i11 = 0; i11 < this.f79290l.size(); i11++) {
                G g12 = (G) this.f79290l.o(i11);
                if (g12 != null) {
                    e4.b().d("ssp", "baseAd destroy " + g12);
                    g12.m();
                }
            }
            this.f79290l.clear();
        } catch (Throwable unused) {
        }
    }

    public int d() {
        G g11 = this.f79279a;
        if (g11 == null) {
            return 1115;
        }
        return g11.r();
    }

    public int e() {
        G g11 = this.f79279a;
        if (g11 != null) {
            return g11.q();
        }
        return 1;
    }

    public double f() {
        G g11 = this.f79279a;
        if (g11 != null) {
            return g11.t();
        }
        return 0.0d;
    }

    public int g() {
        G g11 = this.f79279a;
        if (g11 != null) {
            return g11.u();
        }
        return 0;
    }

    public b7.a h() {
        return this.f79287i;
    }

    public boolean i() {
        G g11 = this.f79279a;
        return g11 != null && g11.A();
    }

    public boolean j() {
        return this.f79279a != null;
    }

    public boolean k() {
        G g11 = this.f79279a;
        if (g11 != null) {
            return g11.B();
        }
        return false;
    }

    public void l(String str, String str2, Map map) {
        this.f79288j = new b7.b(str, str2, map);
    }

    public void m(boolean z10) {
        this.f79285g = z10;
    }

    public void n(boolean z10) {
        this.f79281c = z10;
    }

    public void o(int i11) {
        this.f79282d = i11;
    }

    public void p(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f79284f = dVar;
    }

    public void q(String str) {
        this.f79280b = str;
    }

    public void r(b7.a aVar) {
        this.f79287i = aVar;
    }
}
