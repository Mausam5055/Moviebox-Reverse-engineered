package com.transsion.mbwidget.data;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u00042\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/transsion/mbwidget/data/SportType;", "", "<init>", "(Ljava/lang/String;I)V", "Companion", "a", "FOOTBALL", "CRICKET", "BASKETBALL", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum SportType {
    FOOTBALL,
    CRICKET,
    BASKETBALL;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.mbwidget.data.SportType$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SportType a(String str) {
            String lowerCase;
            if (str != null) {
                lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase == null) {
                return null;
            }
            int iHashCode = lowerCase.hashCode();
            if (iHashCode == 394668909) {
                if (lowerCase.equals("football")) {
                    return SportType.FOOTBALL;
                }
                return null;
            }
            if (iHashCode == 727149765) {
                if (lowerCase.equals("basketball")) {
                    return SportType.BASKETBALL;
                }
                return null;
            }
            if (iHashCode == 1032299505 && lowerCase.equals("cricket")) {
                return SportType.CRICKET;
            }
            return null;
        }
    }

    public static EnumEntries<SportType> getEntries() {
        return $ENTRIES;
    }
}
