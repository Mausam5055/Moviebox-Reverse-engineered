package com.transsion.member.promotion;

import com.transsion.member.c0;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f46698a = new j();

    private j() {
    }

    private final long b(long j11) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j11);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static /* synthetic */ void e(j jVar, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = System.currentTimeMillis();
        }
        jVar.d(j11);
    }

    public final boolean a(long j11, int i11) {
        if (i11 <= 0) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "MemberPromotionPushHelper --> canShow() --> 每日展示上限无效，maxShowCountPerDay = " + i11, false, 4, null);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = c();
        if (jC > 0 && jCurrentTimeMillis >= jC && jCurrentTimeMillis - jC < j11) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "MemberPromotionPushHelper --> canShow() --> 展示间隔未达到，lastShowTime = " + jC + ", now = " + jCurrentTimeMillis + ", showIntervalMillis = " + j11, false, 4, null);
            return false;
        }
        long jB = b(jCurrentTimeMillis);
        c0 c0Var = c0.f46429a;
        long j12 = c0Var.b().getLong("kv_promotion_push_show_window_start_time", 0L);
        if (j12 != jB) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "MemberPromotionPushHelper --> canShow() --> 当前自然日尚无展示记录，recordedDayStartTime = " + j12 + ", currentDayStartTime = " + jB, false, 4, null);
            return true;
        }
        int i12 = c0Var.b().getInt("kv_promotion_push_show_count_in_window", 0);
        boolean z10 = i12 < i11;
        if (!z10) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "MemberPromotionPushHelper --> canShow() --> 已达到每日展示上限，showCount = " + i12 + ", maxShowCountPerDay = " + i11, false, 4, null);
        }
        return z10;
    }

    public final long c() {
        return c0.f46429a.b().getLong("kv_promotion_push_last_show_time", 0L);
    }

    public final void d(long j11) {
        long jB = b(j11);
        c0 c0Var = c0.f46429a;
        int i11 = 1;
        if (c0Var.b().getLong("kv_promotion_push_show_window_start_time", 0L) == jB) {
            i11 = 1 + c0Var.b().getInt("kv_promotion_push_show_count_in_window", 0);
        } else {
            c0Var.b().putLong("kv_promotion_push_show_window_start_time", jB);
        }
        c0Var.b().putInt("kv_promotion_push_show_count_in_window", i11);
        c0Var.b().putLong("kv_promotion_push_last_show_time", j11);
    }
}
