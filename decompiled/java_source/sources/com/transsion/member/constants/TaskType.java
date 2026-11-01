package com.transsion.member.constants;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/member/constants/TaskType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "TITLE", "WATCH_AD", "INVITE_USER", "WATCH", "DOWNLOAD_APP", "OPEN_APP", "PLAY_GAME", "DOWNLOAD_MOVIE", "CHECK_IN", "PALM_PAY", "GAME_RES_BROWSE", "GAME_RES_APP_DOWNLOAD", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum TaskType {
    TITLE(0),
    WATCH_AD(1),
    INVITE_USER(2),
    WATCH(3),
    DOWNLOAD_APP(4),
    OPEN_APP(5),
    PLAY_GAME(6),
    DOWNLOAD_MOVIE(7),
    CHECK_IN(8),
    PALM_PAY(10),
    GAME_RES_BROWSE(11),
    GAME_RES_APP_DOWNLOAD(12);

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private final int value;

    TaskType(int i11) {
        this.value = i11;
    }

    public static EnumEntries<TaskType> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }
}
