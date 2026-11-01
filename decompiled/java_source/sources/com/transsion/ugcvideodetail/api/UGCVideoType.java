package com.transsion.ugcvideodetail.api;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.search.bean.HotRankItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/ugcvideodetail/api/UGCVideoType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MOVIE", HotRankItem.CATE_TV, "EDUCATION", BottomTabType.TAB_CODE_MUSIC, "SHORT_TV", "SPORT", "POST", "ROOM", BottomTabType.TAB_CODE_NOVEL, "LIVE", "KIDS", "RECREATION", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum UGCVideoType {
    MOVIE(HotRankItem.CATE_MOVIE),
    TV("Tv"),
    EDUCATION("Education"),
    MUSIC(HotRankItem.CATE_MUSIC),
    SHORT_TV("ShortTV"),
    SPORT("Sport"),
    POST("Post"),
    ROOM("Room"),
    NOVEL("Novel"),
    LIVE("Live"),
    KIDS("Kids"),
    RECREATION("Recreation");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final String value;

    UGCVideoType(String str) {
        this.value = str;
    }

    public static EnumEntries<UGCVideoType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
