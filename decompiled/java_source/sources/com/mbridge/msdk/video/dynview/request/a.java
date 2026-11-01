package com.mbridge.msdk.video.dynview.request;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.Campaign;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f39066a = "com.mbridge.msdk.video.dynview.request.a";

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.request.a$a, reason: collision with other inner class name */
    class C0559a implements j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39067a;

        C0559a(ViewGroup viewGroup) {
            this.f39067a = viewGroup;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, this.f39067a);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, this.f39067a);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.b(campaign, this.f39067a);
        }
    }

    private static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public static void a(Context context, CampaignEx campaignEx, String str, View view) {
        if (context == null || campaignEx == null) {
            return;
        }
        a(context, campaignEx);
        com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(context, str);
        if (view instanceof ViewGroup) {
            aVar.a(new C0559a((ViewGroup) view));
        }
        aVar.a(campaignEx);
    }

    public static void a(CampaignEx campaignEx, Context context, String str, String str2, String str3) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000091");
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f35335g);
                }
                jSONObject.put(CampaignEx.JSON_KEY_HB, 0);
                jSONObject.put("rid_n", str3);
                jSONObject.put("reason", str);
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                    jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, t0.b(campaignEx.getRewardTemplateMode().e()));
                }
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b(f39066a, th2.getMessage());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    public static void a(CampaignUnit campaignUnit, int i11, int i12, String str) {
        int i13;
        String impressionURL;
        int i14;
        String str2;
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0 || campaignUnit.getAds().get(i11) == null) {
            return;
        }
        if (i12 == 0 && campaignUnit.getAds().get(i11).mMoreOfferImpShow) {
            return;
        }
        String strA = z0.a(campaignUnit.getAds().get(i11).getendcard_url(), "mof_testuid");
        if (TextUtils.isEmpty(strA)) {
            strA = z0.a(campaignUnit.getAds().get(i11).getendcard_url(), "mof_uid");
        }
        String str3 = TextUtils.isEmpty(strA) ? str : strA;
        if (i12 != 0) {
            if (i12 != 1) {
                str2 = "";
                i14 = 0;
            } else {
                i13 = com.mbridge.msdk.click.retry.a.f34419n;
                impressionURL = campaignUnit.getAds().get(i11).getOnlyImpressionURL();
            }
            if (TextUtils.isEmpty(str2)) {
            }
            com.mbridge.msdk.click.a.a(c.m().d(), campaignUnit.getAds().get(i11), str3, str2, false, true, i14);
        }
        i13 = com.mbridge.msdk.click.retry.a.f34418m;
        impressionURL = campaignUnit.getAds().get(i11).getImpressionURL();
        i14 = i13;
        str2 = impressionURL;
        if (TextUtils.isEmpty(str2)) {
            com.mbridge.msdk.click.a.a(c.m().d(), campaignUnit.getAds().get(i11), str3, str2, false, true, i14);
        }
    }
}
