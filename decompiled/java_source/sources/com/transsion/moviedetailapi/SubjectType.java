package com.transsion.moviedetailapi;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.search.bean.HotRankItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/moviedetailapi/SubjectType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "OUTSIDE_FILE", "MOVIE", HotRankItem.CATE_TV, "VSHOW", "AUDIO", "EDUCATION", BottomTabType.TAB_CODE_MUSIC, "SHORT_TV", "SPORT", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum SubjectType {
    OUTSIDE_FILE(-123),
    MOVIE(1),
    TV(2),
    VSHOW(3),
    AUDIO(4),
    EDUCATION(5),
    MUSIC(6),
    SHORT_TV(7),
    SPORT(9);

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final int value;

    SubjectType(int i11) {
        this.value = i11;
    }

    public static EnumEntries<SubjectType> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }
}
