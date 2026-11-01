package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okio.Utf8;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    private boolean AVc;
    private String Aw;
    private boolean Bml;
    private int Chv;
    private String DPc;
    private float Dq;
    private String EZ;
    private int Ei;
    private float EjP;
    private boolean FPG;
    private int Fm;
    private String Fmk;
    private int GMp;
    private String Gn;
    private int Grp;
    private boolean HS;
    private List<Sj> HcZ;
    private boolean HiB;
    private double HpB;
    private boolean IOh;
    private String Ir;
    private String JcM;
    private float Jcg;
    private String LD;
    private double LqL;
    private String Mts;
    private boolean MuB;
    private boolean Ov;
    private int Ph;
    private boolean QZ;
    private String RiZ;
    private double RrR;
    private JSONObject SP;
    private float Sj;
    private float TEQ;
    private int TFd;
    private float TKC;
    private int TO;
    private int TX;
    private String TzV;
    private int UHs;
    private int Uc;
    private String WMZ;
    private int Wjd;
    private int WxP;
    private String Xqg;
    private double Yf;
    private double Ym;
    private String Zq;
    private int aNB;
    private String aZ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private double f20872aa;
    private int cX;
    private JSONObject dLt;
    private String dNu;
    private int dU;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private boolean f20873db;
    private String dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private String f20874dx;
    private int eI;
    private int eMB;
    private String fF;
    private int gR;
    private JSONObject gY;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private int f20875gq;
    private long hif = -1;
    private int hzV;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private String f20876ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private int f20877jb;
    private String kF;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private int f20878kb;
    private int ley;
    private boolean liH;
    private int mZN;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private JSONObject f20879mj;
    private boolean nP;
    private int ndK;
    private String nou;
    private int nru;
    private boolean oWa;
    private boolean pfr;
    private boolean qRN;
    private float sP;
    private String sU;
    private boolean sdp;
    private String sef;
    private int tPD;
    private boolean tX;
    private int tY;

    /* JADX INFO: renamed from: tz, reason: collision with root package name */
    private int f20880tz;
    private float uA;
    private boolean uP;
    private String uvD;
    private float vS;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    private String f20881vb;
    private int wE;
    private int xD;
    private int xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private int f20882xu;
    private String xzt;
    private String zR;
    private int zwV;

    public static vS Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        vS vSVar = new vS();
        vSVar.sP(jSONObject.optString("adType", "embeded"));
        vSVar.Zq(jSONObject.optString("clickArea", "creative"));
        vSVar.uvD(jSONObject.optString("clickTigger", "click"));
        vSVar.TKC(jSONObject.optString(TtmlNode.ATTR_TTS_FONT_FAMILY, "PingFangSC"));
        vSVar.EjP(jSONObject.optString(TtmlNode.ATTR_TTS_TEXT_ALIGN, TtmlNode.LEFT));
        vSVar.HiB(jSONObject.optString(TtmlNode.ATTR_TTS_COLOR, "#999999"));
        vSVar.vS(jSONObject.optString("bgColor", TmcStartParams.KEY_TRANSPARENT));
        vSVar.Jcg(jSONObject.optString("bgImgUrl", ""));
        vSVar.ley(jSONObject.optString("bgImgData", ""));
        vSVar.Dq(jSONObject.optString("borderColor", "#000000"));
        vSVar.uA(jSONObject.optString("borderStyle", "solid"));
        vSVar.TEQ(jSONObject.optString("heightMode", "auto"));
        vSVar.Ym(jSONObject.optString("widthMode", "fixed"));
        vSVar.aa(jSONObject.optString("interactText", ""));
        vSVar.TKC(jSONObject.optBoolean("isShowBgControl", false));
        vSVar.Fmk(jSONObject.optString("interactBgColor", ""));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("interactPosition");
        if (jSONObjectOptJSONObject != null) {
            vSVar.Jcg(jSONObjectOptJSONObject.optInt("translateY", 0));
            vSVar.Dq(jSONObjectOptJSONObject.optInt("translateX", 0));
            vSVar.EjP(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
            vSVar.HiB(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
        }
        vSVar.sef(jSONObject.optString("interactType", ""));
        vSVar.HiB(jSONObject.optInt("interactSlideDirection", -1));
        vSVar.dNu(jSONObject.optString("justifyHorizontal", "space-around"));
        vSVar.TzV(jSONObject.optString("justifyVertical", "flex-start"));
        vSVar.sP(jSONObject.optDouble("timingStart"));
        vSVar.TKC(jSONObject.optDouble("timingEnd"));
        vSVar.EjP((float) jSONObject.optDouble("width", 0.0d));
        vSVar.TKC((float) jSONObject.optDouble("height", 0.0d));
        vSVar.Sj((float) jSONObject.optDouble("borderRadius", 0.0d));
        vSVar.sP((float) jSONObject.optDouble("borderSize", 0.0d));
        vSVar.sP(jSONObject.optBoolean("interactValidate", false));
        vSVar.uA((float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, 0.0d));
        vSVar.HiB((float) jSONObject.optDouble("paddingBottom", 0.0d));
        vSVar.vS((float) jSONObject.optDouble("paddingLeft", 0.0d));
        vSVar.Jcg((float) jSONObject.optDouble("paddingRight", 0.0d));
        vSVar.Dq((float) jSONObject.optDouble("paddingTop", 0.0d));
        vSVar.EjP(jSONObject.optBoolean("lineFeed", false));
        vSVar.uA(jSONObject.optInt("lineCount", 0));
        vSVar.vS(jSONObject.optDouble("lineHeight", 1.2d));
        vSVar.sef(jSONObject.optInt("letterSpacing", 0));
        vSVar.HiB(jSONObject.optBoolean("isDataFixed", false));
        vSVar.Zq(jSONObject.optInt(TtmlNode.ATTR_TTS_FONT_WEIGHT));
        vSVar.vS(jSONObject.optBoolean("lineLimit"));
        vSVar.uvD(jSONObject.optInt(RequestParameters.POSITION));
        vSVar.RiZ(jSONObject.optString("align"));
        vSVar.Jcg(jSONObject.optBoolean("useLeft"));
        vSVar.Dq(jSONObject.optBoolean("useRight"));
        vSVar.uA(jSONObject.optBoolean("useTop"));
        vSVar.TEQ(jSONObject.optBoolean("useBottom"));
        vSVar.sU(jSONObject.optString("data"));
        vSVar.sP(jSONObject.optJSONObject("i18n"));
        vSVar.aa(jSONObject.optInt("marginLeft"));
        vSVar.Fmk(jSONObject.optInt("marginRight"));
        vSVar.TEQ(jSONObject.optInt("marginTop"));
        vSVar.Ym(jSONObject.optInt("marginBottom"));
        vSVar.dNu(jSONObject.optInt("tagMaxCount"));
        vSVar.Ym(jSONObject.optBoolean("allowTextFlow"));
        vSVar.TzV(jSONObject.optInt("textFlowType"));
        vSVar.RiZ(jSONObject.optInt("textFlowDuration"));
        vSVar.sU(jSONObject.optInt(TtmlNode.LEFT));
        vSVar.dx(jSONObject.optInt(TtmlNode.RIGHT));
        vSVar.zR(jSONObject.optInt(IntegrationConstants.TAB_BAR_POSITION_TOP));
        vSVar.ib(jSONObject.optInt(IntegrationConstants.TAB_BAR_POSITION_DEFAULT));
        vSVar.dx(jSONObject.optString("alignItems", "flex-start"));
        vSVar.zR(jSONObject.optString("direction", ""));
        vSVar.Sj(jSONObject.optBoolean("loop", false));
        vSVar.kF(jSONObject.optInt("zIndex"));
        vSVar.Yf(jSONObject.optInt("interactVisibleTime"));
        vSVar.uP(jSONObject.optInt("interactHiddenTime"));
        vSVar.Fmk(jSONObject.optBoolean("interactEnableMask"));
        vSVar.sef(jSONObject.optBoolean("interactWontHide"));
        vSVar.Sj(jSONObject.optString("bgGradient"));
        vSVar.fF(jSONObject.optInt("areaType"));
        vSVar.JcM(jSONObject.optInt("interactSlideThreshold", 0));
        vSVar.FPG(jSONObject.optInt("interactBottomDistance", com.bytedance.sdk.component.adexpress.EjP.sP() ? 0 : 120));
        vSVar.TzV(jSONObject.optBoolean("openPlayableLandingPage", false));
        vSVar.TKC(jSONObject.optJSONObject("video"));
        vSVar.EjP(jSONObject.optJSONObject("image"));
        vSVar.WMZ(jSONObject.optInt("borderShadowExtent"));
        vSVar.Zq(jSONObject.optBoolean("bgGauseBlur"));
        vSVar.Mts(jSONObject.optInt("bgGauseBlurRadius"));
        vSVar.uvD(jSONObject.optBoolean("showTimeProgress", false));
        vSVar.dNu(jSONObject.optBoolean("showPlayButton", false));
        vSVar.Sj(jSONObject.optDouble("bgColorCg", 0.0d));
        vSVar.vS(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        vSVar.sP(jSONObject.optInt("borderTopLeftRadius", 0));
        vSVar.Sj(jSONObject.optInt("borderTopRightRadius", 0));
        vSVar.EjP(jSONObject.optInt("borderBottomLeftRadius", 0));
        vSVar.TKC(jSONObject.optInt("borderBottomRightRadius", 0));
        vSVar.HiB(jSONObject.optJSONObject("interactI18n"));
        vSVar.kF(jSONObject.optString("imageObjectFit"));
        vSVar.uP(jSONObject.optString("interactTitle"));
        vSVar.LD(jSONObject.optInt("interactTextPositionTop"));
        vSVar.ib(jSONObject.optString("imageLottieTosPath"));
        vSVar.aa(jSONObject.optBoolean("animationsLoop"));
        vSVar.wE(jSONObject.optInt("lottieAppNameMaxLength"));
        vSVar.LqL(jSONObject.optInt("lottieAdDescMaxLength"));
        vSVar.ley(jSONObject.optInt("lottieAdTitleMaxLength"));
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animations");
            if (jSONArrayOptJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i11);
                    Sj sj2 = new Sj();
                    sj2.TKC(jSONObject2.optString("animationType"));
                    sj2.Sj(jSONObject2.optDouble("animationDuration"));
                    sj2.sP(jSONObject2.optDouble("animationScaleX"));
                    sj2.TKC(jSONObject2.optDouble("animationScaleY"));
                    sj2.EjP(jSONObject2.optString("animationTimeFunction"));
                    sj2.EjP(jSONObject2.optDouble("animationDelay"));
                    sj2.vS(jSONObject2.optInt("animationIterationCount"));
                    sj2.HiB(jSONObject2.optString("animationDirection"));
                    sj2.HiB(jSONObject2.optDouble("animationInterval"));
                    sj2.Sj(jSONObject2.optInt("animationBorderWidth"));
                    sj2.Sj(jSONObject2.optLong("key"));
                    sj2.sP(jSONObject2.optInt("animationEffectWidth"));
                    sj2.TKC(jSONObject2.optInt("animationSwing", 1));
                    sj2.EjP(jSONObject2.optInt("animationTranslateX"));
                    sj2.HiB(jSONObject2.optInt("animationTranslateY"));
                    sj2.sP(jSONObject2.optString("animationRippleBackgroundColor"));
                    sj2.Sj(jSONObject2.optString("animationScaleDirection"));
                    sj2.Jcg(jSONObject2.optInt("animationFadeStart"));
                    sj2.Dq(jSONObject2.optInt("animationFadeEnd"));
                    sj2.vS(jSONObject2.optString("animationFillMode"));
                    sj2.uA(jSONObject2.optInt("animationBounceHeight"));
                    if (vSVar.RiZ() > 0.0d) {
                        sj2.EjP(sj2.sef() + vSVar.RiZ());
                    }
                    arrayList.add(sj2);
                }
                vSVar.Sj(arrayList);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                vSVar.wE(jSONObject.optString("triggerSlideDirection", "0"));
                vSVar.Sj(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
        } catch (Exception unused) {
        }
        return vSVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void Sj(vS vSVar, JSONObject jSONObject) {
        if (vSVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            next.hashCode();
            byte b11 = -1;
            switch (next.hashCode()) {
                case -2067713583:
                    if (next.equals("isShowBgControl")) {
                        b11 = 0;
                    }
                    break;
                case -1965619659:
                    if (next.equals("clickArea")) {
                        b11 = 1;
                    }
                    break;
                case -1912831834:
                    if (next.equals("triggerSlideDirection")) {
                        b11 = 2;
                    }
                    break;
                case -1885934767:
                    if (next.equals("bgImgUrl")) {
                        b11 = 3;
                    }
                    break;
                case -1822062213:
                    if (next.equals("lineCount")) {
                        b11 = 4;
                    }
                    break;
                case -1821293778:
                    if (next.equals("openPlayableLandingPage")) {
                        b11 = 5;
                    }
                    break;
                case -1813937113:
                    if (next.equals("lineLimit")) {
                        b11 = 6;
                    }
                    break;
                case -1578250488:
                    if (next.equals("interactBgColor")) {
                        b11 = 7;
                    }
                    break;
                case -1501175880:
                    if (next.equals("paddingLeft")) {
                        b11 = 8;
                    }
                    break;
                case -1422965251:
                    if (next.equals("adType")) {
                        b11 = 9;
                    }
                    break;
                case -1383228885:
                    if (next.equals(IntegrationConstants.TAB_BAR_POSITION_DEFAULT)) {
                        b11 = 10;
                    }
                    break;
                case -1224696685:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        b11 = 11;
                    }
                    break;
                case -1221029593:
                    if (next.equals("height")) {
                        b11 = 12;
                    }
                    break;
                case -1065511464:
                    if (next.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        b11 = 13;
                    }
                    break;
                case -1063257157:
                    if (next.equals("alignItems")) {
                        b11 = 14;
                    }
                    break;
                case -1046708884:
                    if (next.equals("interactValidate")) {
                        b11 = 15;
                    }
                    break;
                case -1044792121:
                    if (next.equals("marginTop")) {
                        b11 = 16;
                    }
                    break;
                case -1019884910:
                    if (next.equals("useBottom")) {
                        b11 = 17;
                    }
                    break;
                case -1005195314:
                    if (next.equals("triggerSlideMinDistance")) {
                        b11 = 18;
                    }
                    break;
                case -962590849:
                    if (next.equals("direction")) {
                        b11 = 19;
                    }
                    break;
                case -912366651:
                    if (next.equals("tagMaxCount")) {
                        b11 = 20;
                    }
                    break;
                case -848877971:
                    if (next.equals("interactHiddenTime")) {
                        b11 = 21;
                    }
                    break;
                case -836058546:
                    if (next.equals("useTop")) {
                        b11 = 22;
                    }
                    break;
                case -734428249:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        b11 = 23;
                    }
                    break;
                case -731417480:
                    if (next.equals("zIndex")) {
                        b11 = 24;
                    }
                    break;
                case -709393864:
                    if (next.equals("timingStart")) {
                        b11 = 25;
                    }
                    break;
                case -515807685:
                    if (next.equals("lineHeight")) {
                        b11 = 26;
                    }
                    break;
                case -321658193:
                    if (next.equals("textFlowDuration")) {
                        b11 = 27;
                    }
                    break;
                case -295409451:
                    if (next.equals("useRight")) {
                        b11 = 28;
                    }
                    break;
                case -289173127:
                    if (next.equals("marginBottom")) {
                        b11 = 29;
                    }
                    break;
                case -204859874:
                    if (next.equals("bgColor")) {
                        b11 = 30;
                    }
                    break;
                case -148259282:
                    if (next.equals("useLeft")) {
                        b11 = 31;
                    }
                    break;
                case -51738487:
                    if (next.equals("widthMode")) {
                        b11 = 32;
                    }
                    break;
                case 115029:
                    if (next.equals(IntegrationConstants.TAB_BAR_POSITION_TOP)) {
                        b11 = 33;
                    }
                    break;
                case 3076010:
                    if (next.equals("data")) {
                        b11 = 34;
                    }
                    break;
                case 3317767:
                    if (next.equals(TtmlNode.LEFT)) {
                        b11 = 35;
                    }
                    break;
                case 3327652:
                    if (next.equals("loop")) {
                        b11 = 36;
                    }
                    break;
                case 90130308:
                    if (next.equals("paddingTop")) {
                        b11 = 37;
                    }
                    break;
                case 92903173:
                    if (next.equals("align")) {
                        b11 = 38;
                    }
                    break;
                case 94842723:
                    if (next.equals(TtmlNode.ATTR_TTS_COLOR)) {
                        b11 = 39;
                    }
                    break;
                case 108511772:
                    if (next.equals(TtmlNode.RIGHT)) {
                        b11 = 40;
                    }
                    break;
                case 113126854:
                    if (next.equals("width")) {
                        b11 = 41;
                    }
                    break;
                case 164611121:
                    if (next.equals("timingEnd")) {
                        b11 = 42;
                    }
                    break;
                case 202355100:
                    if (next.equals("paddingBottom")) {
                        b11 = 43;
                    }
                    break;
                case 247204452:
                    if (next.equals("allowTextFlow")) {
                        b11 = 44;
                    }
                    break;
                case 302841174:
                    if (next.equals("interactWontHide")) {
                        b11 = 45;
                    }
                    break;
                case 365601008:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        b11 = 46;
                    }
                    break;
                case 428975654:
                    if (next.equals("justifyVertical")) {
                        b11 = 47;
                    }
                    break;
                case 439444041:
                    if (next.equals("interactVisibleTime")) {
                        b11 = 48;
                    }
                    break;
                case 713848971:
                    if (next.equals("paddingRight")) {
                        b11 = 49;
                    }
                    break;
                case 722830999:
                    if (next.equals("borderColor")) {
                        b11 = 50;
                    }
                    break;
                case 737768677:
                    if (next.equals("borderStyle")) {
                        b11 = 51;
                    }
                    break;
                case 747804969:
                    if (next.equals(RequestParameters.POSITION)) {
                        b11 = 52;
                    }
                    break;
                case 791643104:
                    if (next.equals("isDataFixed")) {
                        b11 = 53;
                    }
                    break;
                case 975087886:
                    if (next.equals("marginRight")) {
                        b11 = 54;
                    }
                    break;
                case 1110826708:
                    if (next.equals("justifyHorizontal")) {
                        b11 = 55;
                    }
                    break;
                case 1122368895:
                    if (next.equals("interactPosition")) {
                        b11 = 56;
                    }
                    break;
                case 1188229042:
                    if (next.equals("lineFeed")) {
                        b11 = 57;
                    }
                    break;
                case 1332036739:
                    if (next.equals("interactText")) {
                        b11 = 58;
                    }
                    break;
                case 1332055696:
                    if (next.equals("interactType")) {
                        b11 = 59;
                    }
                    break;
                case 1349188574:
                    if (next.equals("borderRadius")) {
                        b11 = 60;
                    }
                    break;
                case 1360828714:
                    if (next.equals("clickTigger")) {
                        b11 = 61;
                    }
                    break;
                case 1490178922:
                    if (next.equals("heightMode")) {
                        b11 = 62;
                    }
                    break;
                case 1761274325:
                    if (next.equals("textFlowType")) {
                        b11 = Utf8.REPLACEMENT_BYTE;
                    }
                    break;
                case 1824903757:
                    if (next.equals("borderSize")) {
                        b11 = 64;
                    }
                    break;
                case 1970934485:
                    if (next.equals("marginLeft")) {
                        b11 = 65;
                    }
                    break;
                case 2111078717:
                    if (next.equals("letterSpacing")) {
                        b11 = 66;
                    }
                    break;
            }
            switch (b11) {
                case 0:
                    vSVar.TKC(jSONObject.optBoolean(next, false));
                    break;
                case 1:
                    vSVar.Zq(jSONObject.optString(next));
                    break;
                case 2:
                    vSVar.wE(jSONObject.optString(next));
                    break;
                case 3:
                    vSVar.Jcg(jSONObject.optString(next));
                    break;
                case 4:
                    vSVar.uA(jSONObject.optInt(next));
                    break;
                case 5:
                    vSVar.TzV(jSONObject.optBoolean(next));
                    break;
                case 6:
                    vSVar.vS(jSONObject.optBoolean(next));
                    break;
                case 7:
                    vSVar.Fmk(jSONObject.optString(next));
                    break;
                case 8:
                    vSVar.vS((float) jSONObject.optDouble(next));
                    break;
                case 9:
                    vSVar.sP(jSONObject.optString(next));
                    break;
                case 10:
                    vSVar.ib(jSONObject.optInt(next));
                    break;
                case 11:
                    vSVar.TKC(jSONObject.optString(next));
                    break;
                case 12:
                    vSVar.TKC((float) jSONObject.optDouble(next));
                    break;
                case 13:
                    vSVar.EjP(jSONObject.optString(next));
                    break;
                case 14:
                    vSVar.dx(jSONObject.optString(next));
                    break;
                case 15:
                    vSVar.sP(jSONObject.optBoolean(next));
                    break;
                case 16:
                    vSVar.TEQ(jSONObject.optInt(next));
                    break;
                case 17:
                    vSVar.TEQ(jSONObject.optBoolean(next));
                    break;
                case 18:
                    vSVar.Sj(jSONObject.optLong(next));
                    break;
                case 19:
                    vSVar.zR(jSONObject.optString(next));
                    break;
                case 20:
                    vSVar.dNu(jSONObject.optInt(next));
                    break;
                case 21:
                    vSVar.uP(jSONObject.optInt(next));
                    break;
                case 22:
                    vSVar.uA(jSONObject.optBoolean(next));
                    break;
                case 23:
                    vSVar.Zq(jSONObject.optInt(next));
                    break;
                case 24:
                    vSVar.kF(jSONObject.optInt(next));
                    break;
                case 25:
                    vSVar.sP(jSONObject.optDouble(next));
                    break;
                case 26:
                    vSVar.vS(jSONObject.optDouble(next));
                    break;
                case 27:
                    vSVar.RiZ(jSONObject.optInt(next));
                    break;
                case 28:
                    vSVar.Dq(jSONObject.optBoolean(next));
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    vSVar.Ym(jSONObject.optInt(next));
                    break;
                case 30:
                    vSVar.vS(jSONObject.optString(next));
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    vSVar.Jcg(jSONObject.optBoolean(next));
                    break;
                case 32:
                    vSVar.Ym(jSONObject.optString(next));
                    break;
                case 33:
                    vSVar.zR(jSONObject.optInt(next));
                    break;
                case 34:
                    vSVar.sU(jSONObject.optString(next));
                    break;
                case 35:
                    vSVar.sU(jSONObject.optInt(next));
                    break;
                case 36:
                    vSVar.Sj(jSONObject.optBoolean(next));
                    break;
                case 37:
                    vSVar.Dq((float) jSONObject.optDouble(next));
                    break;
                case 38:
                    vSVar.RiZ(jSONObject.optString(next));
                    break;
                case 39:
                    vSVar.HiB(jSONObject.optString(next));
                    break;
                case 40:
                    vSVar.dx(jSONObject.optInt(next));
                    break;
                case 41:
                    vSVar.EjP((float) jSONObject.optDouble(next));
                    break;
                case 42:
                    vSVar.TKC(jSONObject.optDouble(next));
                    break;
                case 43:
                    vSVar.HiB((float) jSONObject.optDouble(next));
                    break;
                case 44:
                    vSVar.Ym(jSONObject.optBoolean(next));
                    break;
                case 45:
                    vSVar.sef(jSONObject.optBoolean(next));
                    break;
                case 46:
                    vSVar.uA((float) jSONObject.optDouble(next));
                    break;
                case 47:
                    vSVar.TzV(jSONObject.optString(next));
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    vSVar.Yf(jSONObject.optInt(next));
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    vSVar.Jcg((float) jSONObject.optDouble(next));
                    break;
                case 50:
                    vSVar.Dq(jSONObject.optString(next));
                    break;
                case AD_REWARD_USER_VALUE:
                    vSVar.uA(jSONObject.optString(next));
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    vSVar.uvD(jSONObject.optInt(next));
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    vSVar.HiB(jSONObject.optBoolean(next));
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    vSVar.Fmk(jSONObject.optInt(next));
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    vSVar.dNu(jSONObject.optString(next));
                    break;
                case AD_VISIBILITY_VALUE:
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                    if (jSONObjectOptJSONObject != null) {
                        vSVar.Jcg(jSONObjectOptJSONObject.optInt("translateY", 0));
                        vSVar.Dq(jSONObjectOptJSONObject.optInt("translateX", 0));
                        vSVar.EjP(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
                        vSVar.HiB(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
                    }
                    break;
                case 57:
                    vSVar.EjP(jSONObject.optBoolean(next));
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    vSVar.aa(jSONObject.optString(next));
                    break;
                case 59:
                    vSVar.sef(jSONObject.optString(next));
                    break;
                case 60:
                    vSVar.Sj((float) jSONObject.optDouble(next));
                    break;
                case 61:
                    vSVar.uvD(jSONObject.optString(next));
                    break;
                case 62:
                    vSVar.TEQ(jSONObject.optString(next));
                    break;
                case 63:
                    vSVar.TzV(jSONObject.optInt(next));
                    break;
                case 64:
                    vSVar.sP((float) jSONObject.optDouble(next));
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    vSVar.aa(jSONObject.optInt(next));
                    break;
                case 66:
                    vSVar.sef(jSONObject.optInt(next));
                    break;
            }
        }
    }

    private void ley(String str) {
        this.Gn = str;
    }

    public boolean AVc() {
        return this.tX;
    }

    public boolean Aw() {
        return this.AVc;
    }

    public boolean Bml() {
        return this.MuB;
    }

    public boolean Chv() {
        return this.sdp;
    }

    public String DPc() {
        return this.xzt;
    }

    public double Dq() {
        return this.RrR;
    }

    public void Dq(float f11) {
        this.uA = f11;
    }

    public void Dq(int i11) {
        this.ley = i11;
    }

    public void Dq(String str) {
        this.RiZ = str;
    }

    public void Dq(boolean z10) {
        this.MuB = z10;
    }

    public int EZ() {
        return this.UHs;
    }

    public String Ei() {
        return this.Mts;
    }

    public int EjP() {
        return this.hzV;
    }

    public void EjP(double d11) {
        this.LqL = d11;
    }

    public void EjP(float f11) {
        this.EjP = f11;
    }

    public void EjP(int i11) {
        this.TX = i11;
    }

    public void EjP(String str) {
        this.Zq = str;
    }

    public void EjP(JSONObject jSONObject) {
        this.dLt = jSONObject;
    }

    public void EjP(boolean z10) {
        this.FPG = z10;
    }

    public double FPG() {
        return this.Yf;
    }

    public void FPG(int i11) {
        this.tY = i11;
    }

    public String Fm() {
        return this.JcM;
    }

    public void Fmk(int i11) {
        this.Ei = i11;
    }

    public void Fmk(String str) {
        this.kF = str;
    }

    public void Fmk(boolean z10) {
        this.tX = z10;
    }

    public boolean Fmk() {
        return this.HiB;
    }

    public boolean GMp() {
        return this.QZ;
    }

    public int Grp() {
        return this.tY;
    }

    public int HS() {
        return this.f20878kb;
    }

    public String HcZ() {
        return this.Ir;
    }

    public int HiB() {
        return this.TX;
    }

    public void HiB(double d11) {
        this.Yf = d11;
    }

    public void HiB(float f11) {
        this.vS = f11;
    }

    public void HiB(int i11) {
        this.zwV = i11;
    }

    public void HiB(String str) {
        this.uvD = str;
    }

    public void HiB(JSONObject jSONObject) {
        this.f20879mj = jSONObject;
    }

    public void HiB(boolean z10) {
        this.f20873db = z10;
    }

    public boolean HpB() {
        return this.FPG;
    }

    public int IOh() {
        return this.ndK;
    }

    public int Ir() {
        return this.aNB;
    }

    public int JcM() {
        return this.wE;
    }

    public void JcM(int i11) {
        this.eMB = i11;
    }

    public int Jcg() {
        return this.zwV;
    }

    public void Jcg(float f11) {
        this.Dq = f11;
    }

    public void Jcg(int i11) {
        this.wE = i11;
    }

    public void Jcg(String str) {
        this.TzV = str;
    }

    public void Jcg(boolean z10) {
        this.sdp = z10;
    }

    public String LD() {
        return this.kF;
    }

    public void LD(int i11) {
        this.Grp = i11;
    }

    public String LqL() {
        return this.zR;
    }

    public void LqL(int i11) {
        this.dU = i11;
    }

    public double Mts() {
        return this.LqL;
    }

    public void Mts(int i11) {
        this.eI = i11;
    }

    public boolean MuB() {
        return this.f20873db;
    }

    public JSONObject Ov() {
        return this.dLt;
    }

    public int Ph() {
        return this.TO;
    }

    public boolean QZ() {
        return this.Ov;
    }

    public double RiZ() {
        return this.Ym;
    }

    public void RiZ(int i11) {
        this.cX = i11;
    }

    public void RiZ(String str) {
        this.dwU = str;
    }

    public int RrR() {
        return this.mZN;
    }

    public boolean SP() {
        return this.oWa;
    }

    public void Sj(double d11) {
        this.RrR = d11;
    }

    public void Sj(float f11) {
        this.Sj = f11;
    }

    public void Sj(int i11) {
        this.Ph = i11;
    }

    public void Sj(long j11) {
        this.hif = j11;
    }

    public void Sj(String str) {
        this.nou = str;
    }

    public void Sj(List<Sj> list) {
        this.HcZ = list;
    }

    public void Sj(boolean z10) {
        this.HS = z10;
    }

    public boolean Sj() {
        return this.HS;
    }

    public String TEQ() {
        return this.nou;
    }

    public void TEQ(int i11) {
        this.xD = i11;
    }

    public void TEQ(String str) {
        this.f20874dx = str;
    }

    public void TEQ(boolean z10) {
        this.pfr = z10;
    }

    public int TFd() {
        return this.f20882xu;
    }

    public int TKC() {
        return this.GMp;
    }

    public void TKC(double d11) {
        this.f20872aa = d11;
    }

    public void TKC(float f11) {
        this.TKC = f11;
    }

    public void TKC(int i11) {
        this.hzV = i11;
    }

    public void TKC(String str) {
        this.sef = str;
    }

    public void TKC(JSONObject jSONObject) {
        this.SP = jSONObject;
    }

    public void TKC(boolean z10) {
        this.uP = z10;
    }

    public int TO() {
        return this.TFd;
    }

    public boolean TX() {
        return this.nP;
    }

    public float TzV() {
        return this.TEQ;
    }

    public void TzV(int i11) {
        this.aNB = i11;
    }

    public void TzV(String str) {
        this.Mts = str;
    }

    public void TzV(boolean z10) {
        this.AVc = z10;
    }

    public int UHs() {
        return this.Ei;
    }

    public JSONObject Uc() {
        return this.gY;
    }

    public int WMZ() {
        return this.ley;
    }

    public void WMZ(int i11) {
        this.TO = i11;
    }

    public String Wjd() {
        return this.LD;
    }

    public void WxP() {
        Sj(this, this.SP);
    }

    public List<Sj> Xqg() {
        return this.HcZ;
    }

    public String Yf() {
        return this.f20876ib;
    }

    public void Yf(int i11) {
        this.mZN = i11;
    }

    public float Ym() {
        return this.Sj;
    }

    public void Ym(int i11) {
        this.Fm = i11;
    }

    public void Ym(String str) {
        this.zR = str;
    }

    public void Ym(boolean z10) {
        this.Bml = z10;
    }

    public float Zq() {
        return this.Jcg;
    }

    public void Zq(int i11) {
        this.ndK = i11;
    }

    public void Zq(String str) {
        this.fF = str;
    }

    public void Zq(boolean z10) {
        this.QZ = z10;
    }

    public boolean aNB() {
        return this.IOh;
    }

    public int aZ() {
        return this.cX;
    }

    public float aa() {
        return this.sP;
    }

    public void aa(int i11) {
        this.f20877jb = i11;
    }

    public void aa(String str) {
        this.f20876ib = str;
    }

    public void aa(boolean z10) {
        this.Ov = z10;
    }

    public boolean cX() {
        return this.pfr;
    }

    public String dLt() {
        return this.f20881vb;
    }

    public float dNu() {
        return this.uA;
    }

    public void dNu(int i11) {
        this.Chv = i11;
    }

    public void dNu(String str) {
        this.WMZ = str;
    }

    public void dNu(boolean z10) {
        this.liH = z10;
    }

    public void dU() {
        Sj(this, this.dLt);
    }

    public int db() {
        return this.xD;
    }

    public double dwU() {
        return this.HpB;
    }

    public String dx() {
        return this.Zq;
    }

    public void dx(int i11) {
        this.Uc = i11;
    }

    public void dx(String str) {
        this.Ir = str;
    }

    public String eI() {
        return this.Aw;
    }

    public int eMB() {
        return this.f20880tz;
    }

    public void fF(int i11) {
        this.nru = i11;
    }

    public boolean fF() {
        return this.uP;
    }

    public boolean gR() {
        return this.Bml;
    }

    public String gY() {
        return this.dwU;
    }

    public int gq() {
        return this.eMB;
    }

    public int hzV() {
        return this.eI;
    }

    public String ib() {
        return this.dNu;
    }

    public void ib(int i11) {
        this.gR = i11;
    }

    public void ib(String str) {
        this.Aw = str;
    }

    public String jb() {
        return this.WMZ;
    }

    public String kF() {
        return this.TzV;
    }

    public void kF(int i11) {
        this.f20880tz = i11;
    }

    public void kF(String str) {
        this.f20881vb = str;
    }

    public String kb() {
        return this.EZ;
    }

    public String ley() {
        return this.f20874dx;
    }

    public void ley(int i11) {
        this.WxP = i11;
    }

    public int liH() {
        return this.WxP;
    }

    public int mZN() {
        return this.gR;
    }

    public int mj() {
        return this.nru;
    }

    public int nP() {
        return this.tPD;
    }

    public int ndK() {
        return this.Fm;
    }

    public String nru() {
        return this.aZ;
    }

    public int oWa() {
        List<Sj> list = this.HcZ;
        if (list == null) {
            return 0;
        }
        for (Sj sj2 : list) {
            if ("translate".equals(sj2.uA()) && sj2.Jcg() < 0) {
                return -sj2.Jcg();
            }
        }
        return 0;
    }

    public boolean pfr() {
        return this.qRN;
    }

    public int qRN() {
        return this.f20877jb;
    }

    public int sP() {
        return this.Ph;
    }

    public void sP(double d11) {
        this.Ym = d11;
    }

    public void sP(float f11) {
        this.sP = f11;
    }

    public void sP(int i11) {
        this.GMp = i11;
    }

    public void sP(String str) {
        this.Fmk = str;
    }

    public void sP(JSONObject jSONObject) {
        this.gY = jSONObject;
    }

    public void sP(boolean z10) {
        this.HiB = z10;
    }

    public double sU() {
        return this.f20872aa;
    }

    public void sU(int i11) {
        this.f20878kb = i11;
    }

    public void sU(String str) {
        this.EZ = str;
    }

    public int sdp() {
        return this.xhi;
    }

    public float sef() {
        return this.vS;
    }

    public void sef(int i11) {
        this.xhi = i11;
    }

    public void sef(String str) {
        this.LD = str;
    }

    public void sef(boolean z10) {
        this.oWa = z10;
    }

    public String tPD() {
        return this.DPc;
    }

    public String tX() {
        return this.Xqg;
    }

    public int tY() {
        return this.dU;
    }

    public int tz() {
        return this.Uc;
    }

    public int uA() {
        return this.f20875gq;
    }

    public void uA(float f11) {
        this.TEQ = f11;
    }

    public void uA(int i11) {
        this.Wjd = i11;
    }

    public void uA(String str) {
        this.sU = str;
    }

    public void uA(boolean z10) {
        this.IOh = z10;
    }

    public String uP() {
        return this.Gn;
    }

    public void uP(int i11) {
        this.TFd = i11;
    }

    public void uP(String str) {
        this.DPc = str;
    }

    public float uvD() {
        return this.Dq;
    }

    public void uvD(int i11) {
        this.UHs = i11;
    }

    public void uvD(String str) {
        this.JcM = str;
    }

    public void uvD(boolean z10) {
        this.nP = z10;
    }

    public JSONObject vS() {
        return this.f20879mj;
    }

    public void vS(double d11) {
        this.HpB = d11;
    }

    public void vS(float f11) {
        this.Jcg = f11;
    }

    public void vS(int i11) {
        this.f20875gq = i11;
    }

    public void vS(String str) {
        this.dNu = str;
    }

    public void vS(boolean z10) {
        this.qRN = z10;
    }

    public boolean vb() {
        return this.liH;
    }

    public String wE() {
        return this.RiZ;
    }

    public void wE(int i11) {
        this.tPD = i11;
    }

    public void wE(String str) {
        this.xzt = str;
    }

    public String xD() {
        return this.fF;
    }

    public int xhi() {
        return this.Wjd;
    }

    public int xu() {
        return this.Chv;
    }

    public long xzt() {
        return this.hif;
    }

    public String zR() {
        return this.uvD;
    }

    public void zR(int i11) {
        this.f20882xu = i11;
    }

    public void zR(String str) {
        this.aZ = str;
    }

    public int zwV() {
        return this.Grp;
    }
}
