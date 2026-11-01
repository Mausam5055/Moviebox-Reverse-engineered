package com.mbridge.msdk.splash.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37571c = "d";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37573b;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f37574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JSONObject f37575b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f37576c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f37577d;

        /* JADX INFO: renamed from: com.mbridge.msdk.splash.request.d$a$a, reason: collision with other inner class name */
        class RunnableC0544a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f37579a;

            RunnableC0544a(CampaignUnit campaignUnit) {
                this.f37579a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignUnit campaignUnit = this.f37579a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f37579a.getAds().size() > 0) {
                    a aVar = a.this;
                    d.this.a(aVar.f37576c, this.f37579a);
                    d.this.saveRequestTime(this.f37579a.getAds().size());
                } else {
                    CampaignUnit campaignUnit2 = this.f37579a;
                    String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                    if (TextUtils.isEmpty(msg)) {
                        msg = a.this.f37575b.optString(NotificationCompat.CATEGORY_MESSAGE);
                    }
                    a aVar2 = a.this;
                    d.this.a(aVar2.f37577d, msg);
                }
            }
        }

        a(String str, JSONObject jSONObject, List list, int i11) {
            this.f37574a = str;
            this.f37575b = jSONObject;
            this.f37576c = list;
            this.f37577d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0544a("v5".equals(this.f37574a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f37575b.optJSONObject("data"), d.this.f37573b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f37575b.optJSONObject("data"), d.this.f37573b)));
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f37573b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f37573b);
        if (v5CampaignUnit != null && v5CampaignUnit.getListFrames() != null && v5CampaignUnit.getListFrames().size() > 0) {
            List<Frame> listFrames = v5CampaignUnit.getListFrames();
            a(listFrames);
            saveRequestTime(listFrames.size());
        } else {
            String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
            }
            a(iOptInt, msg);
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, iOptInt));
    }

    public abstract void a(int i11, String str);

    public void a(String str) {
        this.f37573b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f37571c, "errorCode = " + aVar.f35429a);
        a(aVar.f35429a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar == null || (aVar = eVar.f35427b) == null) {
            return;
        }
        int i11 = this.f37572a;
        if (i11 == 0) {
            b(aVar.f35450b, eVar.f35428c);
        } else if (i11 == 1) {
            a(aVar.f35450b, eVar.f35428c);
        }
    }
}
