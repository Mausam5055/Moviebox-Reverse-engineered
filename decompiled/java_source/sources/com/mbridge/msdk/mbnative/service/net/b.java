package com.mbridge.msdk.mbnative.service.net;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends c<JSONObject> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f36411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36412b;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JSONObject f36414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f36415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f36416d;

        /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.service.net.b$a$a, reason: collision with other inner class name */
        class RunnableC0512a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f36418a;

            RunnableC0512a(CampaignUnit campaignUnit) {
                this.f36418a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignUnit campaignUnit = this.f36418a;
                if (campaignUnit == null || campaignUnit.getAds() == null || this.f36418a.getAds().size() <= 0) {
                    a aVar = a.this;
                    b.this.a(aVar.f36416d, aVar.f36414b.optString(NotificationCompat.CATEGORY_MESSAGE));
                } else {
                    a aVar2 = a.this;
                    b.this.a(aVar2.f36415c, this.f36418a);
                    b.this.saveRequestTime(this.f36418a.getAds().size());
                }
            }
        }

        a(String str, JSONObject jSONObject, List list, int i11) {
            this.f36413a = str;
            this.f36414b = jSONObject;
            this.f36415c = list;
            this.f36416d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0512a("v5".equals(this.f36413a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f36414b.optJSONObject("data")) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f36414b.optJSONObject("data"))));
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data")) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"));
        if (v5CampaignUnit == null || v5CampaignUnit.getListFrames() == null || v5CampaignUnit.getListFrames().size() <= 0) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
        } else {
            a(v5CampaignUnit.getListFrames());
            saveRequestTime(v5CampaignUnit.getListFrames().size());
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

    public int a() {
        return this.f36411a;
    }

    public void a(int i11) {
        this.f36411a = i11;
    }

    public abstract void a(int i11, String str);

    public void a(String str) {
        this.f36412b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    public String b() {
        return this.f36412b;
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        a(aVar.f35429a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar == null || (aVar = eVar.f35427b) == null) {
            return;
        }
        int i11 = this.f36411a;
        if (i11 == 0) {
            b(aVar.f35450b, eVar.f35428c);
        } else if (i11 == 1) {
            a(aVar.f35450b, eVar.f35428c);
        }
    }
}
