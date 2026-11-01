package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.bytedance.sdk.component.utils.ib;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Ym {
    private static final Set<String> Sj = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));
    private static String sP;

    private static sP.TKC Sj(sP.TKC tkc, String str, String str2, String str3) {
        if (str.contains("union")) {
            tkc.Sj = 0.0f;
            tkc.sP = 0.0f;
        } else {
            if (TextUtils.isEmpty(str3)) {
                str3 = Sj(str);
            }
            if (!TextUtils.isEmpty(str3)) {
                return Sj(str3, str2);
            }
            tkc.Sj = 0.0f;
            tkc.sP = 0.0f;
        }
        return tkc;
    }

    public static sP.TKC Sj(String str, String str2) {
        return Sj(str, str2, false);
    }

    /* JADX WARN: Code duplicated, block: B:227:0x0462  */
    /* JADX WARN: Code duplicated, block: B:230:0x0471 A[Catch: Exception -> 0x0482, TryCatch #6 {Exception -> 0x0482, blocks: (B:228:0x0466, B:230:0x0471, B:235:0x047b), top: B:294:0x0466 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x0477 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:234:0x047a  */
    /* JADX WARN: Type inference failed for: r10v21, types: [com.bytedance.sdk.component.adexpress.dynamic.HiB.sP$TKC, float] */
    public static sP.TKC Sj(String str, String str2, String str3, boolean z10, boolean z11, int i11, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, double d11, int i12, double d12, String str4, Fmk fmk) {
        int i13;
        int i14;
        int i15;
        float f11;
        float f12;
        sP.TKC tkcSj;
        int i16;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB;
        String strOptString = str;
        String strEjP = fmk.EjP();
        int iJcg = fmk.Jcg();
        if (com.bytedance.sdk.component.adexpress.EjP.sP() && i12 != 4 && (TextUtils.equals(str2, "text_star") || TextUtils.equals(str2, "score-count") || TextUtils.equals(str2, "score-count-type-1") || TextUtils.equals(str2, "score-count-type-2"))) {
            return new sP.TKC(0.0f, 0.0f);
        }
        sP.TKC tkc = new sP.TKC();
        if (!strOptString.startsWith("<svg") && !Sj.contains(str2)) {
            if ("logo".equals(str2)) {
                if (!com.bytedance.sdk.component.adexpress.EjP.sP() && ((!TextUtils.isEmpty(str) && strOptString.contains("adx:")) || sP())) {
                    return sP() ? Sj(tkc, strOptString, str3, sP) : Sj(tkc, strOptString, str3, "");
                }
                tkc.Sj = "union".equals(strOptString) ? 14.0f : 20.0f;
                tkc.sP = 10.0f;
                if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    String strWE = fmk.wE();
                    if ("union".equals(strOptString) && TextUtils.isEmpty(strWE)) {
                        tkc.Sj = 0.0f;
                    }
                    String str5 = str2 + strOptString;
                    float fSP = (float) sP(str3);
                    if (str5.contains("logoad")) {
                        String strLey = fmk.ley();
                        if (!TextUtils.isEmpty(strLey)) {
                            return Sj(strLey, str3);
                        }
                        tkc.Sj = 0.0f;
                    }
                    tkc.sP = fSP;
                }
                return tkc;
            }
            if ("development-name".equals(str2)) {
                strOptString = ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_text_privacy_development") + strOptString;
            }
            if ("app-version".equals(str2)) {
                strOptString = ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_text_privacy_app_version") + strOptString;
            }
            if ("score-count".equals(str2)) {
                try {
                    i13 = Integer.parseInt(strOptString);
                } catch (NumberFormatException unused) {
                    i13 = 0;
                }
                if (com.bytedance.sdk.component.adexpress.EjP.sP() && i13 < 0) {
                    return new sP.TKC(0.0f, 0.0f);
                }
                return Sj("(" + String.format(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_comment_num"), Integer.valueOf(i13)) + ")", str3);
            }
            if ("score-count-type-2".equals(str2)) {
                try {
                    i14 = Integer.parseInt(strOptString);
                } catch (NumberFormatException unused2) {
                    i14 = 0;
                }
                if (com.bytedance.sdk.component.adexpress.EjP.sP() && i14 < 0) {
                    return new sP.TKC(0.0f, 0.0f);
                }
                return Sj("(" + String.format(new DecimalFormat("###,###,###").format(i14), Integer.valueOf(i14)) + ")", str3);
            }
            if ("feedback-dislike".equals(str2)) {
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    return Sj(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_feedback"), str3);
                }
                sP.TKC tkc2 = new sP.TKC();
                float fSP2 = (float) sP(str3);
                tkc2.Sj = fSP2;
                tkc2.sP = fSP2;
                return tkc2;
            }
            if ("skip-with-time-countdown".equals(str2) || TextUtils.equals("skip-with-countdowns-video-countdown", str2)) {
                if (!fmk.Sj() || !com.bytedance.sdk.component.adexpress.EjP.vS.sP(strEjP)) {
                    return d11 < 10.0d ? Sj("0S", str3) : Sj("00S", str3);
                }
                if (((int) (d11 + 0.5d)) - iJcg < 10) {
                    return com.bytedance.sdk.component.adexpress.EjP.sP() ? Sj("0s", str3) : Sj(String.format(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip"), "0"), str3);
                }
                return com.bytedance.sdk.component.adexpress.EjP.sP() ? Sj("00s", str3) : Sj(String.format(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip"), "00"), str3);
            }
            if (TextUtils.equals("skip-with-countdowns-skip-btn", str2)) {
                return Sj("| " + ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_screen_skip_tx"), str3);
            }
            if (TextUtils.equals("skip-with-countdowns-skip-countdown", str2)) {
                return Sj("| ".concat(String.format(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip_count_down"), "00")), str3);
            }
            if ("skip-with-time-skip-btn".equals(str2)) {
                sP.TKC tkcSj2 = Sj("| " + ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_screen_skip_tx"), str3);
                if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    try {
                        tkcSj2.sP = (float) ((((double) tkcSj2.sP) * new JSONObject(str3).optDouble("lineHeight")) / 1.2d);
                    } catch (Throwable unused3) {
                    }
                    tkcSj2.Sj = tkcSj2.sP;
                }
                return tkcSj2;
            }
            if ("skip".equals(str2)) {
                return Sj(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_screen_skip_tx"), str3);
            }
            if ("timedown".equals(str2)) {
                return Sj("0.0", str3);
            }
            if ("text_star".equals(str2)) {
                return (!com.bytedance.sdk.component.adexpress.EjP.sP() || (d12 >= 0.0d && d12 <= 5.0d)) ? Sj("0.0", str3) : new sP.TKC(0.0f, 0.0f);
            }
            if (TextUtils.equals("privacy-detail", str2)) {
                return Sj("Permission list | Privacy policy", str3);
            }
            if ("arrowButton".equals(str2)) {
                return Sj("Download", str3);
            }
            if (MimeTypes.BASE_TYPE_TEXT.equals(str2) && com.bytedance.sdk.component.adexpress.EjP.sP() && TextUtils.isEmpty(strOptString) && (vSVarHiB = dq2.TEQ().HiB()) != null) {
                strOptString = vSVarHiB.Uc() != null ? dq2.TEQ().HiB().Uc().optString(com.bytedance.sdk.component.adexpress.EjP.Jcg.TKC(com.bytedance.sdk.component.adexpress.EjP.Sj())) : "";
            }
            if ("fillButton".equals(str2) || MimeTypes.BASE_TYPE_TEXT.equals(str2) || "button".equals(str2) || "downloadWithIcon".equals(str2) || "downloadButton".equals(str2) || "laceButton".equals(str2) || "cardButton".equals(str2) || "colourMixtureButton".equals(str2) || "arrowButton".equals(str2) || ((EventConstants.KEY_SOURCE.equals(str2) && !(com.bytedance.sdk.component.adexpress.EjP.sP() && "open_ad".equals(strEjP))) || TextUtils.equals("app-version", str2) || TextUtils.equals("development-name", str2))) {
                return Sj(strOptString, str3);
            }
            try {
                JSONObject jSONObject = new JSONObject(str3);
                int length = strOptString.length();
                float fOptDouble = (float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE);
                float fOptDouble2 = (float) jSONObject.optDouble("letterSpacing");
                float fOptDouble3 = (float) jSONObject.optDouble("lineHeight");
                float fOptDouble4 = (float) jSONObject.optDouble("maxWidth");
                ?? r11 = fOptDouble + fOptDouble2;
                float f13 = (length * r11) - fOptDouble2;
                try {
                    if ("muted".equals(str2)) {
                        tkc.Sj = fOptDouble;
                        tkc.sP = fOptDouble;
                        return tkc;
                    }
                    if ("star".equals(str2)) {
                        if (com.bytedance.sdk.component.adexpress.EjP.sP() && (d12 < 0.0d || d12 > 5.0d || i12 != 4)) {
                            return new sP.TKC(0.0f, 0.0f);
                        }
                        sP.TKC tkcSj3 = Sj("str", str3);
                        tkcSj3.Sj = fOptDouble * 5.0f;
                        return tkcSj3;
                    }
                    if (RewardPlus.ICON.equals(str2)) {
                        tkc.Sj = fOptDouble;
                        tkc.sP = fOptDouble;
                        return tkc;
                    }
                    if (!z10) {
                        i15 = i11;
                        f11 = (float) (((double) (fOptDouble3 * fOptDouble)) * 1.2d);
                        if (f13 <= fOptDouble4) {
                            f12 = f13;
                        }
                        if (CampaignEx.JSON_KEY_TITLE.equals(str2) || (com.bytedance.sdk.component.adexpress.EjP.sP() && "open_ad".equals(strEjP) && EventConstants.KEY_SOURCE.equals(str2))) {
                            try {
                                tkcSj = Sj(strOptString.replace('\n', ' '), str3, false);
                                if (z10) {
                                    i16 = ((int) (f13 / fOptDouble4)) + 1;
                                    if (z11 || i16 < i15) {
                                        i15 = i16;
                                    }
                                    tkcSj.sP *= i15;
                                }
                                return tkcSj;
                            } catch (Exception unused4) {
                            }
                        }
                        tkc.Sj = f12;
                        tkc.sP = f11;
                        return tkc;
                    }
                    int i17 = ((int) (f13 / fOptDouble4)) + 1;
                    i15 = i11;
                    if (z11 && i17 >= i15) {
                        i17 = i15;
                    }
                    f11 = (float) (((double) (fOptDouble3 * fOptDouble * i17)) * 1.2d);
                    f12 = fOptDouble4;
                    if (CampaignEx.JSON_KEY_TITLE.equals(str2)) {
                        tkcSj = Sj(strOptString.replace('\n', ' '), str3, false);
                        if (z10) {
                            i16 = ((int) (f13 / fOptDouble4)) + 1;
                            if (z11) {
                                i15 = i16;
                            } else {
                                i15 = i16;
                            }
                            tkcSj.sP *= i15;
                        }
                        return tkcSj;
                    }
                    tkcSj = Sj(strOptString.replace('\n', ' '), str3, false);
                    if (z10) {
                        i16 = ((int) (f13 / fOptDouble4)) + 1;
                        if (z11) {
                            i15 = i16;
                        } else {
                            i15 = i16;
                        }
                        tkcSj.sP *= i15;
                    }
                    return tkcSj;
                    tkc.Sj = f12;
                    tkc.sP = f11;
                    return tkc;
                } catch (JSONException unused5) {
                    return r11;
                }
            } catch (JSONException unused6) {
                return tkc;
            }
        }
        try {
            if (!"close".equals(str2)) {
                if (com.bytedance.sdk.component.adexpress.EjP.sP() && "close-fill".equals(str2)) {
                }
                tkc.Sj = 10.0f;
                tkc.sP = 10.0f;
                return tkc;
            }
            float fOptDouble5 = (float) new JSONObject(str3).optDouble(TtmlNode.ATTR_TTS_FONT_SIZE);
            tkc.Sj = fOptDouble5;
            tkc.sP = fOptDouble5;
            return tkc;
        } catch (Exception unused7) {
        }
    }

    public static sP.TKC Sj(String str, String str2, boolean z10) {
        sP.TKC tkc = new sP.TKC();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] iArrSj = Sj(str, (float) sP(str2), z10);
            tkc.Sj = iArrSj[0];
            tkc.sP = iArrSj[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                tkc.sP = 0.0f;
            }
        } catch (Exception unused) {
        }
        return tkc;
    }

    public static String Sj() {
        return sP;
    }

    public static String Sj(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("adx:")) == null || strArrSplit.length < 2) ? "" : strArrSplit[1];
    }

    public static int[] Sj(String str, float f11, boolean z10) {
        int[] iArrSP = sP(str, f11, z10);
        return new int[]{com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), iArrSP[0]), com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), iArrSP[1])};
    }

    public static double sP(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString(TtmlNode.ATTR_TTS_FONT_SIZE));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static boolean sP() {
        return !TextUtils.isEmpty(sP);
    }

    public static int[] sP(String str, float f11, boolean z10) {
        try {
            TextView textView = new TextView(com.bytedance.sdk.component.adexpress.EjP.Sj());
            textView.setTextSize(f11);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z10) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }
}
