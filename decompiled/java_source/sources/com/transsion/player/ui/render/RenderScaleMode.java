package com.transsion.player.ui.render;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/transsion/player/ui/render/RenderScaleMode;", "", "<init>", "(Ljava/lang/String;I)V", "SCREEN_SCALE_DEFAULT", "SCREEN_SCALE_ORIGINAL", "SCREEN_SCALE_16_9", "SCREEN_SCALE_4_3", "SCREEN_SCALE_MATCH_PARENT", "SCREEN_SCALE_CENTER_CROP", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum RenderScaleMode {
    SCREEN_SCALE_DEFAULT,
    SCREEN_SCALE_ORIGINAL,
    SCREEN_SCALE_16_9,
    SCREEN_SCALE_4_3,
    SCREEN_SCALE_MATCH_PARENT,
    SCREEN_SCALE_CENTER_CROP;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    public static EnumEntries<RenderScaleMode> getEntries() {
        return $ENTRIES;
    }
}
