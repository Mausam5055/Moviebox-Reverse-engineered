package com.cloud.hisavana.sdk.common.util;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class c0 {
    public static String a(double d11) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        numberInstance.setMinimumFractionDigits(1);
        numberInstance.setMaximumFractionDigits(1);
        return numberInstance.format(d11);
    }

    public static String b(long j11) {
        if (j11 < 1000) {
            return a(j11);
        }
        if (j11 < 1000000) {
            return a(j11 / 1000.0f) + CampaignEx.JSON_KEY_AD_K;
        }
        if (j11 < C.NANOS_PER_SECOND) {
            return a(j11 / 1000000.0f) + "million";
        }
        return a(j11 / 1.0E9f) + "billion";
    }
}
