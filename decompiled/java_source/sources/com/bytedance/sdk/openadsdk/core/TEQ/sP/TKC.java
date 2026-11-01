package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends com.bytedance.adsdk.ugeno.uA.TKC.Sj {
    public TKC(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.uA.TKC.Sj
    public String Jcg(String str) {
        str.hashCode();
        switch (str) {
            case "unmuted":
                return "tt_reward_full_unmute";
            case "feedback":
                return "tt_reward_full_feedback";
            case "right_arrow":
                return "tt_skip_btn";
            case "logo":
                return "tt_ad_logo";
            case "close":
                return "tt_close_btn";
            case "muted":
                return "tt_reward_full_mute";
            default:
                return null;
        }
    }
}
