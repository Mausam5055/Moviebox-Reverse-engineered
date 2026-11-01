package com.mbridge.msdk.reward.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f37194d = "c";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.metrics.c f37197c;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f37198a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JSONObject f37199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f37200c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f37201d;

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.request.c$a$a, reason: collision with other inner class name */
        class RunnableC0535a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f37203a;

            RunnableC0535a(CampaignUnit campaignUnit) {
                this.f37203a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignUnit campaignUnit = this.f37203a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f37203a.getAds().size() > 0) {
                    this.f37203a.setMetricsData(c.this.f37197c);
                    a aVar = a.this;
                    c.this.a(aVar.f37200c, this.f37203a);
                    c.this.saveRequestTime(this.f37203a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f37203a;
                String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = a.this.f37199b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                a aVar2 = a.this;
                c cVar = c.this;
                cVar.a(aVar2.f37201d, msg, cVar.f37197c);
            }
        }

        a(String str, JSONObject jSONObject, List list, int i11) {
            this.f37198a = str;
            this.f37199b = jSONObject;
            this.f37200c = list;
            this.f37201d = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0535a("v5".equals(this.f37198a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f37199b.optJSONObject("data"), c.this.f37196b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f37199b.optJSONObject("data"), c.this.f37196b)));
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(list, jSONObject, iOptInt, this.f37197c);
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f37196b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f37196b);
        if (v5CampaignUnit != null && v5CampaignUnit.getListFrames() != null && v5CampaignUnit.getListFrames().size() > 0) {
            List<Frame> listFrames = v5CampaignUnit.getListFrames();
            a(listFrames);
            saveRequestTime(listFrames.size());
        } else {
            String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
            }
            a(iOptInt, msg, this.f37197c);
        }
    }

    private void a(List<g> list, JSONObject jSONObject, int i11, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String strB = "";
        if (list != null && list.size() > 0) {
            for (g gVar : list) {
                if (gVar != null) {
                    String strA = gVar.a();
                    if (!TextUtils.isEmpty(strA) && strA.equals("data_res_type")) {
                        strB = gVar.b();
                    }
                }
            }
        }
        String strG = "errorCode: 3507 errorMessage: data load failed, errorMsg is " + jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
        if (TextUtils.isEmpty(strB) || !strB.equals("1")) {
            com.mbridge.msdk.foundation.error.b bVarA = i11 == -1 ? com.mbridge.msdk.foundation.error.a.a(880017, strG) : com.mbridge.msdk.foundation.error.a.a(880003, strG);
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.c(false);
                if (TextUtils.isEmpty(strG)) {
                    strG = bVarA.g();
                }
            }
            a(i11, strG, cVar);
            return;
        }
        com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880018, strG);
        if (cVar != null) {
            cVar.a(bVarA2);
            cVar.c(true);
            if (TextUtils.isEmpty(strG)) {
                strG = bVarA2.g();
            }
        }
        a(i11, strG, cVar);
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(list, jSONObject, iOptInt, this.f37197c);
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, iOptInt));
    }

    public abstract void a(int i11, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);

    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        this.f37197c = cVar;
    }

    public void a(String str) {
        this.f37196b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f37194d, "errorCode = " + aVar.f35429a);
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(aVar.f35429a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
        bVar.a("campaign_request_error", aVar);
        bVar.a(aVar.f35430b);
        this.f37197c.a(bVar);
        a(aVar.f35429a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar), this.f37197c);
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
        int i11 = this.f37195a;
        if (i11 == 0) {
            b(aVar.f35450b, eVar.f35428c);
        } else if (i11 == 1) {
            a(aVar.f35450b, eVar.f35428c);
        }
    }
}
