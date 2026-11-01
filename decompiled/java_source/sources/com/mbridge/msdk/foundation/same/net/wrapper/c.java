package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.CustomInfoManager;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.tracker.network.k;
import com.mbridge.msdk.tracker.network.l;
import com.meituan.android.walle.ChannelReader;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static final String TAG = "c";
    protected Context mContext;

    public c(Context context) {
        if (context == null) {
            this.mContext = com.mbridge.msdk.foundation.controller.c.m().d();
        } else {
            this.mContext = context.getApplicationContext();
        }
    }

    private String asUrlParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb2 = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = map.get(str);
                        if (TextUtils.isEmpty(str2)) {
                            str2 = "";
                        }
                        sb2.append(UrlUtils.AND_MARK);
                        sb2.append(str);
                        sb2.append(UrlUtils.EQUAL_MARK);
                        sb2.append(str2);
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(TAG, e11.getMessage());
                }
                sb2 = null;
            }
            if (sb2 != null && sb2.length() > 0) {
                return sb2.toString();
            }
        }
        return null;
    }

    private static com.mbridge.msdk.tracker.network.h<?> createRequest(int i11, int i12, String str, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        if (i11 == 0) {
            return new k(i12, str, str2, j11, new i(bVar));
        }
        if (i11 != 1) {
            return null;
        }
        return new com.mbridge.msdk.tracker.network.i(i12, str, str2, j11, new i(bVar));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x005e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:27:0x0089 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[Catch: Exception -> 0x00dc, TRY_ENTER, TryCatch #1 {Exception -> 0x00dc, blocks: (B:37:0x00b0, B:39:0x00b6, B:43:0x00c1, B:52:0x00e6, B:55:0x0103), top: B:95:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b6 A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:37:0x00b0, B:39:0x00b6, B:43:0x00c1, B:52:0x00e6, B:55:0x0103), top: B:95:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:54:0x0101 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0103 A[Catch: Exception -> 0x00dc, TRY_LEAVE, TryCatch #1 {Exception -> 0x00dc, blocks: (B:37:0x00b0, B:39:0x00b6, B:43:0x00c1, B:52:0x00e6, B:55:0x0103), top: B:95:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0123  */
    /* JADX WARN: Code duplicated, block: B:60:0x012f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0168  */
    /* JADX WARN: Code duplicated, block: B:70:0x0174 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0176  */
    /* JADX WARN: Code duplicated, block: B:72:0x018f  */
    /* JADX WARN: Code duplicated, block: B:75:0x019a  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ec  */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x0176, please report this as an issue */
    private void post(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, boolean z11, String str2, long j11) {
        e eVar2;
        e eVar3;
        String str3;
        JSONArray jSONArrayB;
        String str4;
        com.mbridge.msdk.setting.g gVarD;
        com.mbridge.msdk.setting.a aVarJ;
        com.mbridge.msdk.tracker.network.h<?> hVarCreateRequest;
        String str5;
        com.mbridge.msdk.setting.g gVarD2;
        int iY0;
        String strK;
        int iK;
        String str6;
        if (eVar == null) {
            try {
                eVar2 = new e();
            } catch (Exception e11) {
                e = e11;
                eVar2 = eVar;
                o0.a(TAG, e.getMessage());
                eVar3 = eVar2;
                o0.c(TAG, "post url = " + str);
                if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35468d)) {
                    gVarD2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (gVarD2 != null) {
                        iK = gVarD2.K();
                        try {
                            str6 = eVar3.a().get("data");
                            if (!z11) {
                                try {
                                    if (!com.mbridge.msdk.foundation.same.report.b.a(gVarD2, str6)) {
                                        return;
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e13) {
                            e = e13;
                            str6 = "";
                        }
                        strK = gVarD2.k();
                        iY0 = gVarD2.y0();
                        eVar3.a("a_stid", gVarD2.a());
                    } else {
                        iY0 = 0;
                        strK = NetworkUtil.NETWORK_TYPE_UNKNOWN;
                        iK = 1;
                        str6 = "";
                    }
                    eVar3.a("country_code", strK);
                    try {
                        if (iK == 2) {
                            if (!TextUtils.isEmpty(str6)) {
                                return;
                            }
                            if (com.mbridge.msdk.foundation.same.report.b.a(gVarD2, str6)) {
                                if (iY0 != 1) {
                                }
                                com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                                return;
                            } else if (z11) {
                                if (iY0 != 1) {
                                    return;
                                }
                                com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                                return;
                            }
                        } else if (iK == 1) {
                            com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                            return;
                        }
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                } else {
                    if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35475h)) {
                        if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35469d0)) {
                            if (eVar3 != null) {
                                str3 = str + UrlUtils.QUESTION_MARK + eVar3.toString();
                            } else {
                                str3 = str;
                            }
                            jSONArrayB = com.mbridge.msdk.foundation.db.middle.b.a().b();
                            if (jSONArrayB != null) {
                                String string = jSONArrayB.toString();
                                eVar3 = new e();
                                eVar3.a(e.f35504k, string);
                            }
                            str4 = str3;
                        }
                        hVarCreateRequest = createRequest(i11, 1, str4, bVar, str2, j11);
                        if (hVarCreateRequest != null) {
                            if (eVar3 != null) {
                                str5 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                                if (TextUtils.isEmpty(str5)) {
                                    str5 = "";
                                }
                                hVarCreateRequest.a("local_id", str5);
                                String str7 = eVar3.a().get("ad_type");
                                hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str7) ? "" : str7);
                                hVarCreateRequest.a(eVar3.a());
                            }
                            hVarCreateRequest.d(canTrack());
                            hVarCreateRequest.b(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                            l.a().b().a(hVarCreateRequest);
                        }
                    }
                    gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (gVarD != null) {
                        com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35479l, com.mbridge.msdk.foundation.same.net.utils.d.h().f35483p, eVar3.toString(), false, bVar);
                        return;
                    }
                }
                str4 = str;
                hVarCreateRequest = createRequest(i11, 1, str4, bVar, str2, j11);
                if (hVarCreateRequest != null) {
                    if (eVar3 != null) {
                        str5 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                        if (TextUtils.isEmpty(str5)) {
                            str5 = "";
                        }
                        hVarCreateRequest.a("local_id", str5);
                        String str8 = eVar3.a().get("ad_type");
                        hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str8) ? "" : str8);
                        hVarCreateRequest.a(eVar3.a());
                    }
                    hVarCreateRequest.d(canTrack());
                    hVarCreateRequest.b(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                    l.a().b().a(hVarCreateRequest);
                }
            }
        } else {
            eVar2 = eVar;
        }
        try {
            addExtraParams(str, eVar2);
            f.k(eVar2);
            com.mbridge.msdk.foundation.same.net.e eVarA = com.mbridge.msdk.foundation.same.net.utils.c.b().a(eVar2);
            if (eVarA != null && bVar != null) {
                bVar.onSuccess(eVarA);
                return;
            }
        } catch (Exception e15) {
            e = e15;
            o0.a(TAG, e.getMessage());
        }
        eVar3 = eVar2;
        o0.c(TAG, "post url = " + str);
        if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35468d)) {
            gVarD2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD2 != null) {
                iK = gVarD2.K();
                str6 = eVar3.a().get("data");
                if (!z11) {
                    if (!com.mbridge.msdk.foundation.same.report.b.a(gVarD2, str6)) {
                        return;
                    }
                }
                strK = gVarD2.k();
                iY0 = gVarD2.y0();
                eVar3.a("a_stid", gVarD2.a());
            } else {
                iY0 = 0;
                strK = NetworkUtil.NETWORK_TYPE_UNKNOWN;
                iK = 1;
                str6 = "";
            }
            eVar3.a("country_code", strK);
            if (iK == 2) {
                if (!TextUtils.isEmpty(str6)) {
                    return;
                }
                if (com.mbridge.msdk.foundation.same.report.b.a(gVarD2, str6)) {
                    if (iY0 != 1 || iY0 == 3) {
                        com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                        return;
                    }
                } else if (z11) {
                    if (iY0 != 1 && iY0 != 3) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                    return;
                }
            } else if (iK == 1) {
                com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n, eVar3.toString(), false, bVar);
                return;
            }
        } else {
            if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35475h)) {
                if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35469d0)) {
                    if (eVar3 != null) {
                        str3 = str + UrlUtils.QUESTION_MARK + eVar3.toString();
                    } else {
                        str3 = str;
                    }
                    jSONArrayB = com.mbridge.msdk.foundation.db.middle.b.a().b();
                    if (jSONArrayB != null) {
                        String string2 = jSONArrayB.toString();
                        eVar3 = new e();
                        eVar3.a(e.f35504k, string2);
                    }
                    str4 = str3;
                }
                hVarCreateRequest = createRequest(i11, 1, str4, bVar, str2, j11);
                if (hVarCreateRequest != null) {
                    if (eVar3 != null && eVar3.a() != null) {
                        str5 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                        if (TextUtils.isEmpty(str5)) {
                            str5 = "";
                        }
                        hVarCreateRequest.a("local_id", str5);
                        String str9 = eVar3.a().get("ad_type");
                        hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str9) ? "" : str9);
                        hVarCreateRequest.a(eVar3.a());
                    }
                    hVarCreateRequest.d(canTrack());
                    hVarCreateRequest.b(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                    l.a().b().a(hVarCreateRequest);
                }
            }
            gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null && (aVarJ = gVarD.j()) != null && aVarJ.h() == 1) {
                com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35479l, com.mbridge.msdk.foundation.same.net.utils.d.h().f35483p, eVar3.toString(), false, bVar);
                return;
            }
        }
        str4 = str;
        hVarCreateRequest = createRequest(i11, 1, str4, bVar, str2, j11);
        if (hVarCreateRequest != null) {
            if (eVar3 != null) {
                str5 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                if (TextUtils.isEmpty(str5)) {
                    str5 = "";
                }
                hVarCreateRequest.a("local_id", str5);
                String str10 = eVar3.a().get("ad_type");
                hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str10) ? "" : str10);
                hVarCreateRequest.a(eVar3.a());
            }
            hVarCreateRequest.d(canTrack());
            hVarCreateRequest.b(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
            l.a().b().a(hVarCreateRequest);
        }
    }

    public void addExtraParams(String str, e eVar) {
        if (eVar == null) {
            o0.b(TAG, "addExtraParams error, params is null,frame work error");
            return;
        }
        String strA = Aa.a();
        if (strA == null) {
            strA = "";
        }
        eVar.a(ChannelReader.CHANNEL_KEY, strA);
        eVar.a("band_width", com.mbridge.msdk.foundation.same.net.a.b().a() + "");
        eVar.a(MRAIDPresenter.OPEN, com.mbridge.msdk.foundation.same.a.S);
        if (com.mbridge.msdk.util.b.a() && !TextUtils.isEmpty(str) && str.contains("setting")) {
            String strB = Aa.b();
            if (!TextUtils.isEmpty(strB)) {
                eVar.a("keyword", strB);
            }
        }
        String str2 = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
        if (str2 != null) {
            String customInfoByUnitId = CustomInfoManager.getInstance().getCustomInfoByUnitId(str2, str);
            if (!TextUtils.isEmpty(customInfoByUnitId)) {
                eVar.a("ch_info", customInfoByUnitId);
            }
            com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
            if (lVarE != null && !TextUtils.isEmpty(lVarE.a())) {
                eVar.a("u_stid", lVarE.a());
            }
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
            eVar.a("dev_source", "2");
        }
        if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
            eVar.a("re_domain", "1");
        }
    }

    protected boolean canTrack() {
        return true;
    }

    public void choiceV3OrV5BySetting(int i11, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str, long j11) {
        e eVar2;
        com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        int iP0 = TextUtils.isEmpty(str) ? gVarB.p0() : gVarB.B();
        String strA = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, iP0);
        if (iP0 < 2) {
            postV5(i11, strA, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
            return;
        }
        if (iP0 % 2 == 0) {
            eVar2 = eVar == null ? new e() : eVar;
            JSONArray jSONArrayB = com.mbridge.msdk.foundation.db.middle.b.a().b();
            if (jSONArrayB != null) {
                String string = jSONArrayB.toString();
                int i12 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                if (i12 > 0 && string.length() > i12) {
                    post(i11, strA, eVar2, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
                    return;
                }
                eVar2.a(e.f35504k, string);
            }
        } else {
            eVar2 = eVar;
        }
        getLoadOrSetting(i11, strA, eVar2, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
    }

    public void get(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        get(i11, str, eVar, bVar, false, false, str2, j11);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x018f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0195  */
    /* JADX WARN: Code duplicated, block: B:56:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:60:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    public void get(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, boolean z11, String str2, long j11) {
        e eVar2;
        e eVar3;
        String str3;
        com.mbridge.msdk.setting.g gVarB;
        com.mbridge.msdk.tracker.network.h<?> hVarCreateRequest;
        String str4;
        if (eVar == null) {
            try {
                eVar2 = new e();
            } catch (Exception e11) {
                e = e11;
                eVar2 = eVar;
                o0.a(TAG, e.getMessage());
                eVar3 = eVar2;
                if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i)) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("uri", com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m + Uri.parse(str).getPath());
                            jSONObject.put("data", eVar3.b());
                        } catch (Throwable th2) {
                            o0.b(TAG, th2.getMessage());
                        }
                        com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m, com.mbridge.msdk.foundation.same.net.utils.d.h().f35484q, jSONObject.toString(), true, bVar);
                        return;
                    } catch (Throwable th3) {
                        o0.b(TAG, th3.getMessage());
                    }
                }
                str3 = str + UrlUtils.QUESTION_MARK + eVar3.toString();
                gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
                if (str3.length() < gVarB.m0()) {
                }
                if (str3.length() < gVarB.L()) {
                }
                hVarCreateRequest = createRequest(i11, 0, str, bVar, str2, j11);
                if (hVarCreateRequest != null) {
                    if (eVar3.a() != null) {
                        str4 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                        if (TextUtils.isEmpty(str4)) {
                            str4 = "";
                        }
                        hVarCreateRequest.a("local_id", str4);
                        String str5 = eVar3.a().get("ad_type");
                        hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str5) ? "" : str5);
                        hVarCreateRequest.a(eVar3.a());
                    }
                    hVarCreateRequest.d(canTrack());
                    l.a().b().a(hVarCreateRequest);
                }
            }
        } else {
            eVar2 = eVar;
        }
        try {
            addExtraParams(str, eVar2);
            f.k(eVar2);
            String str6 = eVar2.a().get(TmcConstants.EXTRA_APP_DEV_TOKEN);
            if (TextUtils.isEmpty(str6)) {
                str6 = "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            eVar2.a("ts", jCurrentTimeMillis + "");
            if (com.mbridge.msdk.util.b.a()) {
                eVar2.a("st", SameMD5.getMD5(str6 + jCurrentTimeMillis));
            } else {
                eVar2.a("st", SameMD5.getMD5(jCurrentTimeMillis + str6));
            }
            com.mbridge.msdk.foundation.same.net.e eVarA = com.mbridge.msdk.foundation.same.net.utils.c.b().a(eVar2);
            if (eVarA != null && bVar != null) {
                bVar.onSuccess(eVarA);
                return;
            }
        } catch (Exception e12) {
            e = e12;
            o0.a(TAG, e.getMessage());
        }
        eVar3 = eVar2;
        if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i) && com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uri", com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m + Uri.parse(str).getPath());
            jSONObject2.put("data", eVar3.b());
            com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m, com.mbridge.msdk.foundation.same.net.utils.d.h().f35484q, jSONObject2.toString(), true, bVar);
            return;
        }
        str3 = str + UrlUtils.QUESTION_MARK + eVar3.toString();
        gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (str3.length() < gVarB.m0() && str3.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i)) {
            post(i11, str, eVar3, bVar, z11, false, str2, j11);
            return;
        }
        if (str3.length() < gVarB.L() && z10) {
            post(i11, str, eVar3, bVar, z11, false, str2, j11);
            return;
        }
        hVarCreateRequest = createRequest(i11, 0, str, bVar, str2, j11);
        if (hVarCreateRequest != null) {
            if (eVar3.a() != null) {
                str4 = eVar3.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                if (TextUtils.isEmpty(str4)) {
                    str4 = "";
                }
                hVarCreateRequest.a("local_id", str4);
                String str7 = eVar3.a().get("ad_type");
                hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str7) ? "" : str7);
                hVarCreateRequest.a(eVar3.a());
            }
            hVarCreateRequest.d(canTrack());
            l.a().b().a(hVarCreateRequest);
        }
    }

    public void get(int i11, String str, Map<String, String> map, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
        map.put("sdk_version", MBConfiguration.SDK_VERSION);
        map.put(TrackingKey.PLATFORM, "1");
        String strAsUrlParams = asUrlParams(map);
        if (!TextUtils.isEmpty(strAsUrlParams)) {
            str = str + UrlUtils.QUESTION_MARK + strAsUrlParams;
        }
        String str3 = str;
        if (MBridgeConstans.DEBUG) {
            o0.a("AppletsModel", "get wx scheme url = " + str3);
        }
        com.mbridge.msdk.tracker.network.h<?> hVarCreateRequest = createRequest(i11, 0, str3, bVar, str2, j11);
        if (hVarCreateRequest != null) {
            String str4 = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
            if (TextUtils.isEmpty(str4)) {
                str4 = "";
            }
            hVarCreateRequest.a("local_id", str4);
            String str5 = map.get("ad_type");
            hVarCreateRequest.a("ad_type", TextUtils.isEmpty(str5) ? "" : str5);
            hVarCreateRequest.a(map);
            hVarCreateRequest.d(canTrack());
            l.a().b().a(hVarCreateRequest);
        }
    }

    public void getCampaign(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, long j11) {
        e eVar2;
        try {
            com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            int iP0 = TextUtils.isEmpty(str) ? gVarB.p0() : gVarB.B();
            String strA = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, iP0);
            if (iP0 < 2) {
                postV5(i11, strA, eVar, bVar, true, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
                return;
            }
            if (iP0 % 2 == 0) {
                eVar2 = eVar == null ? new e() : eVar;
                JSONArray jSONArrayB = com.mbridge.msdk.foundation.db.middle.b.a().b();
                if (jSONArrayB != null) {
                    String string = jSONArrayB.toString();
                    int i12 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                    if (i12 > 0 && string.length() > i12) {
                        post(i11, strA, eVar2, bVar, true, false, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
                        return;
                    }
                    eVar2.a(e.f35504k, string);
                }
            } else {
                eVar2 = eVar;
            }
            get(i11, strA, eVar2, bVar, true, true, MBInterstitialActivity.INTENT_CAMAPIGN, j11);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    public void getLoadOrSetting(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        getLoadOrSetting(i11, str, eVar, bVar, true, str2, j11);
    }

    public void getLoadOrSetting(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, String str2, long j11) {
        get(i11, str, eVar, bVar, z10, false, str2, j11);
    }

    public void post(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        post(i11, str, eVar, bVar, false, false, str2, j11);
    }

    public void postFocusReport(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        post(i11, str, eVar, bVar, false, true, str2, j11);
    }

    public void postV5(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j11) {
        String str3 = eVar.a().get(TmcConstants.EXTRA_APP_DEV_TOKEN);
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        eVar.a("ts", jCurrentTimeMillis + "");
        eVar.a("st", SameMD5.getMD5(jCurrentTimeMillis + str3));
        post(i11, str, eVar, bVar, false, false, str2, j11);
    }

    public void postV5(int i11, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z10, String str2, long j11) {
        String str3 = eVar.a().get(TmcConstants.EXTRA_APP_DEV_TOKEN);
        if (str3 == null) {
            str3 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        eVar.a("ts", jCurrentTimeMillis + "");
        eVar.a("st", SameMD5.getMD5(jCurrentTimeMillis + str3));
        post(i11, str, eVar, bVar, z10, false, str2, j11);
    }
}
