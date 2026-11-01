package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    public static final Map<String, Integer> Sj;
    private vS EjP;
    private vS HiB;
    private String TKC;
    private String sP;
    private String vS;

    static {
        HashMap map = new HashMap();
        Sj = map;
        map.put("root", 8);
        map.put("footer", 6);
        map.put("empty", 6);
        map.put(CampaignEx.JSON_KEY_TITLE, 0);
        map.put("subtitle", 0);
        map.put(EventConstants.KEY_SOURCE, 0);
        map.put("score-count", 0);
        map.put("text_star", 0);
        map.put(MimeTypes.BASE_TYPE_TEXT, 0);
        map.put("tag-group", 17);
        map.put("app-version", 0);
        map.put("development-name", 0);
        map.put("privacy-detail", 23);
        map.put("image", 1);
        map.put("image-wide", 1);
        map.put("image-square", 1);
        map.put("image-long", 1);
        map.put("image-splash", 1);
        map.put("image-cover", 1);
        map.put("app-icon", 1);
        map.put("icon-download", 1);
        map.put("logoad", 4);
        map.put("logounion", 5);
        map.put("logo-union", 9);
        map.put("dislike", 3);
        map.put("close", 3);
        map.put("close-fill", 3);
        map.put("webview-close", 22);
        map.put("feedback-dislike", 12);
        map.put("button", 2);
        map.put("downloadWithIcon", 2);
        map.put("downloadButton", 2);
        map.put("fillButton", 2);
        map.put("laceButton", 2);
        map.put("cardButton", 2);
        map.put("colourMixtureButton", 2);
        map.put("arrowButton", 1);
        map.put("download-progress-button", 2);
        map.put("vessel", 6);
        map.put("image-group", 6);
        map.put("custom-component-vessel", 6);
        map.put("carousel", 24);
        map.put("carousel-vessel", 26);
        map.put("leisure-interact", 25);
        map.put("video-hd", 7);
        map.put("video", 7);
        map.put("video-vd", 7);
        map.put("video-sq", 7);
        map.put("muted", 10);
        map.put("star", 11);
        map.put("skip-countdowns", 19);
        map.put("skip-with-countdowns-skip-btn", 21);
        map.put("skip-with-countdowns-video-countdown", 13);
        map.put("skip-with-countdowns-skip-countdown", 20);
        map.put("skip-with-time", 14);
        map.put("skip-with-time-countdown", 13);
        map.put("skip-with-time-skip-btn", 15);
        map.put("skip", 27);
        map.put("timedown", 13);
        map.put(RewardPlus.ICON, 16);
        map.put("scoreCountWithIcon", 6);
        map.put("split-line", 18);
        map.put("creative-playable-bait", 0);
        map.put("score-count-type-2", 0);
        map.put("lottie", 28);
    }

    public String EjP() {
        return this.vS;
    }

    public vS HiB() {
        return this.EjP;
    }

    public vS Jcg() {
        return this.HiB;
    }

    public int Sj() {
        if (TextUtils.isEmpty(this.sP)) {
            return 0;
        }
        if (this.sP.equals("logo")) {
            String str = this.sP + this.TKC;
            this.sP = str;
            if (str.contains("logoad")) {
                return 4;
            }
            if (this.sP.contains("logounion")) {
                return 5;
            }
        }
        Map<String, Integer> map = Sj;
        if (map.get(this.sP) != null) {
            return map.get(this.sP).intValue();
        }
        return -1;
    }

    public void Sj(vS vSVar) {
        this.EjP = vSVar;
    }

    public void Sj(String str) {
        this.sP = str;
    }

    public String TKC() {
        return this.TKC;
    }

    public void TKC(String str) {
        this.vS = str;
    }

    public String sP() {
        return this.sP;
    }

    public void sP(vS vSVar) {
        this.HiB = vSVar;
    }

    public void sP(String str) {
        this.TKC = str;
    }

    public String toString() {
        return "DynamicLayoutBrick{type='" + this.sP + "', data='" + this.TKC + "', value=" + this.EjP + ", themeValue=" + this.HiB + ", dataExtraInfo='" + this.vS + "'}";
    }

    public int vS() {
        return this.EjP.TFd();
    }
}
