package com.transsion.ad.strategy;

import com.transsion.ad.monopoly.model.MbAdPlansBean;

/* JADX INFO: loaded from: classes5.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f42244a = new s();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f42245b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f42246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f42247d;

    private s() {
    }

    public final int a() {
        if (f42245b) {
            f42247d = f.f42232a.b().getInt("newUserAdShieldHour", 0);
        }
        return f42247d;
    }

    public final long b() {
        if (f42245b) {
            f42246c = f.f42232a.b().getLong("userCreateTime", 0L);
        }
        return f42246c;
    }

    public final boolean c() {
        if (f42245b) {
            f fVar = f.f42232a;
            f42246c = fVar.b().getLong("userCreateTime", 0L);
            f42247d = fVar.b().getInt("newUserAdShieldHour", 0);
        }
        f42245b = false;
        return f42247d != 0 && System.currentTimeMillis() - f42246c < (((long) f42247d) * ((long) 3600)) * ((long) 1000);
    }

    public final void d(MbAdPlansBean mbAdPlansBean) {
        Integer newUserAdShieldHour;
        Long userCreateTime;
        f fVar = f.f42232a;
        fVar.b().putLong("userCreateTime", (mbAdPlansBean == null || (userCreateTime = mbAdPlansBean.getUserCreateTime()) == null) ? 0L : userCreateTime.longValue());
        fVar.b().putInt("newUserAdShieldHour", (mbAdPlansBean == null || (newUserAdShieldHour = mbAdPlansBean.getNewUserAdShieldHour()) == null) ? 0 : newUserAdShieldHour.intValue());
        f42245b = true;
        oi.a.c(oi.a.f71022a, "NewUserShieldStrategy --> saveNewUserShieldData() --> 保存新用户屏蔽数据 --> userCreateTime = " + (mbAdPlansBean != null ? mbAdPlansBean.getUserCreateTime() : null) + ", newUserAdShieldHour = " + (mbAdPlansBean != null ? mbAdPlansBean.getNewUserAdShieldHour() : null), 0, false, 2, null);
    }
}
