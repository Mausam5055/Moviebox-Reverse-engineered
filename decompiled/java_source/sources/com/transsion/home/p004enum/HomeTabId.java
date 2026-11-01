package com.transsion.home.p004enum;

import ak.g;
import ak.o;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.search.bean.HotRankItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b!\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006#"}, d2 = {"Lcom/transsion/home/enum/HomeTabId;", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Ljava/lang/String;II)V", "I", "getValue", "()I", "Companion", "a", "Trending", HotRankItem.CATE_MOVIE, "Education", HotRankItem.CATE_MUSIC, "TVShow", "Apps", "ShortTV", "Animation", "Midnight", "AD", "Game", "MusicOperate", "ShortTVDiscover", "TVChannel", "UGC_Trending", "UGC_Movie", "UGC_Education", "UGC_Music", "UGC_TVShow", "UGC_ShortTV", "UGC_TVChannel", "UGC_Kids_Education", "UGC_Kids_Movie", "UGC_Kids_Animation", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum HomeTabId {
    Trending(1),
    Movie(2),
    Education(3),
    Music(4),
    TVShow(5),
    Apps(6),
    ShortTV(7),
    Animation(8),
    Midnight(9),
    AD(10),
    Game(11),
    MusicOperate(12),
    ShortTVDiscover(13),
    TVChannel(42),
    UGC_Trending(1000),
    UGC_Movie(1001),
    UGC_Education(1002),
    UGC_Music(1003),
    UGC_TVShow(1004),
    UGC_ShortTV(1005),
    UGC_TVChannel(1033),
    UGC_Kids_Education(1012),
    UGC_Kids_Movie(1023),
    UGC_Kids_Animation(1024);

    private final int value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static Set<Integer> educationList = new LinkedHashSet();

    /* JADX INFO: renamed from: com.transsion.home.enum.HomeTabId$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int c() {
            if (g.f639a.b()) {
                return o.f646a.i() ? HomeTabId.UGC_Kids_Education.getValue() : HomeTabId.UGC_Education.getValue();
            }
            return HomeTabId.Education.getValue();
        }

        public final void a(Integer num) {
            if (num != null) {
                HomeTabId.educationList.add(Integer.valueOf(num.intValue()));
            }
        }

        public final int b() {
            return o.f646a.i() ? HomeTabId.UGC_Kids_Animation.getValue() : HomeTabId.Animation.getValue();
        }

        public final int d() {
            if (g.f639a.b()) {
                return o.f646a.i() ? HomeTabId.UGC_Kids_Movie.getValue() : HomeTabId.UGC_Movie.getValue();
            }
            return HomeTabId.Movie.getValue();
        }

        public final int e() {
            return g.f639a.b() ? HomeTabId.UGC_Music.getValue() : HomeTabId.MusicOperate.getValue();
        }

        public final int f() {
            return g.f639a.b() ? HomeTabId.UGC_TVShow.getValue() : HomeTabId.TVShow.getValue();
        }

        public final int g() {
            return g.f639a.b() ? HomeTabId.UGC_Trending.getValue() : HomeTabId.Trending.getValue();
        }

        public final boolean h(Integer num, boolean z10) {
            if (z10) {
                return (num != null && num.intValue() == HomeTabId.Education.getValue()) || CollectionsKt.b0(HomeTabId.educationList, num);
            }
            return (num != null && num.intValue() == c()) || CollectionsKt.b0(HomeTabId.educationList, num);
        }
    }

    HomeTabId(int i11) {
        this.value = i11;
    }

    public static EnumEntries<HomeTabId> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }
}
