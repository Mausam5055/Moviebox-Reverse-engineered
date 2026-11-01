package com.bytedance.sdk.openadsdk.core;

import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public class sP {

    private static class Sj {
        public String Sj;
        public int sP;

        public Sj(String str, int i11) {
            this.Sj = str;
            this.sP = i11;
        }
    }

    private static com.bytedance.sdk.openadsdk.core.model.dNu Dq(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.dNu dnu = new com.bytedance.sdk.openadsdk.core.model.dNu();
        if (jSONObject == null) {
            dnu.EjP(5);
            dnu.HiB(30);
            dnu.vS(70);
            dnu.Jcg(1);
            dnu.Dq(com.bytedance.sdk.openadsdk.core.model.dNu.Sj);
            dnu.TKC(0);
            dnu.sP(0);
            dnu.Sj(3);
            return dnu;
        }
        dnu.EjP(jSONObject.optInt("ceiling_time", 5));
        dnu.HiB(jSONObject.optInt("ceiling_ratio", 30));
        dnu.vS(jSONObject.optInt("expand_ratio", 70));
        dnu.Jcg(jSONObject.optInt("back_type", 1));
        dnu.Dq(jSONObject.optInt("boc_return_type", com.bytedance.sdk.openadsdk.core.model.dNu.Sj));
        dnu.TKC(jSONObject.optInt("pre_render_status", 0));
        dnu.sP(jSONObject.optInt("pre_render_use_gecko", 0));
        dnu.Sj(jSONObject.optInt("pre_render_add_type", 3));
        return dnu;
    }

    private static com.bytedance.sdk.openadsdk.core.model.HiB EjP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("splash_clickarea", 2);
        int iOptInt2 = jSONObject.optInt("splash_layout_id", 1);
        long jOptLong = jSONObject.optLong("load_wait_time", 0L);
        long j11 = jOptLong >= 0 ? jOptLong : 0L;
        int iOptInt3 = jSONObject.optInt("skip_time", -1);
        com.bytedance.sdk.openadsdk.core.model.HiB hiB = new com.bytedance.sdk.openadsdk.core.model.HiB();
        hiB.sP(iOptInt);
        hiB.TKC(iOptInt2);
        hiB.Sj(j11);
        hiB.Sj(iOptInt3);
        return hiB;
    }

    private static boolean EjP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return (sUVar.Ph() || sUVar.hzV()) ? false : true;
    }

    private static FilterWord HiB(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("options");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    FilterWord filterWordHiB = HiB(jSONArrayOptJSONArray.optJSONObject(i11));
                    if (filterWordHiB != null && filterWordHiB.isValid()) {
                        filterWord.addOption(filterWordHiB);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.RiZ Jcg(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.RiZ riZ = new com.bytedance.sdk.openadsdk.core.model.RiZ();
        if (jSONObject == null) {
            riZ.Sj(10L);
            riZ.sP(20L);
            riZ.TKC(10L);
            riZ.EjP(20L);
            riZ.Sj("");
            return riZ;
        }
        riZ.Sj(jSONObject.optLong("onlylp_loading_maxtime", 10L));
        riZ.sP(jSONObject.optLong("straight_lp_showtime", 20L));
        riZ.TKC(jSONObject.optLong("onlyagg_loading_maxtime", 10L));
        riZ.EjP(jSONObject.optLong("straight_agg_showtime", 20L));
        riZ.Sj(jSONObject.optString("loading_text", ""));
        return riZ;
    }

    private static int Sj(com.bytedance.sdk.openadsdk.core.model.EjP ejP) {
        if (ejP == null) {
            return TTAdConstant.DOWNLOAD_APP_INFO_CODE;
        }
        if (TextUtils.isEmpty(ejP.Sj())) {
            return TTAdConstant.DOWNLOAD_URL_CODE;
        }
        if (TextUtils.isEmpty(ejP.TKC())) {
            return TTAdConstant.PACKAGE_NAME_CODE;
        }
        return 200;
    }

    private static int Sj(com.bytedance.sdk.openadsdk.core.model.Ym ym2) {
        if (ym2 == null) {
            return 200;
        }
        if (TextUtils.isEmpty(ym2.Sj())) {
            return TTAdConstant.DEEPLINK_UNAVAILABLE_CODE;
        }
        if (TextUtils.isEmpty(ym2.sP())) {
            return TTAdConstant.DEEPLINK_FALLBACK_CODE;
        }
        if (ym2.TKC() == 1 || ym2.TKC() == 2) {
            return 200;
        }
        return TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0089  */
    /* JADX WARN: Code duplicated, block: B:46:0x0097  */
    /* JADX WARN: Code duplicated, block: B:48:0x009b  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a5  */
    private static int Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        int iSj;
        int iSj2;
        if (sUVar == null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.TKC((com.bytedance.sdk.openadsdk.core.model.sU) null, "", 401);
            return 401;
        }
        String strTKC = Mts.TKC(sUVar.DKj());
        if (TextUtils.isEmpty(sUVar.aZ()) || sUVar.aZ().length() <= 1) {
            com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.AD_ID_IS_NULL_CODE);
            return TTAdConstant.AD_ID_IS_NULL_CODE;
        }
        if (sUVar.hzV()) {
            if (sUVar.DKj() < 0) {
                if (sUVar.xD() != null) {
                    sUVar.xD().getDurationSlotType();
                } else {
                    sUVar.DKa();
                }
            }
            if (sUVar.Fqk()) {
                strTKC = "fullscreen_interstitial_ad";
            }
            if (TextUtils.isEmpty(sUVar.TX())) {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, strTKC, "load_html_fail", (JSONObject) null);
                return 401;
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, strTKC, "load_html_success", (JSONObject) null);
        }
        if (sUVar.AE() == 0) {
            int iHcZ = sUVar.HcZ();
            if (iHcZ == 2 || iHcZ == 3 || iHcZ == 4) {
                iSj = Sj(sUVar.Bml());
                if (iSj != 200) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj);
                    return iSj;
                }
            } else if (iHcZ == 5 || iHcZ == 15) {
                iSj2 = Sj(sUVar.UHs(), sUVar.Ph());
                if (iSj2 != 200) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj2);
                    return iSj2;
                }
            } else if (iHcZ == 16) {
                iSj = Sj(sUVar.Bml());
                if (iSj != 200) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj);
                    return iSj;
                }
            } else if (iHcZ == 50) {
                iSj2 = Sj(sUVar.UHs(), sUVar.Ph());
                if (iSj2 != 200) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj2);
                    return iSj2;
                }
            }
        }
        return com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().nP() ? TKC(sUVar) : sP(sUVar);
    }

    private static int Sj(List<com.bytedance.sdk.openadsdk.core.model.uvD> list) {
        if (list == null) {
            return TTAdConstant.IMAGE_LIST_CODE;
        }
        if (list.size() <= 0) {
            return TTAdConstant.IMAGE_LIST_SIZE_CODE;
        }
        for (com.bytedance.sdk.openadsdk.core.model.uvD uvd : list) {
            if (uvd == null) {
                return TTAdConstant.IMAGE_CODE;
            }
            if (TextUtils.isEmpty(uvd.Sj())) {
                return TTAdConstant.IMAGE_URL_CODE;
            }
        }
        return 200;
    }

    private static int Sj(b bVar, boolean z10) {
        if (bVar == null) {
            return TTAdConstant.VIDEO_INFO_CODE;
        }
        if (TextUtils.isEmpty(bVar.x())) {
            return TTAdConstant.VIDEO_URL_CODE;
        }
        if (z10 || !TextUtils.isEmpty(bVar.r())) {
            return 200;
        }
        return TTAdConstant.VIDEO_COVER_URL_CODE;
    }

    private static Pair<com.bytedance.sdk.openadsdk.core.Ym.Sj, com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj> Sj(String str, int i11, int i12) {
        int iTKC;
        int iHiB;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (i12 == 1 || i12 == 5) {
            iTKC = 0;
            iHiB = 0;
        } else {
            iTKC = FPG.TKC(dNu.Sj());
            iHiB = FPG.HiB(dNu.Sj());
            if (i11 == 2) {
                iHiB = iTKC;
                iTKC = iHiB;
            }
        }
        com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.HiB(dNu.Sj(), iTKC, iHiB);
        return new Pair<>(hiB.Sj(str, new ArrayList()), hiB.vS);
    }

    @Nullable
    public static Pair<com.bytedance.sdk.openadsdk.core.model.Sj, ArrayList<Integer>> Sj(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.ib ibVar, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.bytedance.sdk.openadsdk.core.model.Sj sj2 = new com.bytedance.sdk.openadsdk.core.model.Sj();
            sj2.Sj(jSONObject.optString(TrackingKey.REQUEST_ID));
            sj2.Sj(jSONObject.optInt("ret"));
            int i11 = 0;
            sj2.sP(jSONObject.optInt("multi_ad_style", 0));
            sj2.sP(jSONObject.optString("message"));
            String strOptString = jSONObject.optString("gdid_encrypted");
            boolean z10 = true;
            if (jSONObject.has("choose_ui_data")) {
                sj2.sP(jSONObject.optJSONObject("choose_ui_data"));
                sj2.Sj(true);
            }
            String strOptString2 = jSONObject.optString("auction_price");
            if (sj2.TKC() != 0) {
                return null;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                ArrayList arrayList2 = sj2.aa() ? new ArrayList() : null;
                int i12 = 0;
                while (i12 < jSONArrayOptJSONArray.length()) {
                    com.bytedance.sdk.openadsdk.core.model.sU sUVarSj = Sj(jSONArrayOptJSONArray.optJSONObject(i12), adSlot, ibVar);
                    if (sUVarSj != null && sj2.aa()) {
                        if (sUVarSj.dx() == 30 || sUVarSj.dx() == 39) {
                            sUVarSj.uA(z10);
                        } else {
                            sj2.sP(0);
                            arrayList2 = null;
                        }
                    }
                    int iSj = Sj(sUVarSj);
                    if (iSj != 200) {
                        if (sUVarSj != null) {
                            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVarSj, Mts.TKC(sUVarSj.DKj()), iSj);
                        } else {
                            com.bytedance.sdk.openadsdk.EjP.TKC.sP((com.bytedance.sdk.openadsdk.core.model.sU) null, "", iSj);
                        }
                        arrayList.add(Integer.valueOf(iSj));
                        if (arrayList2 != null && sUVarSj != null) {
                            arrayList2.add(new Sj(sUVarSj.Ci(), iSj));
                        }
                        if (sUVarSj != null && sUVarSj.dx() == 39) {
                            sj2.sP(0);
                        }
                    } else {
                        sUVarSj.uA(strOptString2);
                        if (!TextUtils.isEmpty(strOptString)) {
                            sUVarSj.wE(strOptString);
                        }
                        sj2.Sj(sUVarSj);
                    }
                    i12++;
                    z10 = true;
                }
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    Sj((ArrayList<Sj>) arrayList2);
                }
                i11 = length;
            }
            Sj(i11, sj2, (ArrayList<Integer>) arrayList, tkc);
            return new Pair<>(sj2, arrayList);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.AdInfoFactory", th2.getMessage());
            return null;
        }
    }

    @Nullable
    public static com.bytedance.sdk.openadsdk.core.model.sU Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return Sj(jSONObject, (AdSlot) null, (com.bytedance.sdk.openadsdk.core.model.ib) null);
    }

    /* JADX WARN: Code duplicated, block: B:147:0x0618 A[PHI: r0
  0x0618: PHI (r0v85 int) = (r0v84 int), (r0v136 int) binds: [B:140:0x0604, B:145:0x0615] A[DONT_GENERATE, DONT_INLINE]] */
    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.sU Sj(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.ib ibVar) {
        b bVarSj;
        b bVarSj2;
        int i11;
        com.bytedance.sdk.openadsdk.core.Ym.Sj Sj2;
        com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj sj2;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.sU sUVarVS = com.bytedance.sdk.openadsdk.core.model.sU.vS();
        Sj(jSONObject, sUVarVS);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("multi_ad_scene");
        if (jSONObjectOptJSONObject3 != null) {
            sUVarVS.Sj(com.bytedance.sdk.openadsdk.core.model.zR.Sj(jSONObjectOptJSONObject3));
        }
        sUVarVS.Dq(jSONObject.optInt("proportion_watching", -1));
        sUVarVS.Ym(jSONObject.optBoolean("mate_disable_cache", false));
        sUVarVS.ib(jSONObject.optInt("interaction_type"));
        sUVarVS.zR(jSONObject.optInt(com.bytedance.sdk.openadsdk.core.model.sU.EjP, 0));
        sUVarVS.kF(jSONObject.optInt(com.bytedance.sdk.openadsdk.core.model.sU.TKC, 0));
        sUVarVS.uP(jSONObject.optInt(com.bytedance.sdk.openadsdk.core.model.sU.HiB, 0));
        sUVarVS.Fmk(jSONObject.optString("target_url"));
        sUVarVS.TzV(jSONObject.optString("ad_id"));
        sUVarVS.RiZ(jSONObject.optString("app_log_url"));
        sUVarVS.Ym(jSONObject.optString(EventConstants.KEY_SOURCE));
        sUVarVS.aa(jSONObject.optString("app_name"));
        sUVarVS.Yf(jSONObject.optInt("dislike_control", 0));
        sUVarVS.dNu(jSONObject.optInt("play_bar_show_time", -200));
        sUVarVS.dx(jSONObject.optString("gecko_id"));
        if (jSONObject.has("set_click_type")) {
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("set_click_type");
            sUVarVS.sP(jSONObjectOptJSONObject4.optDouble("cta", 2.0d));
            sUVarVS.Sj(jSONObjectOptJSONObject4.optDouble(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, 1.0d));
        }
        JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("extension");
        sUVarVS.HiB(jSONObjectOptJSONObject5);
        if (jSONObjectOptJSONObject5 != null) {
            sUVarVS.Sj(new com.bytedance.sdk.openadsdk.core.model.Zq(jSONObjectOptJSONObject5));
        }
        JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject(RewardPlus.ICON);
        sUVarVS.EjP(jSONObject.optBoolean("screenshot", false));
        sUVarVS.Zq(jSONObject.optInt("play_bar_style", 0));
        sUVarVS.zR(jSONObject.optString("market_url", ""));
        sUVarVS.Fmk(jSONObject.optInt("video_adaptation", 0));
        sUVarVS.TEQ(jSONObject.optInt("feed_video_opentype", 0));
        sUVarVS.TKC(jSONObject.optJSONObject("session_params"));
        sUVarVS.uA(jSONObject.optString("auction_price", ""));
        sUVarVS.Mts(jSONObject.optInt("mrc_report", 0));
        if (jSONObject.optBoolean("isMrcReportFinish", false)) {
            sUVarVS.Ov();
        }
        JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject(EventConstants.ADDRESS_RENDER);
        if (jSONObjectOptJSONObject7 != null) {
            sUVarVS.Ym(jSONObjectOptJSONObject7.optInt("render_sequence", 0));
            sUVarVS.aa(jSONObjectOptJSONObject7.optInt("backup_render_control", 1));
            sUVarVS.FPG(jSONObjectOptJSONObject7.optInt("reserve_time", 100));
            sUVarVS.Wjd(jSONObjectOptJSONObject7.optInt("render_thread", 0));
        }
        sUVarVS.Jcg(jSONObject.optInt("render_control", ibVar != null ? ibVar.Dq : 1));
        if (jSONObjectOptJSONObject6 != null) {
            com.bytedance.sdk.openadsdk.core.model.uvD uvd = new com.bytedance.sdk.openadsdk.core.model.uvD();
            uvd.Sj(jSONObjectOptJSONObject6.optString("url"));
            uvd.sP(jSONObjectOptJSONObject6.optInt("height"));
            uvd.Sj(jSONObjectOptJSONObject6.optInt("width"));
            sUVarVS.Sj(uvd);
        }
        JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("reward_data");
        if (jSONObjectOptJSONObject8 != null) {
            sUVarVS.vS(jSONObjectOptJSONObject8.optInt(CampaignEx.JSON_KEY_REWARD_AMOUNT, 0));
            sUVarVS.Jcg(jSONObjectOptJSONObject8.optString(CampaignEx.JSON_KEY_REWARD_NAME, ""));
        }
        JSONObject jSONObjectOptJSONObject9 = jSONObject.optJSONObject("cover_image");
        if (jSONObjectOptJSONObject9 != null) {
            com.bytedance.sdk.openadsdk.core.model.uvD uvd2 = new com.bytedance.sdk.openadsdk.core.model.uvD();
            uvd2.Sj(jSONObjectOptJSONObject9.optString("url"));
            uvd2.sP(jSONObjectOptJSONObject9.optInt("height"));
            uvd2.Sj(jSONObjectOptJSONObject9.optInt("width"));
            sUVarVS.sP(uvd2);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("image");
        if (jSONArrayOptJSONArray != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray.length(); i12++) {
                com.bytedance.sdk.openadsdk.core.model.uvD uvd3 = new com.bytedance.sdk.openadsdk.core.model.uvD();
                JSONObject jSONObjectOptJSONObject10 = jSONArrayOptJSONArray.optJSONObject(i12);
                uvd3.Sj(jSONObjectOptJSONObject10.optString("url"));
                uvd3.sP(jSONObjectOptJSONObject10.optInt("height"));
                uvd3.Sj(jSONObjectOptJSONObject10.optInt("width"));
                uvd3.Sj(jSONObjectOptJSONObject10.optBoolean("image_preview"));
                uvd3.sP(jSONObjectOptJSONObject10.optString("image_key"));
                sUVarVS.TKC(uvd3);
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("show_url");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i13 = 0; i13 < jSONArrayOptJSONArray2.length(); i13++) {
                sUVarVS.cX().add(jSONArrayOptJSONArray2.optString(i13));
            }
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(CampaignEx.JSON_KEY_CLICK_URL);
        if (jSONArrayOptJSONArray3 != null) {
            for (int i14 = 0; i14 < jSONArrayOptJSONArray3.length(); i14++) {
                sUVarVS.kb().add(jSONArrayOptJSONArray3.optString(i14));
            }
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("play_start");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i15 = 0; i15 < jSONArrayOptJSONArray4.length(); i15++) {
                sUVarVS.Uc().add(jSONArrayOptJSONArray4.optString(i15));
            }
        }
        JSONObject jSONObjectOptJSONObject11 = jSONObject.optJSONObject("click_area");
        if (jSONObjectOptJSONObject11 != null) {
            com.bytedance.sdk.openadsdk.core.model.uA uAVar = new com.bytedance.sdk.openadsdk.core.model.uA();
            uAVar.Sj = jSONObjectOptJSONObject11.optBoolean("click_upper_content_area", true);
            uAVar.sP = jSONObjectOptJSONObject11.optBoolean("click_upper_non_content_area", true);
            uAVar.TKC = jSONObjectOptJSONObject11.optBoolean("click_lower_content_area", true);
            uAVar.EjP = jSONObjectOptJSONObject11.optBoolean("click_lower_non_content_area", true);
            uAVar.HiB = jSONObjectOptJSONObject11.optBoolean("click_button_area", true);
            uAVar.vS = jSONObjectOptJSONObject11.optBoolean("click_video_area", true);
            sUVarVS.Sj(uAVar);
        }
        JSONObject jSONObjectOptJSONObject12 = jSONObject.optJSONObject("adslot");
        if (jSONObjectOptJSONObject12 != null) {
            sUVarVS.Sj(sP(jSONObjectOptJSONObject12));
        } else {
            sUVarVS.Sj(adSlot);
        }
        if (adSlot != null) {
            Map<String, Object> requestExtraMap = adSlot.getRequestExtraMap();
            if (requestExtraMap != null && requestExtraMap.containsKey("admob_watermark")) {
                sUVarVS.ley(String.valueOf(requestExtraMap.get("admob_watermark")));
            }
        } else {
            sUVarVS.ley(jSONObject.optString("identificationOverlayContent"));
        }
        sUVarVS.uvD(jSONObject.optInt("intercept_flag", 0));
        sUVarVS.sef(jSONObject.optString("phone_num"));
        sUVarVS.Zq(jSONObject.optString(CampaignEx.JSON_KEY_TITLE));
        sUVarVS.uvD(jSONObject.optString(TrackingKey.DESCRIPTION));
        sUVarVS.dNu(jSONObject.optString("button_text"));
        sUVarVS.sef(jSONObject.optInt("ad_logo", 1));
        sUVarVS.sU(jSONObject.optString("ext"));
        sUVarVS.sU(jSONObject.optInt("cover_click_area", 0));
        sUVarVS.wE(jSONObject.optInt("image_mode"));
        sUVarVS.LqL(jSONObject.optInt("orientation", 1));
        sUVarVS.Sj((float) jSONObject.optDouble("aspect_ratio", 100.0d));
        sUVarVS.sU(jSONObject.optInt("cover_click_area", 0));
        JSONObject jSONObjectOptJSONObject13 = jSONObject.optJSONObject("app");
        JSONObject jSONObjectOptJSONObject14 = jSONObject.optJSONObject(CampaignEx.JSON_KEY_DEEP_LINK_URL);
        JSONObject jSONObjectOptJSONObject15 = jSONObject.optJSONObject("oem");
        sUVarVS.TKC(jSONObject.optInt("is_web_jump_ip", 0));
        sUVarVS.Sj(com.bytedance.sdk.openadsdk.core.model.kF.Sj(jSONObjectOptJSONObject15));
        sUVarVS.Sj(vS(jSONObjectOptJSONObject13));
        JSONObject jSONObjectOptJSONObject16 = jSONObject.optJSONObject("interaction_method_params");
        sUVarVS.Sj(uA(jSONObject.optJSONObject("arbitrage_interceptor_params")));
        sUVarVS.Sj(Jcg(jSONObjectOptJSONObject16));
        sUVarVS.Sj(Dq(jSONObjectOptJSONObject16));
        sUVarVS.Sj(Ym(jSONObjectOptJSONObject14));
        sUVarVS.Sj(new com.bytedance.sdk.openadsdk.core.model.uP(jSONObject));
        JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("filter_words");
        if (jSONArrayOptJSONArray5 != null) {
            for (int i16 = 0; i16 < jSONArrayOptJSONArray5.length(); i16++) {
                FilterWord filterWordHiB = HiB(jSONArrayOptJSONArray5.optJSONObject(i16));
                if (filterWordHiB != null && filterWordHiB.isValid()) {
                    sUVarVS.Sj(filterWordHiB);
                }
            }
        }
        sUVarVS.ley(jSONObject.optInt("count_down"));
        sUVarVS.sP(jSONObject.optLong("expiration_time"));
        sUVarVS.jb(jSONObject.optInt("video_encode_type", 0));
        sUVarVS.Fm(0);
        JSONObject jSONObjectOptJSONObject17 = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject17 != null) {
            bVarSj = Sj(jSONObjectOptJSONObject17, sUVarVS, true);
            sUVarVS.sP(bVarSj);
            sUVarVS.ndK(jSONObjectOptJSONObject17.optInt("multi_played_percent", 50));
        } else {
            bVarSj = null;
        }
        JSONObject jSONObjectOptJSONObject18 = jSONObject.optJSONObject("h265_video");
        if (jSONObjectOptJSONObject18 != null) {
            bVarSj2 = Sj(jSONObjectOptJSONObject18, sUVarVS, false);
            sUVarVS.TKC(bVarSj2);
        } else {
            bVarSj2 = null;
        }
        if (Build.VERSION.SDK_INT < 26 || sUVarVS.nou() == 0) {
            sUVarVS.Sj(bVarSj);
            sUVarVS.jb(0);
        } else {
            if (bVarSj2 != null && bVarSj != null) {
                if (TextUtils.isEmpty(bVarSj2.z())) {
                    bVarSj2.e(bVarSj.z());
                }
                if (TextUtils.isEmpty(bVarSj2.f())) {
                    bVarSj2.i(bVarSj.f());
                }
                if (bVarSj2.c() == -1) {
                    bVarSj2.d(bVarSj.c());
                }
            }
            if (bVarSj2 != null) {
                sUVarVS.Sj(bVarSj2);
            } else {
                sUVarVS.Sj(bVarSj);
            }
        }
        JSONObject jSONObjectOptJSONObject19 = jSONObject.optJSONObject("download_conf");
        if (jSONObjectOptJSONObject19 != null) {
            sUVarVS.Sj(TEQ(jSONObjectOptJSONObject19));
        }
        sUVarVS.Sj(aa(jSONObject.optJSONObject("media_ext")));
        JSONObject jSONObjectOptJSONObject20 = jSONObject.optJSONObject("tpl_info");
        if (jSONObjectOptJSONObject20 != null) {
            com.bytedance.sdk.openadsdk.core.model.sU.Sj sj3 = new com.bytedance.sdk.openadsdk.core.model.sU.Sj();
            sj3.TKC(jSONObjectOptJSONObject20.optString("id"));
            sj3.EjP(jSONObjectOptJSONObject20.optString("md5"));
            sj3.HiB(jSONObjectOptJSONObject20.optString("url"));
            sj3.vS(jSONObjectOptJSONObject20.optString("data"));
            sj3.Jcg(jSONObjectOptJSONObject20.optString("diff_data"));
            String strOptString = jSONObjectOptJSONObject20.optString("dynamic_creative");
            sj3.Dq(strOptString);
            sj3.sP(jSONObjectOptJSONObject20.optString("version"));
            sj3.uA(jSONObjectOptJSONObject20.optString("media_view"));
            try {
                ArrayList arrayList = new ArrayList();
                JSONObject jSONObject2 = new JSONObject(strOptString);
                JSONArray jSONArrayOptJSONArray6 = jSONObject2.optJSONArray("tag_ids");
                if (jSONArrayOptJSONArray6 != null) {
                    for (int i17 = 0; i17 < jSONArrayOptJSONArray6.length(); i17++) {
                        arrayList.add(Integer.valueOf(jSONArrayOptJSONArray6.optInt(i17)));
                    }
                }
                String strOptString2 = jSONObject2.optString("music_url");
                sj3.Sj(arrayList);
                sj3.Sj(strOptString2);
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("TTAD.AdInfoFactory", e11.getMessage());
            }
            sj3.TEQ(jSONObjectOptJSONObject20.optString("engine_version"));
            sj3.Ym(jSONObjectOptJSONObject20.optString("ugen_url"));
            sj3.aa(jSONObjectOptJSONObject20.optString("ugen_md5"));
            sj3.Fmk(jSONObjectOptJSONObject20.optString("ugen_data"));
            sUVarVS.Sj(sj3);
        }
        JSONObject jSONObjectOptJSONObject21 = jSONObject.optJSONObject("tpl_info_v3");
        if (jSONObjectOptJSONObject21 != null) {
            sUVarVS.Sj(com.bytedance.sdk.openadsdk.core.model.LqL.Sj(jSONObjectOptJSONObject21));
        }
        JSONObject jSONObjectOptJSONObject22 = jSONObject.optJSONObject("dynamic_creative");
        if (jSONObjectOptJSONObject22 != null) {
            sUVarVS.sP(jSONObjectOptJSONObject22);
        }
        sUVarVS.TEQ(jSONObject.optString("creative_extra"));
        sUVarVS.uA(jSONObject.optInt("if_block_lp", 0));
        sUVarVS.TzV(jSONObject.optInt("cache_sort", 1));
        sUVarVS.RiZ(jSONObject.optInt("if_sp_cache", 0));
        JSONObject jSONObjectOptJSONObject23 = jSONObject.optJSONObject("splash_control");
        if (jSONObjectOptJSONObject23 != null) {
            sUVarVS.Sj(EjP(jSONObjectOptJSONObject23));
        }
        sUVarVS.LD(jSONObject.optInt("is_package_open", 1));
        sUVarVS.Dq(jSONObject.optString("ad_info", null));
        sUVarVS.dx(jSONObject.optInt("ua_policy", 2));
        sUVarVS.fF(jSONObject.optInt("playable_duration_time", 20));
        sUVarVS.JcM(jSONObject.optInt("playable_endcard_close_time", -1));
        sUVarVS.WMZ(jSONObject.optInt("endcard_close_time", -1));
        sUVarVS.EjP(jSONObject.optInt("interaction_method"));
        sUVarVS.UHs(jSONObject.optInt("lp_click_type", -1));
        sUVarVS.EjP(jSONObject.optInt("lp_click_interval", -1));
        sUVarVS.ib(jSONObject.optString("dsp_html"));
        sUVarVS.qRN(jSONObject.optInt("image_stay", 0));
        int iOptInt = jSONObject.optInt("dsp_material_type", 0);
        if (iOptInt < 0 || iOptInt > 3) {
            iOptInt = 0;
        }
        if (iOptInt == 0) {
            if (jSONObject.optBoolean("is_vast", false)) {
                iOptInt = 1;
            }
            i11 = jSONObject.optBoolean("is_html", false) ? 2 : iOptInt;
        }
        sUVarVS.HpB(i11);
        if (i11 == 1 || i11 == 3) {
            int iDKj = sUVarVS.DKj();
            if (iDKj < 0) {
                iDKj = sUVarVS.xD() != null ? sUVarVS.xD().getDurationSlotType() : sUVarVS.DKa();
            }
            String strTKC = Mts.TKC(iDKj);
            if (jSONObject.has("vast_json")) {
                Sj2 = com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj(jSONObject.optJSONObject("vast_json"));
            } else {
                String strOptString3 = jSONObject.optString("dsp_vast");
                if (TextUtils.isEmpty(strOptString3)) {
                    Sj(sUVarVS, strTKC);
                    return null;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                Pair<com.bytedance.sdk.openadsdk.core.Ym.Sj, com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj> pairSj = Sj(strOptString3, sUVarVS.liH(), iDKj);
                if (pairSj != null) {
                    com.bytedance.sdk.openadsdk.core.Ym.Sj sj4 = (com.bytedance.sdk.openadsdk.core.Ym.Sj) pairSj.first;
                    sj2 = (com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj) pairSj.second;
                    Sj2 = sj4;
                } else {
                    Sj2 = null;
                    sj2 = null;
                }
                Sj(sUVarVS, strTKC, Sj2, jCurrentTimeMillis, sj2);
            }
            if (Sj2 != null) {
                Sj2.vS(strTKC);
            }
            if (Sj2 == null) {
                return null;
            }
            Sj(Sj2, sUVarVS);
        }
        sUVarVS.kF(jSONObject.optString("deep_link_appname", ""));
        sUVarVS.Ei(jSONObject.optInt("landing_page_download_clicktype", 1));
        JSONObject jSONObjectOptJSONObject24 = jSONObject.optJSONObject("dsp_style");
        if (jSONObjectOptJSONObject24 != null) {
            sUVarVS.Sj(new com.bytedance.sdk.openadsdk.core.model.Fmk(jSONObjectOptJSONObject24));
        }
        JSONObject jSONObjectOptJSONObject25 = jSONObject.optJSONObject("dsp_adchoices");
        if (jSONObjectOptJSONObject25 != null) {
            sUVarVS.HiB(jSONObjectOptJSONObject25.optString("adchoices_icon", ""));
            sUVarVS.vS(jSONObjectOptJSONObject25.optString("adchoices_url", ""));
        }
        String strOptString4 = jSONObject.optString("gdid_encrypted");
        if (!TextUtils.isEmpty(strOptString4)) {
            sUVarVS.wE(strOptString4);
        }
        int iOptInt2 = jSONObject.optInt("jump_probability", 0);
        if (iOptInt2 < 0 || iOptInt2 > 100) {
            iOptInt2 = 0;
        }
        sUVarVS.xhi(iOptInt2);
        sUVarVS.Jw();
        JSONObject jSONObjectOptJSONObject26 = jSONObject.optJSONObject("ugen");
        if (jSONObjectOptJSONObject26 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject26.optJSONObject(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD)) != null) {
            sUVarVS.Sj(TKC(jSONObjectOptJSONObject2));
            JSONObject jSONObjectOptJSONObject27 = jSONObjectOptJSONObject2.optJSONObject("overlay");
            if (jSONObjectOptJSONObject27 != null) {
                sUVarVS.sP(TKC(jSONObjectOptJSONObject27));
            }
        }
        sUVarVS.db(jSONObject.optInt("preload_h5_type", 0));
        sUVarVS.Dq(jSONObject.optBoolean("hasReportShow", false));
        sUVarVS.LqL(jSONObject.optString("endcard_creative", ""));
        sUVarVS.vS(jSONObject.optJSONObject("ad_label"));
        JSONObject jSONObjectOptJSONObject28 = jSONObject.optJSONObject("ev");
        if (jSONObjectOptJSONObject28 != null) {
            sUVarVS.aa(jSONObjectOptJSONObject28.optBoolean(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj));
            sUVarVS.dwU(jSONObjectOptJSONObject28.optInt("wait_time", com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP));
            sUVarVS.Yf(jSONObjectOptJSONObject28.optString("label", com.bytedance.sdk.openadsdk.kF.Sj.TKC.TKC));
            sUVarVS.Sj(new com.bytedance.sdk.openadsdk.kF.Sj.sP(sUVarVS));
        }
        if (jSONObject.has("banner") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("banner")) != null) {
            sUVarVS.Sj(new PAGBannerSize(jSONObjectOptJSONObject.optInt("width", 0), jSONObjectOptJSONObject.optInt("height", 0)));
        }
        return sUVarVS;
    }

    @Nullable
    private static b Sj(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.sU sUVar, boolean z10) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        bVar.D(jSONObject.optInt("cover_height"));
        bVar.u(jSONObject.optInt("cover_width"));
        bVar.q(jSONObject.optString("resolution"));
        bVar.p(jSONObject.optLong("size"));
        double dOptDouble = jSONObject.optDouble("video_duration", 0.0d);
        bVar.n(dOptDouble);
        int i11 = 1;
        int iOptInt = jSONObject.optInt("replay_time", 1);
        if (dOptDouble <= 15.0d && sUVar.ley() != 1 && com.bytedance.sdk.openadsdk.core.model.sU.HiB(sUVar)) {
            i11 = iOptInt;
        }
        bVar.s(i11);
        bVar.E(jSONObject.optString("cover_url"));
        bVar.v(jSONObject.optString(CampaignEx.JSON_KEY_VIDEO_URL));
        bVar.e(jSONObject.optString(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD));
        bVar.i(jSONObject.optString("playable_download_url"));
        bVar.M(jSONObject.optString("file_hash"));
        bVar.b(jSONObject.optInt("if_playable_loading_show", 0));
        bVar.I(jSONObject.optInt("remove_loading_page_type", 0));
        bVar.o(jSONObject.optInt("fallback_endcard_judge", 0));
        bVar.h(jSONObject.optInt("video_preload_size", 307200));
        bVar.L(jSONObject.optInt("reward_video_cached_type", 0));
        bVar.k(jSONObject.optInt("execute_cached_type", 0));
        bVar.d(z10 ? jSONObject.optInt("endcard_render", 0) : jSONObject.optInt("endcard_render", -1));
        return bVar;
    }

    private static void Sj(int i11, final com.bytedance.sdk.openadsdk.core.model.Sj sj2, final ArrayList<Integer> arrayList, final com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
        if (sj2 == null || i11 < 2 || !sj2.Dq()) {
            return;
        }
        final int size = i11 - (sj2.EjP() != null ? sj2.EjP().size() : 0);
        final boolean z10 = sj2.uA() == null;
        if (size > 0 || z10) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("choose_ad_parsing_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.sP.1
                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", sj2.sP());
                    jSONObject.put("material_error", size);
                    jSONObject.put("choose_ui_error", z10 ? 1 : 0);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) arrayList).toString());
                    }
                    com.bytedance.sdk.openadsdk.core.model.TKC tkc2 = tkc;
                    if (tkc2 != null) {
                        jSONObject.put("server_res_str", tkc2.Sj());
                    }
                    return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("choose_ad_parsing_error").sP(jSONObject.toString());
                }
            });
        }
    }

    private static void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj sj2, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        sj2.Sj(sUVar);
        if (!Sj(sUVar.sdp())) {
            sUVar.ib(2);
        }
        sUVar.Jcg(1);
        sUVar.Sj(sj2);
        if (!TextUtils.isEmpty(sj2.EjP())) {
            sUVar.Zq(sj2.EjP());
        }
        if (!TextUtils.isEmpty(sj2.HiB())) {
            sUVar.uvD(sj2.HiB());
        }
        sUVar.Fmk(sj2.vS());
        sUVar.Sj((com.bytedance.sdk.openadsdk.core.model.EjP) null);
        b bVarUHs = sUVar.UHs();
        if (bVarUHs == null) {
            bVarUHs = new b();
        }
        bVarUHs.v(sj2.Jcg());
        bVarUHs.n(sj2.Dq());
        bVarUHs.M(null);
        bVarUHs.E(null);
        bVarUHs.e(null);
        sUVar.Sj(bVarUHs);
        if (sj2.sP() != null && !TextUtils.isEmpty(sj2.sP().HiB())) {
            com.bytedance.sdk.openadsdk.core.model.uvD uvd = new com.bytedance.sdk.openadsdk.core.model.uvD();
            uvd.Sj(sj2.sP().HiB());
            uvd.Sj(sj2.sP().sP());
            uvd.sP(sj2.sP().TKC());
            sUVar.Sj(uvd);
            return;
        }
        if (sUVar.EZ() == null) {
            com.bytedance.sdk.openadsdk.core.model.uvD uvd2 = new com.bytedance.sdk.openadsdk.core.model.uvD();
            uvd2.Sj("https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/static/images/2023620white.jpeg");
            uvd2.Sj(98);
            uvd2.sP(98);
            sUVar.Sj(uvd2);
        }
    }

    private static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("reason_code", -1);
            jSONObject.put("error_code", -1);
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str, "load_vast_fail", jSONObject);
        } catch (Exception unused) {
        }
    }

    private static void Sj(final com.bytedance.sdk.openadsdk.core.model.sU sUVar, final String str, final com.bytedance.sdk.openadsdk.core.Ym.Sj sj2, final long j11, final com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj sj3) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("vast_parser") { // from class: com.bytedance.sdk.openadsdk.core.sP.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    com.bytedance.sdk.openadsdk.core.Ym.Sj sj4 = sj2;
                    String str2 = "load_vast_fail";
                    if (sj4 == null) {
                        jSONObject.put("reason_code", -2);
                        com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj sj5 = sj3;
                        if (sj5 != null) {
                            jSONObject.put("error_code", sj5.Sj);
                        }
                    } else if (TextUtils.isEmpty(sj4.uA()) || TextUtils.isEmpty(sj2.vS()) || sj2.Dq() <= 0.0d) {
                        jSONObject.put("reason_code", -3);
                        jSONObject.put("error_code", -3);
                    } else {
                        jSONObject.put("duration", System.currentTimeMillis() - j11);
                        com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj sj6 = sj3;
                        if (sj6 != null) {
                            jSONObject.put("wrapper_count", sj6.sP);
                            jSONObject.put("impression_links_null", sj3.TKC);
                        }
                        str2 = "load_vast_success";
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str, str2, jSONObject);
                    com.bytedance.sdk.openadsdk.core.Ym.Sj sj7 = sj2;
                    if (sj7 == null || sj7.sP() == null || !TextUtils.isEmpty(sj2.sP().vS())) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("error_code", 1000);
                        jSONObject2.put(TrackingKey.DESCRIPTION, "1000:Image url is null");
                    } catch (Throwable unused) {
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str, "load_vast_icon_fail", jSONObject2);
                    sj2.Sj((com.bytedance.sdk.openadsdk.core.Ym.sP) null);
                } catch (Exception unused2) {
                }
            }
        });
    }

    private static void Sj(final ArrayList<Sj> arrayList) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("multiple_ads_parsing_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.sP.3
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("material_error", arrayList.size());
                JSONArray jSONArray = new JSONArray();
                for (Sj sj2 : arrayList) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(BidResponsedEx.KEY_CID, sj2.Sj);
                    jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, sj2.sP);
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("error_cid_list", jSONArray);
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("multiple_ads_parsing_error").sP(jSONObject.toString());
            }
        });
    }

    private static void Sj(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt("iv_skip_time", -1);
            int iOptInt2 = jSONObject.optInt("rv_skip_time", -1);
            if (iOptInt != -1) {
                sUVar.Sj(iOptInt);
            }
            if (iOptInt2 != -1) {
                sUVar.sP(iOptInt2);
            }
        }
    }

    private static boolean Sj(int i11) {
        return i11 == 2 || i11 == 3 || i11 == 8;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.aa TEQ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.aa aaVar = new com.bytedance.sdk.openadsdk.core.model.aa();
        aaVar.Sj(jSONObject.optInt("if_send_click", 0));
        return aaVar;
    }

    private static int TKC(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        int iSj;
        String strTKC = Mts.TKC(sUVar.DKj());
        if (sUVar.AE() == 0) {
            iSj = Sj(sUVar.TFd());
            if (iSj != 200) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj);
                return iSj;
            }
        } else {
            iSj = 200;
        }
        int iSdp = sUVar.sdp();
        if (iSdp != 2 && iSdp != 3) {
            if (iSdp == 4) {
                int iSj2 = Sj(sUVar.tz());
                if (iSj2 == 200) {
                    return iSj2;
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj2);
                return iSj2;
            }
            if (iSdp != 8) {
                return iSj;
            }
        }
        if (!EjP(sUVar) || !TextUtils.isEmpty(sUVar.Chv())) {
            return iSj;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.LANDING_PAGE_TYPE_CODE);
        return TTAdConstant.LANDING_PAGE_TYPE_CODE;
    }

    private static com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj TKC(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2 = new com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj();
        sj2.Sj(jSONObject.optString("id"));
        sj2.sP(jSONObject.optString("md5"));
        sj2.TKC(jSONObject.optString("url"));
        return sj2;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.Ym Ym(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.Ym ym2 = new com.bytedance.sdk.openadsdk.core.model.Ym();
        ym2.Sj(jSONObject.optString("deeplink_url"));
        ym2.sP(jSONObject.optString("fallback_url"));
        ym2.Sj(jSONObject.optInt("fallback_type"));
        return ym2;
    }

    private static Map<String, Object> aa(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                map.put(next, jSONObject.opt(next));
            }
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0079  */
    private static int sP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        int iSj;
        String strTKC = Mts.TKC(sUVar.DKj());
        if (sUVar.AE() == 0) {
            iSj = Sj(sUVar.TFd());
            com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, iSj);
        } else {
            iSj = 200;
        }
        int iSdp = sUVar.sdp();
        if (iSdp == 2 || iSdp == 3) {
            if (EjP(sUVar) && TextUtils.isEmpty(sUVar.Chv())) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.LANDING_PAGE_TYPE_CODE);
                iSj = 406;
            }
        } else if (iSdp == 4) {
            com.bytedance.sdk.openadsdk.core.model.EjP ejPTz = sUVar.tz();
            if (ejPTz == null) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.DOWNLOAD_APP_INFO_CODE);
                iSj = 407;
            } else if (TextUtils.isEmpty(ejPTz.TKC()) && TextUtils.isEmpty(ejPTz.Sj())) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME);
                iSj = 417;
            } else if (TextUtils.isEmpty(ejPTz.TKC())) {
                iSj = TTAdConstant.PACKAGE_NAME_CODE;
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.PACKAGE_NAME_CODE);
            } else if (TextUtils.isEmpty(ejPTz.Sj())) {
                iSj = TTAdConstant.DOWNLOAD_URL_CODE;
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.DOWNLOAD_URL_CODE);
            }
        } else if (iSdp == 8) {
            if (EjP(sUVar)) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(sUVar, strTKC, TTAdConstant.LANDING_PAGE_TYPE_CODE);
                iSj = 406;
            }
        }
        if (iSj == 417 || iSj == 407 || iSj == 406) {
            return iSj;
        }
        if (iSj != 200) {
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, strTKC, iSj);
        }
        return 200;
    }

    public static AdSlot sP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("mCodeId", "");
        int iOptInt = jSONObject.optInt("mImgAcceptedWidth", 0);
        int iOptInt2 = jSONObject.optInt("mImgAcceptedHeight", 0);
        float fOptDouble = (float) jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
        float fOptDouble2 = (float) jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
        int iOptInt3 = jSONObject.optInt("mAdCount", 6);
        boolean zOptBoolean = jSONObject.optBoolean("mSupportDeepLink", true);
        String strOptString2 = jSONObject.optString("mRewardName", "");
        int iOptInt4 = jSONObject.optInt("mRewardAmount", 0);
        String strOptString3 = jSONObject.optString("mMediaExtra", "");
        String strOptString4 = jSONObject.optString("mUserID", "");
        jSONObject.optInt("mOrientation", 2);
        int iOptInt5 = jSONObject.optInt("mNativeAdType", 0);
        boolean zOptBoolean2 = jSONObject.optBoolean("mIsAutoPlay", false);
        boolean zOptBoolean3 = jSONObject.optBoolean("mIsExpressAd", false);
        String strOptString5 = jSONObject.optString("mBidAdm", "");
        return new AdSlot.Builder().setCodeId(strOptString).setImageAcceptedSize(iOptInt, iOptInt2).setExpressViewAcceptedSize(fOptDouble, fOptDouble2).setAdCount(iOptInt3).setSupportDeepLink(zOptBoolean).setRewardName(strOptString2).setRewardAmount(iOptInt4).setMediaExtra(strOptString3).setUserID(strOptString4).setNativeAdType(iOptInt5).setIsAutoPlay(zOptBoolean2).isExpressAd(zOptBoolean3).withBid(strOptString5).setDurationSlotType(jSONObject.optInt("mDurationSlotType", 0)).build();
    }

    private static com.bytedance.sdk.openadsdk.core.model.vS uA(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.vS vSVar = new com.bytedance.sdk.openadsdk.core.model.vS();
        if (jSONObject == null) {
            vSVar.TKC(0);
            vSVar.EjP(0);
            vSVar.sP(new ArrayList());
            vSVar.HiB(0);
            vSVar.Sj(new ArrayList());
            vSVar.sP(0);
            vSVar.Sj(0);
            return vSVar;
        }
        vSVar.TKC(jSONObject.optInt("interceptor_x", 0));
        vSVar.EjP(jSONObject.optInt("interceptor_y", 0));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("interceptor_page");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i11)));
            }
        }
        vSVar.sP(arrayList);
        vSVar.HiB(jSONObject.optInt("interceptor_interval_time", 0));
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("url_regular");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                arrayList2.add(jSONArrayOptJSONArray2.optString(i12));
            }
        }
        vSVar.Sj(arrayList2);
        vSVar.sP(jSONObject.optInt("boc_index", 0));
        vSVar.Sj(jSONObject.optInt("is_act", 0));
        return vSVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.EjP vS(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.EjP ejP = new com.bytedance.sdk.openadsdk.core.model.EjP();
        ejP.sP(jSONObject.optString("app_name"));
        ejP.TKC(jSONObject.optString("package_name"));
        ejP.Sj(jSONObject.optString("download_url"));
        ejP.Sj(jSONObject.optDouble("score", -1.0d));
        ejP.Sj(jSONObject.optInt("comment_num", -1));
        ejP.sP(jSONObject.optInt(CampaignEx.JSON_KEY_APP_SIZE, 0));
        ejP.EjP(jSONObject.optString("app_category"));
        return ejP;
    }
}
