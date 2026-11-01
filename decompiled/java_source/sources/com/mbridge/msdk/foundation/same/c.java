package com.mbridge.msdk.foundation.same;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    public static abstract class a {
        public abstract void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);
    }

    public static long a(long j11, long j12) {
        return j11 >= 0 ? j11 : j12;
    }

    public static String a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    return sb2.toString();
                }
                sb2.append(new String(bArr, 0, i11));
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(List<CampaignEx> list) {
        if (list != null && !list.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < list.size(); i11++) {
                try {
                    CampaignEx campaignEx = list.get(i11);
                    if (campaignEx != null) {
                        String id2 = campaignEx.getId();
                        if (i11 == list.size() - 1) {
                            sb2.append(id2);
                        } else {
                            sb2.append(id2);
                            sb2.append(",");
                        }
                    }
                } catch (Exception unused) {
                }
            }
            return sb2.toString();
        }
        return "";
    }

    public static JSONObject a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : str.split(UrlUtils.AND_MARK)) {
                String[] strArrSplit = str2.split(UrlUtils.EQUAL_MARK);
                String str3 = "";
                if (strArrSplit.length == 2) {
                    String str4 = strArrSplit[0];
                    if (!TextUtils.isEmpty(str4)) {
                        String str5 = strArrSplit[1];
                        if (str5 != null) {
                            str3 = str5;
                        }
                        jSONObject.put(str4, str3);
                    }
                } else if (strArrSplit.length == 1) {
                    String str6 = strArrSplit[0];
                    if (!TextUtils.isEmpty(str6)) {
                        jSONObject.put(str6, "");
                    }
                }
            }
            return jSONObject;
        } catch (Exception e11) {
            o0.a("SameCommon", "coverReportMessage", e11);
            return null;
        } catch (Throwable th2) {
            o0.a("SameCommon", "coverReportMessage", th2);
            return null;
        }
    }

    public static void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, a aVar) {
        a(campaignEx, context, cVar, aVar, 1);
    }

    public static void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, a aVar, int i11) {
        int i12;
        if (campaignEx == null || aVar == null) {
            return;
        }
        if (cVar == null) {
            try {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        boolean zC = t0.c(campaignEx);
        int iD = t0.d(context, campaignEx.getPackageName());
        if (context != null) {
            try {
                i12 = f.b(context) ? 1 : 2;
            } catch (Exception e12) {
                o0.b("SameCommon", e12.getMessage());
                i12 = 0;
            }
        } else {
            i12 = 0;
        }
        e eVar = new e();
        eVar.a(BidResponsedEx.KEY_CID, campaignEx.getId());
        eVar.a(CampaignEx.JSON_KEY_WITHOUT_INSTALL_CHECK, Integer.valueOf(campaignEx.getWtick()));
        eVar.a(CampaignEx.JSON_KEY_RETARGET_OFFER, Integer.valueOf(campaignEx.getRetarget_offer()));
        eVar.a("ind", Integer.valueOf(iD));
        eVar.a("stage", Integer.valueOf(i11));
        eVar.a(CampaignEx.KEY_ACTIVITY_PATH_AND_NAME, 0);
        eVar.a("per", Integer.valueOf(i12));
        if (zC) {
            if (iD != 1) {
                cVar.a("m_campaign_filtered", eVar);
                aVar.a("m_campaign_filtered", cVar);
            }
            cVar.a("m_campaign_ind_retarget", eVar);
            aVar.a("m_campaign_ind_retarget", cVar);
            return;
        }
        if (iD == 1) {
            cVar.a("m_campaign_filtered", eVar);
            aVar.a("m_campaign_filtered", cVar);
        }
        cVar.a("m_campaign_ind_unretarget", eVar);
        aVar.a("m_campaign_ind_unretarget", cVar);
    }

    public static boolean a(Context context, CampaignEx campaignEx) {
        if (context != null && campaignEx != null) {
            boolean zC = t0.c(context, campaignEx.getPackageName());
            boolean zC2 = t0.c(campaignEx);
            if (campaignEx.getWtick() == 1) {
                return true;
            }
            if (zC2 && zC) {
                return true;
            }
            if (!zC2 && !zC) {
                return true;
            }
        }
        return false;
    }

    public static String b(List<CampaignEx> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null && campaignEx.getCreativeId() != 0) {
                arrayList.add(campaignEx);
            }
        }
        if (arrayList.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            try {
                CampaignEx campaignEx2 = (CampaignEx) arrayList.get(i11);
                if (campaignEx2 != null) {
                    long creativeId = campaignEx2.getCreativeId();
                    if (i11 == arrayList.size() - 1) {
                        sb2.append(creativeId);
                    } else {
                        sb2.append(creativeId);
                        sb2.append(",");
                    }
                }
            } catch (Exception e11) {
                o0.b("SameCommon", "getCreativeID", e11);
            }
        }
        return sb2.toString();
    }

    public static boolean b(Context context, CampaignEx campaignEx) {
        if (context != null && campaignEx != null) {
            boolean zC = t0.c(context, campaignEx.getPackageName());
            if (t0.c(campaignEx) || campaignEx.getWtick() == 1 || !zC) {
                return true;
            }
        }
        return false;
    }

    public static byte[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length != 4) {
                return null;
            }
            byte[] bArr = new byte[4];
            for (int i11 = 0; i11 < 4; i11++) {
                int i12 = Integer.parseInt(strArrSplit[i11]);
                if (i12 >= 0 && i12 <= 255) {
                    bArr[i11] = (byte) i12;
                }
                return null;
            }
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }
}
