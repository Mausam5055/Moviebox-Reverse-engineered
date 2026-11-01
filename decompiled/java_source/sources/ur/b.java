package ur;

import android.content.Context;
import com.transsion.ad.bidding.base.r;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f76890a = new b();

    private b() {
    }

    public final r a(Context context, String str) {
        Intrinsics.h(context, "context");
        if (Intrinsics.c(str, "ShortTvDiscoverMostTrendingScene")) {
            return new d(context);
        }
        if (Intrinsics.c(str, "ShortTvListScene")) {
            return new c(context);
        }
        return null;
    }
}
