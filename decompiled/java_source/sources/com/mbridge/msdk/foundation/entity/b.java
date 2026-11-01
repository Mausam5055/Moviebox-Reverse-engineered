package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.out.Frame;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {
    public static final String JSON_KEY_ADS = "ads";
    public static final String JSON_KEY_AD_HTML = "cam_html";
    public static final String JSON_KEY_AD_TYPE = "ad_type";
    public static final String JSON_KEY_AD_ZIP = "cam_tpl_url";
    public static final String JSON_KEY_BANNER_HTML = "cam_html";
    public static final String JSON_KEY_BANNER_URL = "cam_tpl_url";
    public static final String JSON_KEY_CSP = "csp";
    public static final String JSON_KEY_C_I = "c_i";
    public static final String JSON_KEY_DO = "do";
    public static final String JSON_KEY_ENCRYPT_PRICE = "encrypt_p";
    public static final String JSON_KEY_END_SCREEN_URL = "end_screen_url";
    public static final String JSON_KEY_FRAME_ADS = "frames";
    public static final String JSON_KEY_HTML_URL = "html_url";
    public static final String JSON_KEY_IA_EXT1 = "ia_all_ext1";
    public static final String JSON_KEY_IA_EXT2 = "ia_all_ext2";
    public static final String JSON_KEY_IA_ICON = "ia_icon";
    public static final String JSON_KEY_IA_ORI = "ia_ori";
    public static final String JSON_KEY_IA_RST = "ia_rst";
    public static final String JSON_KEY_IA_URL = "ia_url";
    public static final String JSON_KEY_JM_DO = "jm_do";
    public static final String JSON_KEY_MOF_TEMPLATE_URL = "mof_template_url";
    public static final String JSON_KEY_MOF_TPLID = "mof_tplid";
    public static final String JSON_KEY_NSCPT = "nscpt";
    public static final String JSON_KEY_ONLY_IMPRESSION_URL = "only_impression_url";
    public static final String JSON_KEY_PARENT_SESSION_ID = "parent_session_id";
    public static final String JSON_KEY_PV_URLS = "pv_urls";
    public static final String JSON_KEY_REPLACE_TMP = "replace_tmp";
    public static final String JSON_KEY_REQ_EXT_DATA = "req_ext_data";
    public static final String JSON_KEY_RKS = "rks";
    public static final String JSON_KEY_SECOND_REQUEST_INDEX = "r_index";
    public static final String JSON_KEY_SECOND_SHOW_INDEX = "s_show_index";
    public static final String JSON_KEY_SESSION_ID = "a";
    public static final String JSON_KEY_SH = "sh";
    public static final String JSON_KEY_TEMPLATE = "template";
    public static final String JSON_KEY_TK_TCP_PORT = "tk_tcp_port";
    public static final String JSON_KEY_TOKEN_RULE = "token_r";
    public static final String JSON_KEY_UNIT_SIZE = "unit_size";
    public static final String JSON_KEY_VCN = "vcn";
    public static final String KEY_IRLFA = "irlfa";
    private static final String TAG = "b";
    private String adHtml;
    private int adType;
    private String adZip;
    public ArrayList<CampaignEx> ads;
    private String bannerHtml;
    private String bannerUrl;
    private String csp;
    private String domain;
    private double ecppv;
    private HashMap<String, String> epMap;
    private String htmlUrl;
    private String ia_all_ext1;
    private String ia_all_ext2;
    private String ia_icon;
    private int ia_ori;
    private int ia_rst;
    private String ia_url;
    private int jmDo;
    private List<Frame> listFrames;
    private String localRequestId;
    private com.mbridge.msdk.foundation.same.report.metrics.c metricsData;
    private String onlyImpressionUrl;
    private String parentSessionId;
    private String requestId;
    private HashMap<String, String> rks;
    private String sessionId;

    /* JADX INFO: renamed from: sh, reason: collision with root package name */
    private String f35156sh;
    private int template;
    private int tokenRule;
    private String unitSize;
    private int vcn;
    protected StringBuffer cParams = new StringBuffer();
    private String encryptPrice = "";
    private String msg = "";
    private int activitySwitch = 1;
    private int secondRequestIndex = 0;
    private int secondShowIndex = 0;

    private static void getSysIDAndBKUPID(JSONObject jSONObject) {
        FastKV fastKVBuild = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKVBuild != null) {
            try {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject == null || contextD == null) {
                    return;
                }
                String strOptString = jSONObject.optString("b");
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString)) {
                    com.mbridge.msdk.foundation.same.a.V = strOptString;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("b", com.mbridge.msdk.foundation.same.a.V);
                    try {
                        fastKVBuild.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    } catch (Exception unused2) {
                    }
                }
                String strOptString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(strOptString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f35335g, strOptString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.f35335g = strOptString2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
                try {
                    fastKVBuild.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        try {
            Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject == null || contextD2 == null) {
                return;
            }
            String strOptString3 = jSONObject.optString("b");
            if (!TextUtils.isEmpty(strOptString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString3)) {
                com.mbridge.msdk.foundation.same.a.V = strOptString3;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("b", com.mbridge.msdk.foundation.same.a.V);
                SharedPreferences sharedPreferences = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    editorEdit.apply();
                }
            }
            String strOptString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(strOptString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f35335g, strOptString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.f35335g = strOptString4;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f35335g);
            SharedPreferences sharedPreferences2 = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                editorEdit2.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f35335g);
                editorEdit2.apply();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject) {
        return parseCampaignUnit(jSONObject, "");
    }

    /* JADX WARN: Code duplicated, block: B:56:0x032e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0354 A[Catch: Exception -> 0x03e6, TRY_LEAVE, TryCatch #3 {Exception -> 0x03e6, blocks: (B:52:0x02a6, B:51:0x02a3, B:54:0x02c3, B:55:0x0325, B:58:0x0341, B:60:0x0347, B:61:0x034e, B:63:0x0354, B:71:0x03d4, B:70:0x03d1, B:72:0x03e3), top: B:84:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0395 A[Catch: Exception -> 0x0295, TRY_LEAVE, TryCatch #4 {Exception -> 0x0295, blocks: (B:45:0x0219, B:47:0x021f, B:65:0x038f, B:67:0x0395), top: B:84:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x03cc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x0295: MOVE (r11 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY]), block:B:49:0x0295 */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11, types: [org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14, types: [org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r11v15, types: [com.mbridge.msdk.foundation.entity.b] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25, types: [com.mbridge.msdk.foundation.entity.b] */
    /* JADX WARN: Type inference failed for: r11v28, types: [com.mbridge.msdk.foundation.entity.b] */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r29v3, types: [com.mbridge.msdk.foundation.entity.CampaignUnit, com.mbridge.msdk.foundation.entity.b] */
    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject, String str) {
        ?? OptJSONArray;
        ArrayList arrayList;
        Object obj;
        String str2;
        CampaignUnit campaignUnit;
        int i11;
        String str3;
        String str4;
        String str5;
        int i12;
        String str6;
        String str7;
        String str8;
        String str9;
        int i13;
        ArrayList arrayList2;
        int i14;
        String str10;
        ?? r29;
        int i15;
        String str11;
        int i16;
        CampaignEx campaign;
        ?? r11;
        int i17;
        String str12 = JSON_KEY_ADS;
        String str13 = "ad_type";
        String str14 = JSON_KEY_PARENT_SESSION_ID;
        String str15 = "a";
        String str16 = CampaignEx.JSON_KEY_ECPPV;
        String str17 = JSON_KEY_ONLY_IMPRESSION_URL;
        if (jSONObject != null) {
            try {
                CampaignUnit campaignUnit2 = new CampaignUnit();
                try {
                    String strOptString = jSONObject.optString(JSON_KEY_RKS);
                    if (!TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject2 = new JSONObject(strOptString);
                        Iterator<String> itKeys = jSONObject2.keys();
                        HashMap<String, String> map = new HashMap<>();
                        while (itKeys != null && itKeys.hasNext()) {
                            String next = itKeys.next();
                            map.put(next, jSONObject2.optString(next));
                        }
                        campaignUnit2.setRks(map);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        HashMap<String, String> map2 = new HashMap<>();
                        map2.put("encrypt_p", "");
                        map2.put(KEY_IRLFA, "");
                        campaignUnit2.setEpMap(map2);
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(JSON_KEY_REQ_EXT_DATA);
                    int iOptInt = jSONObject.optInt(JSON_KEY_NSCPT, 1);
                    String strOptString2 = jSONObject.optString(JSON_KEY_MOF_TEMPLATE_URL, "");
                    int iOptInt2 = jSONObject.optInt(JSON_KEY_MOF_TPLID, 0);
                    String string = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : "";
                    new JSONArray();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pv_urls");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        arrayList = null;
                    } else {
                        ArrayList arrayList3 = new ArrayList(jSONArrayOptJSONArray.length());
                        for (int i18 = 0; i18 < jSONArrayOptJSONArray.length(); i18++) {
                            arrayList3.add(jSONArrayOptJSONArray.getString(i18));
                        }
                        arrayList = arrayList3;
                    }
                    com.mbridge.msdk.foundation.db.middle.b.a().a(jSONObject.optJSONObject(JSON_KEY_REPLACE_TMP), true);
                    getSysIDAndBKUPID(jSONObject);
                    campaignUnit2.setSessionId(jSONObject.optString("a"));
                    campaignUnit2.setParentSessionId(jSONObject.optString(JSON_KEY_PARENT_SESSION_ID));
                    campaignUnit2.setAdType(jSONObject.optInt("ad_type"));
                    campaignUnit2.setUnitSize(jSONObject.optString(JSON_KEY_UNIT_SIZE));
                    campaignUnit2.setHtmlUrl(jSONObject.optString(JSON_KEY_HTML_URL));
                    campaignUnit2.setOnlyImpressionUrl(jSONObject.optString(JSON_KEY_ONLY_IMPRESSION_URL));
                    campaignUnit2.setActivitySwitch(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH));
                    campaignUnit2.setEcppv(jSONObject.optDouble(CampaignEx.JSON_KEY_ECPPV));
                    campaignUnit2.setTemplate(jSONObject.optInt("template"));
                    campaignUnit2.setJmDo(jSONObject.optInt(JSON_KEY_JM_DO));
                    campaignUnit2.setIa_icon(jSONObject.optString("ia_icon"));
                    campaignUnit2.setIa_rst(jSONObject.optInt("ia_rst"));
                    campaignUnit2.setIa_url(jSONObject.optString("ia_url"));
                    campaignUnit2.setIa_ori(jSONObject.optInt("ia_ori"));
                    campaignUnit2.setIa_all_ext1(jSONObject.optString(JSON_KEY_IA_EXT1));
                    campaignUnit2.setIa_all_ext2(jSONObject.optString(JSON_KEY_IA_EXT2));
                    campaignUnit2.setVcn(jSONObject.optInt("vcn"));
                    campaignUnit2.setTokenRule(jSONObject.optInt("token_r"));
                    campaignUnit2.setEncryptPrice(jSONObject.optString("encrypt_p"));
                    campaignUnit2.setSecondRequestIndex(jSONObject.optInt("r_index", 0));
                    campaignUnit2.setSecondShowIndex(jSONObject.optInt("s_show_index", 0));
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(JSON_KEY_ADS);
                    OptJSONArray = jSONObject.optJSONArray(JSON_KEY_FRAME_ADS);
                    String strOptString3 = jSONObject.optString(JSON_KEY_C_I, "");
                    e0.a().a(strOptString3);
                    String str18 = "web env is not support";
                    CampaignUnit campaignUnit3 = campaignUnit2;
                    String str19 = JSON_KEY_END_SCREEN_URL;
                    try {
                        try {
                            if (OptJSONArray != 0) {
                                try {
                                    if (OptJSONArray.length() > 0) {
                                        String str20 = "template";
                                        ArrayList arrayList4 = new ArrayList();
                                        int i19 = 0;
                                        ?? r12 = OptJSONArray;
                                        while (i19 < r12.length()) {
                                            JSONObject jSONObjectOptJSONObject2 = r12.optJSONObject(i19);
                                            int i20 = i19;
                                            JSONArray jSONArray = jSONObjectOptJSONObject2.getJSONArray(str12);
                                            String str21 = str12;
                                            ArrayList arrayList5 = new ArrayList();
                                            String str22 = str15;
                                            ?? r28 = r12;
                                            int i21 = 0;
                                            while (i21 < jSONArray.length()) {
                                                JSONObject jSONObjectOptJSONObject3 = jSONArray.optJSONObject(i21);
                                                String strOptString4 = jSONObject.optString(JSON_KEY_ONLY_IMPRESSION_URL);
                                                String strOptString5 = jSONObject.optString(JSON_KEY_HTML_URL);
                                                String strOptString6 = jSONObject.optString(str19);
                                                String strOptString7 = jSONObject.optString(str16);
                                                JSONObject jSONObject3 = jSONObjectOptJSONObject2;
                                                ArrayList arrayList6 = arrayList4;
                                                String str23 = str18;
                                                int i22 = iOptInt;
                                                int i23 = iOptInt2;
                                                JSONArray jSONArray2 = jSONArray;
                                                String str24 = strOptString3;
                                                String str25 = strOptString2;
                                                CampaignUnit campaignUnit4 = campaignUnit3;
                                                String str26 = str16;
                                                String str27 = str19;
                                                CampaignEx campaign2 = CampaignEx.parseCampaign(jSONObjectOptJSONObject3, strOptString4, strOptString5, strOptString6, false, campaignUnit4, str, strOptString7);
                                                if (campaign2 != null) {
                                                    campaign2.setNetAddress(str24);
                                                    campaign2.setKeyIaUrl(campaignUnit4.getIa_url());
                                                    campaign2.setKeyIaOri(campaignUnit4.getIa_ori());
                                                    campaign2.setKeyIaRst(campaignUnit4.getIa_rst());
                                                    campaign2.setKeyIaIcon(campaignUnit4.getIa_icon());
                                                    campaign2.setAdType(jSONObject.optInt(str13));
                                                    campaign2.setIa_ext1(jSONObject.optString(CampaignEx.KEY_IA_EXT1));
                                                    campaign2.setIa_ext2(jSONObject.optString(CampaignEx.KEY_IA_EXT2));
                                                    campaign2.setAc_s(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH, 1));
                                                    campaign2.setVcn(campaignUnit4.getVcn());
                                                    campaign2.setTokenRule(campaignUnit4.getTokenRule());
                                                    campaign2.setEncryptPrice(campaignUnit4.getEncryptPrice());
                                                    campaign2.setMof_tplid(i23);
                                                    str4 = str25;
                                                    campaign2.setMof_template_url(str4);
                                                    i11 = i22;
                                                    campaign2.setNscpt(i11);
                                                    campaign2.setPv_urls(arrayList);
                                                    str2 = string;
                                                    campaign2.setReq_ext_data(str2);
                                                    arrayList5.add(campaign2);
                                                    i23 = i23;
                                                    campaignUnit = campaignUnit4;
                                                    str3 = str23;
                                                } else {
                                                    str2 = string;
                                                    campaignUnit = campaignUnit4;
                                                    i11 = i22;
                                                    str3 = str23;
                                                    str4 = str25;
                                                    campaignUnit.setMsg(str3);
                                                }
                                                i21++;
                                                string = str2;
                                                iOptInt = i11;
                                                strOptString2 = str4;
                                                str18 = str3;
                                                arrayList4 = arrayList6;
                                                jSONObjectOptJSONObject2 = jSONObject3;
                                                iOptInt2 = i23;
                                                strOptString3 = str24;
                                                str19 = str27;
                                                jSONArray = jSONArray2;
                                                str16 = str26;
                                                campaignUnit3 = campaignUnit;
                                            }
                                            ArrayList arrayList7 = arrayList4;
                                            CampaignUnit campaignUnit5 = campaignUnit3;
                                            String str28 = str16;
                                            String str29 = str19;
                                            Frame frame = new Frame();
                                            frame.setParentSessionId(jSONObject.optString(str14));
                                            frame.setSessionId(jSONObject.optString(str22));
                                            frame.setCampaigns(arrayList5);
                                            String str30 = str20;
                                            frame.setTemplate(jSONObjectOptJSONObject2.optInt(str30));
                                            arrayList7.add(frame);
                                            str20 = str30;
                                            arrayList4 = arrayList7;
                                            string = string;
                                            strOptString2 = strOptString2;
                                            str14 = str14;
                                            str12 = str21;
                                            iOptInt2 = iOptInt2;
                                            strOptString3 = strOptString3;
                                            i19 = i20 + 1;
                                            iOptInt = iOptInt;
                                            str18 = str18;
                                            str15 = str22;
                                            str19 = str29;
                                            str13 = str13;
                                            str16 = str28;
                                            campaignUnit3 = campaignUnit5;
                                            r12 = r28;
                                        }
                                        OptJSONArray = campaignUnit3;
                                        OptJSONArray.setListFrames(arrayList4);
                                    } else {
                                        str5 = strOptString2;
                                        i12 = iOptInt2;
                                        str6 = string;
                                        OptJSONArray = campaignUnit3;
                                        str7 = CampaignEx.JSON_KEY_ECPPV;
                                        str8 = JSON_KEY_END_SCREEN_URL;
                                        str9 = "web env is not support";
                                        i13 = iOptInt;
                                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                                            arrayList2 = new ArrayList();
                                            i14 = 0;
                                            OptJSONArray = OptJSONArray;
                                            while (i14 < jSONArrayOptJSONArray2.length()) {
                                                JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i14);
                                                String strOptString8 = jSONObject.optString(str17);
                                                String strOptString9 = jSONObject.optString(JSON_KEY_HTML_URL);
                                                String strOptString10 = jSONObject.optString(str8);
                                                str10 = str9;
                                                String str31 = str7;
                                                r29 = OptJSONArray;
                                                JSONArray jSONArray3 = jSONArrayOptJSONArray2;
                                                i15 = i13;
                                                str11 = str5;
                                                String str32 = str8;
                                                String str33 = str17;
                                                str7 = str31;
                                                i16 = i12;
                                                campaign = CampaignEx.parseCampaign(jSONObjectOptJSONObject4, strOptString8, strOptString9, strOptString10, false, r29, str, jSONObject.optString(str31));
                                                if (campaign != null) {
                                                    campaign.setNetAddress(strOptString3);
                                                    campaign.setMof_tplid(i16);
                                                    campaign.setMof_template_url(str11);
                                                    i17 = i15;
                                                    campaign.setNscpt(i17);
                                                    campaign.setPv_urls(arrayList);
                                                    campaign.setReq_ext_data(str6);
                                                    campaign.setVcn(r29.getVcn());
                                                    campaign.setTokenRule(r29.getTokenRule());
                                                    campaign.setEncryptPrice(r29.getEncryptPrice());
                                                    campaign.setAc_s(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH, 1));
                                                    arrayList2.add(campaign);
                                                    r11 = r29;
                                                } else {
                                                    r11 = r29;
                                                    i17 = i15;
                                                    r11.setMsg(str10);
                                                }
                                                i14++;
                                                str5 = str11;
                                                i12 = i16;
                                                str9 = str10;
                                                i13 = i17;
                                                jSONArrayOptJSONArray2 = jSONArray3;
                                                str8 = str32;
                                                str17 = str33;
                                                OptJSONArray = r11;
                                            }
                                            OptJSONArray.setAds(arrayList2);
                                        }
                                    }
                                } catch (Exception unused) {
                                    OptJSONArray = campaignUnit3;
                                }
                            } else {
                                str5 = strOptString2;
                                i12 = iOptInt2;
                                str6 = string;
                                OptJSONArray = campaignUnit3;
                                str7 = CampaignEx.JSON_KEY_ECPPV;
                                str8 = JSON_KEY_END_SCREEN_URL;
                                str9 = "web env is not support";
                                i13 = iOptInt;
                                if (jSONArrayOptJSONArray2 != null) {
                                    arrayList2 = new ArrayList();
                                    i14 = 0;
                                    OptJSONArray = OptJSONArray;
                                    while (i14 < jSONArrayOptJSONArray2.length()) {
                                        JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i14);
                                        String strOptString11 = jSONObject.optString(str17);
                                        String strOptString12 = jSONObject.optString(JSON_KEY_HTML_URL);
                                        String strOptString13 = jSONObject.optString(str8);
                                        str10 = str9;
                                        String str34 = str7;
                                        r29 = OptJSONArray;
                                        JSONArray jSONArray4 = jSONArrayOptJSONArray2;
                                        i15 = i13;
                                        str11 = str5;
                                        String str35 = str8;
                                        String str36 = str17;
                                        str7 = str34;
                                        i16 = i12;
                                        campaign = CampaignEx.parseCampaign(jSONObjectOptJSONObject5, strOptString11, strOptString12, strOptString13, false, r29, str, jSONObject.optString(str34));
                                        if (campaign != null) {
                                            campaign.setNetAddress(strOptString3);
                                            campaign.setMof_tplid(i16);
                                            campaign.setMof_template_url(str11);
                                            i17 = i15;
                                            campaign.setNscpt(i17);
                                            campaign.setPv_urls(arrayList);
                                            campaign.setReq_ext_data(str6);
                                            campaign.setVcn(r29.getVcn());
                                            campaign.setTokenRule(r29.getTokenRule());
                                            campaign.setEncryptPrice(r29.getEncryptPrice());
                                            campaign.setAc_s(jSONObject.optInt(CampaignEx.KEY_ACTIVITY_CHECK_SWITCH, 1));
                                            arrayList2.add(campaign);
                                            r11 = r29;
                                        } else {
                                            r11 = r29;
                                            i17 = i15;
                                            r11.setMsg(str10);
                                        }
                                        i14++;
                                        str5 = str11;
                                        i12 = i16;
                                        str9 = str10;
                                        i13 = i17;
                                        jSONArrayOptJSONArray2 = jSONArray4;
                                        str8 = str35;
                                        str17 = str36;
                                        OptJSONArray = r11;
                                    }
                                    OptJSONArray.setAds(arrayList2);
                                }
                            }
                        } catch (Exception unused2) {
                        }
                    } catch (Exception unused3) {
                        OptJSONArray = obj;
                    }
                } catch (Exception unused4) {
                    OptJSONArray = campaignUnit2;
                }
                return OptJSONArray;
            } catch (Exception unused5) {
            }
        }
        return null;
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject) {
        return parseV5CampaignUnit(jSONObject, "");
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject, String str) {
        return parseCampaignUnit(jSONObject, str);
    }

    public abstract String assembCParams();

    public int getActivitySwitch() {
        return this.activitySwitch;
    }

    public String getAdHtml() {
        return this.adHtml;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdZip() {
        return this.adZip;
    }

    public ArrayList<CampaignEx> getAds() {
        return this.ads;
    }

    public String getBannerHtml() {
        return this.bannerHtml;
    }

    public String getBannerUrl() {
        return this.bannerUrl;
    }

    public String getCsp() {
        return this.csp;
    }

    public String getDomain() {
        return this.domain;
    }

    public double getEcppv() {
        return this.ecppv;
    }

    public String getEncryptPrice() {
        return this.encryptPrice;
    }

    public HashMap<String, String> getEpMap() {
        return this.epMap;
    }

    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    public String getIa_all_ext1() {
        return this.ia_all_ext1;
    }

    public String getIa_all_ext2() {
        return this.ia_all_ext2;
    }

    public String getIa_icon() {
        return this.ia_icon;
    }

    public int getIa_ori() {
        return this.ia_ori;
    }

    public int getIa_rst() {
        return this.ia_rst;
    }

    public String getIa_url() {
        return this.ia_url;
    }

    public int getJmDo() {
        return this.jmDo;
    }

    public List<Frame> getListFrames() {
        return this.listFrames;
    }

    public String getLocalRequestId() {
        return this.localRequestId;
    }

    public com.mbridge.msdk.foundation.same.report.metrics.c getMetricsData() {
        return this.metricsData;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getOnlyImpressionUrl() {
        return this.onlyImpressionUrl;
    }

    public String getParentSessionId() {
        return this.parentSessionId;
    }

    public String getRequestId() {
        try {
            if (!TextUtils.isEmpty(this.requestId)) {
                return this.requestId;
            }
            if (TextUtils.isEmpty(this.onlyImpressionUrl)) {
                return "";
            }
            Uri uri = Uri.parse(this.onlyImpressionUrl);
            if (uri != null) {
                this.requestId = uri.getQueryParameter(CampaignEx.JSON_KEY_AD_K);
            }
            return this.requestId;
        } catch (Exception unused) {
            return "";
        }
    }

    public HashMap<String, String> getRks() {
        return this.rks;
    }

    public int getSecondRequestIndex() {
        return this.secondRequestIndex;
    }

    public int getSecondShowIndex() {
        return this.secondShowIndex;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSh() {
        return this.f35156sh;
    }

    public int getTemplate() {
        return this.template;
    }

    public int getTokenRule() {
        int i11 = this.tokenRule;
        if (i11 == 1) {
            return i11;
        }
        return 0;
    }

    public String getUnitSize() {
        return this.unitSize;
    }

    public int getVcn() {
        int i11 = this.vcn;
        if (i11 > 1) {
            return i11;
        }
        return 1;
    }

    protected Object nullToEmpty(Object obj) {
        return obj == null ? "" : obj;
    }

    public void setActivitySwitch(int i11) {
        this.activitySwitch = i11;
    }

    public void setAdHtml(String str) {
        this.adHtml = str;
    }

    public void setAdType(int i11) {
        this.adType = i11;
    }

    public void setAdZip(String str) {
        this.adZip = str;
    }

    public void setAds(ArrayList<CampaignEx> arrayList) {
        this.ads = arrayList;
    }

    public void setBannerHtml(String str) {
        this.bannerHtml = str;
    }

    public void setBannerUrl(String str) {
        this.bannerUrl = str;
    }

    public void setCsp(String str) {
        this.csp = str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setEcppv(double d11) {
        this.ecppv = d11;
    }

    public void setEncryptPrice(String str) {
        this.encryptPrice = str;
    }

    public void setEpMap(HashMap<String, String> map) {
        this.epMap = map;
    }

    public void setHtmlUrl(String str) {
        this.htmlUrl = str;
    }

    public void setIa_all_ext1(String str) {
        this.ia_all_ext1 = str;
    }

    public void setIa_all_ext2(String str) {
        this.ia_all_ext2 = str;
    }

    public void setIa_icon(String str) {
        this.ia_icon = str;
    }

    public void setIa_ori(int i11) {
        this.ia_ori = i11;
    }

    public void setIa_rst(int i11) {
        this.ia_rst = i11;
    }

    public void setIa_url(String str) {
        this.ia_url = str;
    }

    public void setJmDo(int i11) {
        this.jmDo = i11;
    }

    public void setListFrames(List<Frame> list) {
        this.listFrames = list;
    }

    public void setLocalRequestId(String str) {
        this.localRequestId = str;
        Iterator<CampaignEx> it = getAds().iterator();
        while (it.hasNext()) {
            it.next().setLocalRequestId(str);
        }
    }

    public void setMetricsData(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        this.metricsData = cVar;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setOnlyImpressionUrl(String str) {
        this.onlyImpressionUrl = str;
    }

    public void setParentSessionId(String str) {
        this.parentSessionId = str;
    }

    public void setRks(HashMap<String, String> map) {
        this.rks = map;
    }

    public void setSecondRequestIndex(int i11) {
        this.secondRequestIndex = i11;
    }

    public void setSecondShowIndex(int i11) {
        this.secondShowIndex = i11;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSh(String str) {
        this.f35156sh = str;
    }

    public void setTemplate(int i11) {
        this.template = i11;
    }

    public void setTokenRule(int i11) {
        this.tokenRule = i11;
    }

    public void setUnitSize(String str) {
        this.unitSize = str;
    }

    public void setVcn(int i11) {
        this.vcn = i11;
    }
}
