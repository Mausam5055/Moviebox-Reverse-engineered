package com.mbridge.msdk.mbbanner.common.response;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends c<JSONObject> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36140b = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36141a = "";

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.response.a$a, reason: collision with other inner class name */
    class RunnableC0502a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36142a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JSONObject f36143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f36144c;

        /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.response.a$a$a, reason: collision with other inner class name */
        class RunnableC0503a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f36146a;

            RunnableC0503a(CampaignUnit campaignUnit) {
                this.f36146a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignUnit campaignUnit = this.f36146a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f36146a.getAds().size() > 0) {
                    a.this.a(this.f36146a);
                    if (!TextUtils.isEmpty(a.this.f36141a)) {
                        a.this.saveHbState(1);
                    }
                    a.this.saveRequestTime(this.f36146a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f36146a;
                String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = RunnableC0502a.this.f36143b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                RunnableC0502a runnableC0502a = RunnableC0502a.this;
                a.this.a(runnableC0502a.f36144c, msg);
            }
        }

        RunnableC0502a(String str, JSONObject jSONObject, int i11) {
            this.f36142a = str;
            this.f36143b = jSONObject;
            this.f36144c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0503a("v5".equals(this.f36142a) ? b.parseV5CampaignUnit(this.f36143b.optJSONObject("data"), a.this.f36141a) : b.parseCampaignUnit(this.f36143b.optJSONObject("data"), a.this.f36141a)));
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        o0.c(f36140b, "parseLoad content = " + jSONObject);
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0502a(jSONObject.optString("version"), jSONObject, iOptInt));
    }

    public abstract void a(int i11, String str);

    public abstract void a(CampaignUnit campaignUnit);

    public void a(String str) {
        this.f36141a = str;
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.c(f36140b, "onFailed errorCode = " + aVar.f35429a);
        a(aVar.f35429a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        super.onSuccess(eVar);
        a(eVar.f35427b.f35450b, eVar.f35428c);
    }
}
