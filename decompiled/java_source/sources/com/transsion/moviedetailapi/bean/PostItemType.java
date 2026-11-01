package com.transsion.moviedetailapi.bean;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b4\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5¨\u00066"}, d2 = {"Lcom/transsion/moviedetailapi/bean/PostItemType;", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Companion", "a", "FILTER", "BANNER", "CUSTOM_DATA", "APPOINTMENT_LIST", "OP_SUBJECTS_MOVIE", "RANKING_MOVIE_HORIZONTAL", "SPORT_LIVE", "SINGLE_IMAGE", "SUBJECT", "RANKING_LIST_MULTI_TAB", "POST_LIST", "MY_COURSE", "RANKING_LIST", "EDUCATION_SUBJECT", "OP_RANKING", "RANKING_LIST_MUSIC", "TRENDING_FEES_GRID", "TRENDING_FEES_BIG", "HASH_TAG", "UGC_BANNER", "UGC_MOVIE_RANK", "UGC_MUSIC_RANK", "UGC_FILTER", "UGC_SINGLE_IMAGE", "UGC_CUSTOM", "UGC_SPORT_LIVE", "UGC_RANKING_LIST", "UGC_SUBJECT_LIST", "UGC_PORTRAIT_GRID", "UGC_VERTICAL_OPT_LIST", "MULTILINE_SUBJECTS_LIST", "HORIZONTAL_BANNER", "SINGLE_SUBJECT", "GRID_SUBJECT", "NO_NETWORK", "TRENDING_NATIVE_AD", "FEEDS_TITLE", "TRENDING_MARGIN", "ROOM", "PREFERENCES", "MEMBER_BANNER", "TV_CHANNEL_ITEM", "TV_CHANNEL_HEADER", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum PostItemType {
    FILTER("FILTER"),
    BANNER("BANNER"),
    CUSTOM_DATA("CUSTOM"),
    APPOINTMENT_LIST("APPOINTMENT_LIST"),
    OP_SUBJECTS_MOVIE("SUBJECTS_MOVIE"),
    RANKING_MOVIE_HORIZONTAL("SUBJ_MOVIE_HORIZ"),
    SPORT_LIVE("SPORT_LIVE"),
    SINGLE_IMAGE("SINGLE_IMAGE"),
    SUBJECT("SUBJECT"),
    RANKING_LIST_MULTI_TAB("RANKING_LIST_MULTI_TAB"),
    POST_LIST("POST_LIST"),
    MY_COURSE("MY_COURSE"),
    RANKING_LIST("RANKING_LIST"),
    EDUCATION_SUBJECT("EDUCATION_SUBJECT"),
    OP_RANKING("RANKING"),
    RANKING_LIST_MUSIC("MUSIC_CHARTS"),
    TRENDING_FEES_GRID("TRENDING_FEES_GRID"),
    TRENDING_FEES_BIG("TRENDING_FEES_BIG"),
    HASH_TAG("UGC_VIDEO_HASHTAG"),
    UGC_BANNER("UGC_VIDEO_BANNER"),
    UGC_MOVIE_RANK("UGC_VIDEO_SUBJECTS_MOVIE"),
    UGC_MUSIC_RANK("UGC_VIDEO_MUSIC_CHARTS"),
    UGC_FILTER("UGC_VIDEO_FILTER"),
    UGC_SINGLE_IMAGE("UGC_VIDEO_SINGLE_IMAGE"),
    UGC_CUSTOM("UGC_VIDEO_CUSTOM"),
    UGC_SPORT_LIVE("UGC_VIDEO_SPORT_LIVE"),
    UGC_RANKING_LIST("UGC_VIDEO_RANKING_LIST"),
    UGC_SUBJECT_LIST("UGC_VIDEO_SUBJECTS_LIST"),
    UGC_PORTRAIT_GRID("UGC_VIDEO_SUBJECTS_LIST_PORTRAIT_GRID"),
    UGC_VERTICAL_OPT_LIST("UGC_VERTICA_VIDEO_SUBJECTS_MOVIE"),
    MULTILINE_SUBJECTS_LIST("MULTILINE_SUBJECTS_LIST"),
    HORIZONTAL_BANNER("HORIZONTAL_BANNER"),
    SINGLE_SUBJECT("SINGLE_SUBJECT"),
    GRID_SUBJECT("GRID_SUBJECT"),
    NO_NETWORK("no_network"),
    TRENDING_NATIVE_AD("TRENDING_NATIVE_AD"),
    FEEDS_TITLE("FEEDS_TITLE"),
    TRENDING_MARGIN("TRENDING_MARGIN"),
    ROOM("ROOM"),
    PREFERENCES("PREFERENCES"),
    MEMBER_BANNER("MEMBER_BANNER"),
    TV_CHANNEL_ITEM("TV_CHANNEL_ITEM"),
    TV_CHANNEL_HEADER("TV_CHANNEL_HEADER");

    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.moviedetailapi.bean.PostItemType$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostItemType a(String value) {
            Intrinsics.h(value, "value");
            for (PostItemType postItemType : PostItemType.values()) {
                if (Intrinsics.c(postItemType.getValue(), value)) {
                    return postItemType;
                }
            }
            return null;
        }
    }

    PostItemType(String str) {
        this.value = str;
    }

    public static EnumEntries<PostItemType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
