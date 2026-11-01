package com.transsion.player.longvideo.intercept;

import com.therouter.TheRouter;
import com.transsion.memberapi.IPremiumApi;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f48123a = new e();

    private e() {
    }

    public final void a() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        bVar.b().putString("Nxib7sg2tb5K4j6W", ti.p.f76266a.c());
        bVar.b().putInt("wq7I447J58315o5d", bVar.b().getInt("wq7I447J58315o5d", 0) + 1);
    }

    public final int b() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (Intrinsics.c(bVar.b().getString("Nxib7sg2tb5K4j6W", ""), ti.p.f76266a.c())) {
            return bVar.b().getInt("wq7I447J58315o5d", 0);
        }
        bVar.b().putInt("wq7I447J58315o5d", 0);
        return 0;
    }

    public final boolean c() {
        int iB = b();
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int iX = iPremiumApi != null ? iPremiumApi.x() : 0;
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackFreeTimesManager --> hasFreePlaybackTimes() --> freeTimesCount = " + iB + " --> freePlaybackTimes = " + iX, false, 4, null);
        return iX > iB;
    }
}
