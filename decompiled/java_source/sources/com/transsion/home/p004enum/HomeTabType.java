package com.transsion.home.p004enum;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/home/enum/HomeTabType;", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Companion", "a", "TRENDING", "SUBJECT", "H5TAB", "SUB_OPERATION", "SUB_ROOM", "TV_CHANNEL_TAB", "SUB_SPORTS_LIVE", "SUB_NOVEL", "SHORT_TV_TAB", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum HomeTabType {
    TRENDING("TrenTab"),
    SUBJECT("SubjTab"),
    H5TAB("H5Tab"),
    SUB_OPERATION("OperateTab"),
    SUB_ROOM("CommunityTab"),
    TV_CHANNEL_TAB("TVChannelTab"),
    SUB_SPORTS_LIVE("LiveTab"),
    SUB_NOVEL("NovelTab"),
    SHORT_TV_TAB("ShortTvTab");

    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.home.enum.HomeTabType$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HomeTabType a(String str) {
            HomeTabType next;
            Iterator<HomeTabType> it = HomeTabType.getEntries().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.c(next.getValue(), str)) {
                    return next;
                }
            }
            next = null;
            return next;
        }
    }

    HomeTabType(String str) {
        this.value = str;
    }

    public static EnumEntries<HomeTabType> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
