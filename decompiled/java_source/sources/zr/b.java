package zr;

import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f79451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79452b;

    static {
        b bVar = new b();
        f79451a = bVar;
        f79452b = bVar.getClass().getSimpleName();
    }

    private b() {
    }

    private final boolean a(Subject subject, ShortTVItem shortTVItem) {
        return (subject == null || subject.getNeedPaid() == 0 || subject.isPaid() == 1 || shortTVItem == null || shortTVItem.getNeedPaid() == 0 || subject.getAdUnlockedEps().contains(Integer.valueOf(shortTVItem.getEp()))) ? false : true;
    }

    public final String b(Subject subject, int i11) {
        Set adUnlockedEps;
        if (subject == null || (adUnlockedEps = subject.getAdUnlockedEps()) == null || !adUnlockedEps.contains(Integer.valueOf(i11))) {
            return (subject == null || subject.isPaid() != 1) ? "" : "buy";
        }
        return CommonLogUtil.TAG_AD;
    }

    public final boolean c(Subject subject, ShortTVItem shortTVItem) {
        return a(subject, shortTVItem);
    }

    public final void d(ShortTVItem item) {
        Intrinsics.h(item, "item");
    }

    public final void e(Subject subject) {
    }

    public final void f(Subject subject) {
        Intrinsics.h(subject, "subject");
        int i11 = 1;
        int iMax = Math.max(subject.getTotalEpisode(), 1);
        if (1 > iMax) {
            return;
        }
        while (true) {
            subject.getAdUnlockedEps().add(Integer.valueOf(i11));
            if (i11 == iMax) {
                return;
            } else {
                i11++;
            }
        }
    }

    public final void g(Subject subject, ShortTVItem epInfo, int i11) {
        Intrinsics.h(subject, "subject");
        Intrinsics.h(epInfo, "epInfo");
        for (int i12 = 0; i12 < i11; i12++) {
            int ep2 = epInfo.getEp() + i12;
            if (ep2 <= subject.getTotalEpisode()) {
                subject.getAdUnlockedEps().add(Integer.valueOf(ep2));
            }
        }
    }
}
