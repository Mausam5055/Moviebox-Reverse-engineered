package com.cloud.hisavana.sdk.api.adx;

import a7.c;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import b7.b;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.e;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ViewApi extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected G f21589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f21590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f21591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f21592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f21593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected d f21594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f21595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f21596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected b7.a f21597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected b f21598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected androidx.collection.b f21599k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f21600l;

    protected static class a extends AdCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final ViewApi f21601a;

        a(ViewApi viewApi) {
            this.f21601a = viewApi;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void D(G g11) {
            ViewApi viewApi = this.f21601a;
            if (viewApi != null) {
                viewApi.f21589a = g11;
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public d d() {
            ViewApi viewApi = this.f21601a;
            if (viewApi != null) {
                return viewApi.f21594f;
            }
            return null;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String e() {
            ViewApi viewApi = this.f21601a;
            return viewApi != null ? SSPTrackingHelper.f21953a.o(viewApi.f21589a) : "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String g() {
            ViewApi viewApi = this.f21601a;
            return viewApi != null ? SSPTrackingHelper.f21953a.q(viewApi.f21589a) : "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void q(G g11, Bundle bundle) {
            ViewApi viewApi = this.f21601a;
            if (viewApi != null) {
                viewApi.f21589a = g11;
            }
            super.q(g11, bundle);
        }
    }

    public ViewApi(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewApi(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f21599k = new androidx.collection.b();
        this.f21600l = 0L;
    }

    public ViewApi(Context context, String str) {
        super(context);
        this.f21599k = new androidx.collection.b();
        this.f21600l = 0L;
        this.f21590b = str;
    }

    protected void a(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), sSPTrackingHelper.q(this.f21589a), this.f21590b, sSPTrackingHelper.m(this.f21589a), bundle);
        } catch (Throwable unused) {
        }
    }

    protected boolean b() {
        if (TextUtils.isEmpty(c.f365b)) {
            e4.b().e("ssp", "AppId is empty, please check your config.");
            d dVar = this.f21594f;
            if (dVar != null) {
                dVar.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!e.h()) {
            e4.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.f21953a.n();
        if (jCurrentTimeMillis - this.f21600l > jN) {
            this.f21600l = jCurrentTimeMillis;
            return true;
        }
        e4.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public void destroy() {
        this.f21594f = null;
        try {
            G g11 = this.f21589a;
            if (g11 != null) {
                this.f21599k.remove(g11);
                if (e4.c()) {
                    e4.b().i("ssp", "ViewApi mLoadedAd destroy");
                }
                this.f21589a.m();
            }
            if (this.f21599k.isEmpty()) {
                return;
            }
            for (int i11 = 0; i11 < this.f21599k.size(); i11++) {
                G g12 = (G) this.f21599k.o(i11);
                if (g12 != null) {
                    g12.m();
                }
            }
            this.f21599k.clear();
        } catch (Throwable unused) {
        }
    }

    public int getAdReadyStatusWithoutTracking() {
        G g11 = this.f21589a;
        if (g11 == null) {
            return 1115;
        }
        return g11.r();
    }

    public int getAdSource() {
        G g11 = this.f21589a;
        if (g11 != null) {
            return g11.q();
        }
        return 1;
    }

    public double getBidPrice() {
        G g11 = this.f21589a;
        if (g11 != null) {
            return g11.t();
        }
        return 0.0d;
    }

    public Map<String, Object> getExtInfo() {
        G g11 = this.f21589a;
        if (g11 == null || g11.p() == null || this.f21589a.p().l() == null) {
            return null;
        }
        return this.f21589a.p().l().a();
    }

    public int getFillAdType() {
        G g11 = this.f21589a;
        if (g11 != null) {
            return g11.u();
        }
        return 0;
    }

    public String getGameName() {
        G g11 = this.f21589a;
        if (g11 == null || g11.p() == null || this.f21589a.p().l() == null) {
            return null;
        }
        return this.f21589a.p().l().b();
    }

    public String getGameScene() {
        G g11 = this.f21589a;
        if (g11 == null || g11.p() == null || this.f21589a.p().l() == null) {
            return null;
        }
        return this.f21589a.p().l().c();
    }

    public b7.a getRequest() {
        return this.f21597i;
    }

    @Deprecated(since = "3.5.1.0")
    public boolean isAdValid() {
        return isReady();
    }

    public boolean isDefaultAd() {
        G g11 = this.f21589a;
        return g11 != null && g11.A();
    }

    public boolean isLoaded() {
        return this.f21589a != null;
    }

    public boolean isMatchVulgarBrand() {
        G g11 = this.f21589a;
        if (g11 != null) {
            return g11.B();
        }
        return false;
    }

    public boolean isOfflineAd() {
        G g11 = this.f21589a;
        return g11 != null && g11.C();
    }

    public boolean isReady() {
        G g11 = this.f21589a;
        if (g11 == null) {
            return false;
        }
        int iR = g11.r();
        boolean z10 = iR == 0;
        if (!z10) {
            Bundle bundle = new Bundle();
            bundle.putString("s_err_code", iR + "");
            a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
        }
        return z10;
    }

    public void loadAd(BidInfo bidInfo) {
        G g11 = this.f21589a;
        if (g11 != null) {
            g11.j(bidInfo);
        }
    }

    public void setAdLoadScenes(@Nullable String str, @Nullable String str2, @Nullable Map<String, Object> map) {
        this.f21598j = new b(str, str2, map);
    }

    public void setBidding(boolean z10) {
        this.f21593e = z10;
    }

    public void setContainVulgarContent(boolean z10) {
        this.f21595g = z10;
    }

    public void setCurrActivityFullscreen(boolean z10) {
        this.f21591c = z10;
    }

    public void setDefaultFillTimeoutDuration(int i11) {
        this.f21592d = i11;
    }

    public void setListener(d dVar) {
        this.f21594f = dVar;
    }

    public void setOnlyFetchDefaultAd(Boolean bool) {
        this.f21596h = bool.booleanValue();
    }

    public void setPlacementId(String str) {
        this.f21590b = str;
    }

    public void setRequest(b7.a aVar) {
        this.f21597i = aVar;
    }
}
