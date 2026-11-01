package com.mbridge.msdk.video.signal.container;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.video.signal.b;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.factory.a;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.video.signal.j;
import com.mbridge.msdk.videocommon.setting.c;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractJSContainer extends FrameLayout implements IJSFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f39779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Activity f39781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f39782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f39783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected c f39784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f39785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.entity.c f39786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f39787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f39788j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f39789k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f39790l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f39791m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f39792n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f39793o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f39794p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected IJSFactory f39795q;

    public AbstractJSContainer(Context context) {
        super(context);
        this.f39779a = 0;
        this.f39780b = 1;
        this.f39788j = 2;
        this.f39789k = false;
        this.f39790l = false;
        this.f39794p = false;
        this.f39795q = new a();
    }

    public AbstractJSContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39779a = 0;
        this.f39780b = 1;
        this.f39788j = 2;
        this.f39789k = false;
        this.f39790l = false;
        this.f39794p = false;
        this.f39795q = new a();
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private boolean i(int i11) {
        try {
            if (i11 != 1) {
                if (i11 == 2) {
                    this.f39781c.setRequestedOrientation(11);
                }
                return false;
            }
            this.f39781c.setRequestedOrientation(12);
            return true;
        } catch (Throwable th2) {
            o0.b("AbstractJSContainer", th2.getMessage(), th2);
        }
    }

    protected int a(CampaignEx campaignEx) {
        k kVarB = b(campaignEx);
        if (kVarB != null) {
            return kVarB.n();
        }
        return 0;
    }

    protected void a(c cVar, CampaignEx campaignEx) {
        CampaignEx.c rewardTemplateMode;
        if (a(campaignEx) == 1) {
            return;
        }
        if (((campaignEx == null || (rewardTemplateMode = campaignEx.getRewardTemplateMode()) == null) ? false : i(rewardTemplateMode.b())) || cVar == null) {
            return;
        }
        i(this.f39784f.y());
    }

    protected void a(Object obj) {
        f.a().b(obj, h(this.f39779a));
    }

    protected void a(Object obj, String str) {
        f.a().a(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    protected k b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        com.mbridge.msdk.videocommon.a.C0572a c0572aA = com.mbridge.msdk.videocommon.a.a(this.f39789k ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, campaignEx);
        if (c0572aA != null && c0572aA.c()) {
            WindVaneWebView windVaneWebViewB = c0572aA.b();
            if (windVaneWebViewB.getObject() instanceof k) {
                return (k) windVaneWebViewB.getObject();
            }
        }
        return null;
    }

    protected void b(Object obj, String str) {
        f.a().b(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    protected void b(String str) {
        o0.b("AbstractJSContainer", str);
        Activity activity = this.f39781c;
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public b getActivityProxy() {
        return this.f39795q.getActivityProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getIJSRewardVideoV1() {
        return this.f39795q.getIJSRewardVideoV1();
    }

    protected String getInnerPlacementId() {
        c cVar;
        return (!TextUtils.isEmpty(this.f39783e) || (cVar = this.f39784f) == null || TextUtils.isEmpty(cVar.t())) ? this.f39783e : this.f39784f.t();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.c getJSBTModule() {
        return this.f39795q.getJSBTModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        return this.f39795q.getJSCommon();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.f getJSContainerModule() {
        return this.f39795q.getJSContainerModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        return this.f39795q.getJSNotifyProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public j getJSVideoModule() {
        return this.f39795q.getJSVideoModule();
    }

    public String getPlacementId() {
        return this.f39783e;
    }

    public String getUnitId() {
        return this.f39782d;
    }

    protected String h(int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b("AbstractJSContainer", "code to string is error");
        }
        return "";
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (getJSCommon().a()) {
            getActivityProxy().a(configuration);
        }
    }

    public void onDestroy() {
        if (getJSCommon().a()) {
            getActivityProxy().b();
        }
    }

    public void onPause() {
        if (getJSCommon().a()) {
            getActivityProxy().g();
        }
        getActivityProxy().a(1);
    }

    public void onRestart() {
        if (getJSCommon().a()) {
            getActivityProxy().f();
        }
        getActivityProxy().a(4);
    }

    public void onResume() {
        if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
            return;
        }
        if (getJSCommon().a()) {
            getActivityProxy().d();
        }
        getActivityProxy().a(0);
    }

    public void onStart() {
        if (getJSCommon().a()) {
            getActivityProxy().h();
        }
        getActivityProxy().a(2);
    }

    public void onStop() {
        if (getJSCommon().a()) {
            getActivityProxy().c();
        }
        getActivityProxy().a(3);
    }

    public void registerJsFactory(IJSFactory iJSFactory) {
        this.f39795q = iJSFactory;
    }

    public void setActivity(Activity activity) {
        this.f39781c = activity;
    }

    public void setBidCampaign(boolean z10) {
        this.f39790l = z10;
    }

    public void setBigOffer(boolean z10) {
        this.f39794p = z10;
    }

    public void setIV(boolean z10) {
        this.f39789k = z10;
    }

    public void setIVRewardEnable(int i11, int i12, int i13) {
        this.f39791m = i11;
        this.f39792n = i12;
        this.f39793o = i13;
    }

    public void setMute(int i11) {
        this.f39788j = i11;
    }

    public void setPlacementId(String str) {
        this.f39783e = str;
    }

    public void setReward(com.mbridge.msdk.videocommon.entity.c cVar) {
        this.f39786h = cVar;
    }

    public void setRewardId(String str) {
        this.f39787i = str;
    }

    public void setRewardUnitSetting(c cVar) {
        this.f39784f = cVar;
    }

    public void setUnitId(String str) {
        this.f39782d = str;
    }

    public void setUserId(String str) {
        this.f39785g = str;
    }
}
