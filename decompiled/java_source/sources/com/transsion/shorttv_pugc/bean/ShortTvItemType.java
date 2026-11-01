package com.transsion.shorttv_pugc.bean;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\"\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#¨\u0006$"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Companion", "a", "TRENDING", "FAVORITE", "OP_RANKING", "FILTER", "BANNER", "CUSTOM_DATA", "APPOINTMENT_LIST", "OP_SUBJECTS_MOVIE", "RANKING_MOVIE_HORIZONTAL", "RANKING_LIST", "RANKING_LIST_MUSIC", "SPORT_LIVE", "SINGLE_IMAGE", "PLAY_LIST", "RANKING_LIST_NUMBER", "HORIZONTAL_BANNER", "SINGLE_SUBJECT", "EDUCATION_SUBJECT", "GAME_LIST", "NO_NETWORK", "TRENDING_NATIVE_AD", "HONOR", "TRENDING_TITLE", "MY_COURSE", "ROOM", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum ShortTvItemType {
    TRENDING("TRENDING"),
    FAVORITE("FAVORITE"),
    OP_RANKING("RANKING"),
    FILTER("FILTER"),
    BANNER("BANNER"),
    CUSTOM_DATA("CUSTOM"),
    APPOINTMENT_LIST("APPOINTMENT_LIST"),
    OP_SUBJECTS_MOVIE("SUBJECTS_MOVIE"),
    RANKING_MOVIE_HORIZONTAL("SUBJ_MOVIE_HORIZ"),
    RANKING_LIST("RANKING_LIST"),
    RANKING_LIST_MUSIC("MUSIC_CHARTS"),
    SPORT_LIVE("SPORT_LIVE"),
    SINGLE_IMAGE("SINGLE_IMAGE"),
    PLAY_LIST("PLAY_LIST"),
    RANKING_LIST_NUMBER("RANKING_HORIZ"),
    HORIZONTAL_BANNER("HORIZONTAL_BANNER"),
    SINGLE_SUBJECT("SINGLE_SUBJECT"),
    EDUCATION_SUBJECT("EDUCATION_SUBJECT"),
    GAME_LIST("GAME_LIST"),
    NO_NETWORK("no_network"),
    TRENDING_NATIVE_AD("TRENDING_NATIVE_AD"),
    HONOR("HONOR"),
    TRENDING_TITLE("TRENDING_TITLE"),
    MY_COURSE("MY_COURSE"),
    ROOM("ROOM");

    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.bean.ShortTvItemType$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvItemType a(String value) {
            Intrinsics.h(value, "value");
            for (ShortTvItemType shortTvItemType : ShortTvItemType.values()) {
                if (Intrinsics.c(shortTvItemType.getValue(), value)) {
                    return shortTvItemType;
                }
            }
            return null;
        }
    }

    ShortTvItemType(String str) {
        this.value = str;
    }

    public static EnumEntries<ShortTvItemType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
