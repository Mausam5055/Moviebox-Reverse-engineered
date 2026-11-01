package or;

import android.content.Context;
import com.transsion.ad.bidding.base.r;
import kotlin.jvm.internal.Intrinsics;
import sr.t;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f71107a = new a();

    private a() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r4.equals("VideoForYouListScene") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        if (r4.equals("ShortTvListScene") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return new sr.a(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final r a(Context context, String str) {
        Intrinsics.h(context, "context");
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -400527312) {
                if (iHashCode != -58164131) {
                    if (iHashCode == 1548392125) {
                    }
                } else if (str.equals("ShortTvDiscoverMostTrendingScene")) {
                    return new t(context);
                }
            }
        }
        return null;
    }
}
