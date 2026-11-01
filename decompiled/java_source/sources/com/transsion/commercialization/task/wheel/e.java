package com.transsion.commercialization.task.wheel;

import com.transsion.bean.lottery.LotteryDrawResultEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceItemsBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface e {

    public static final class a {
        public static void a(e eVar, String msg) {
            Intrinsics.h(msg, "msg");
        }

        public static void b(e eVar) {
        }

        public static void c(e eVar) {
        }

        public static void d(e eVar) {
        }

        public static void e(e eVar, LotteryUserActivityInfoPriceItemsBean target) {
            Intrinsics.h(target, "target");
        }
    }

    void a();

    void b(LotteryUserActivityInfoPriceItemsBean lotteryUserActivityInfoPriceItemsBean);

    void c(LotteryDrawResultEntity.LotteryResultBean lotteryResultBean);

    void d();

    void e();

    void f(String str);
}
