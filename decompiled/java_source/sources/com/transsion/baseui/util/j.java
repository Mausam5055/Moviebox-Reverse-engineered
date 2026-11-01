package com.transsion.baseui.util;

import android.content.Context;
import com.transsion.baseui.R$plurals;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j {
    public static final String a(long j11) {
        if (j11 < 0) {
            lg.a.C0828a.f(lg.a.f68839a, "error", "formatNumber count< 0", false, 4, null);
            return "0";
        }
        if (j11 < 1000) {
            return String.valueOf(j11);
        }
        if (j11 < 1000000) {
            BigDecimal bigDecimalDivide = new BigDecimal(j11).divide(new BigDecimal(1000), 1, 4);
            Intrinsics.g(bigDecimalDivide, "divide(...)");
            return bigDecimalDivide + "K";
        }
        BigDecimal bigDecimalDivide2 = new BigDecimal(j11).divide(new BigDecimal(1000000), 1, 4);
        Intrinsics.g(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2 + "M";
    }

    public static final String b(Integer num) {
        if (num == null) {
            return "";
        }
        return (num.intValue() / 3600) + "h " + ((num.intValue() % 3600) / 60) + "m";
    }

    public static final String c(String str, Context context) {
        Long lX;
        Intrinsics.h(context, "context");
        long jLongValue = (str == null || (lX = StringsKt.x(str)) == null) ? 0L : lX.longValue();
        String quantityString = context.getResources().getQuantityString(R$plurals.str_views, (int) jLongValue, a(jLongValue));
        Intrinsics.g(quantityString, "getQuantityString(...)");
        return quantityString;
    }
}
