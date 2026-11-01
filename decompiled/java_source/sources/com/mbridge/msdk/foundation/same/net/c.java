package com.mbridge.msdk.foundation.same.net;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.h;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c<T> implements b<T> {
    private long startTime;
    public int adType = 0;
    public String placementId = "";
    public String unitId = "";
    private com.mbridge.msdk.foundation.same.report.campaignreport.b mRequestTime = null;

    public void calcRequestTime(long j11) {
        com.mbridge.msdk.foundation.same.report.campaignreport.b bVar = new com.mbridge.msdk.foundation.same.report.campaignreport.b(new h());
        this.mRequestTime = bVar;
        bVar.b(this.unitId);
        this.mRequestTime.b(1);
        this.mRequestTime.a((j11 - this.startTime) + "");
    }

    public void onCancel() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
    }

    public void onFinish() {
    }

    public void onNetworking() {
    }

    public void onPreExecute() {
        this.startTime = System.currentTimeMillis();
    }

    public void onProgressChange(long j11, long j12) {
    }

    public void onRetry() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<T> eVar) {
        try {
            String str = com.mbridge.msdk.foundation.controller.c.m().b() + "_" + this.placementId + "_" + this.unitId + "_" + this.adType;
            com.mbridge.msdk.setting.h.b().a(this.unitId);
            o0.b("Listener", eVar.f35428c + " " + str);
            T t11 = eVar.f35428c;
            if (t11 instanceof JSONObject) {
                com.mbridge.msdk.foundation.same.net.utils.c.b().a(str, ((JSONObject) t11).optInt(NotificationCompat.CATEGORY_STATUS), ((JSONObject) eVar.f35428c).toString(), System.currentTimeMillis());
            }
            if (eVar.f35428c instanceof String) {
                com.mbridge.msdk.foundation.same.net.utils.c.b().a(str, new JSONObject((String) eVar.f35428c).optInt(NotificationCompat.CATEGORY_STATUS), (String) eVar.f35428c, System.currentTimeMillis());
            }
        } catch (Exception e11) {
            o0.b("Listener", e11.getMessage());
        }
    }

    public void saveHbState(int i11) {
        com.mbridge.msdk.foundation.same.report.campaignreport.b bVar = this.mRequestTime;
        if (bVar != null) {
            bVar.c(i11);
        }
    }

    public void saveRequestTime(int i11) {
        com.mbridge.msdk.foundation.same.report.campaignreport.b bVar = this.mRequestTime;
        if (bVar != null) {
            bVar.a(i11);
            this.mRequestTime.a();
        }
    }

    public void setAdType(int i11) {
        this.adType = i11;
    }

    public void setPlacementId(String str) {
        this.placementId = str;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }
}
