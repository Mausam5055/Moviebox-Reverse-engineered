package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.e4;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o0 f22165a = new o0();

    private o0() {
    }

    public static final double a(Double d11) {
        if (d11 == null) {
            return 0.0d;
        }
        try {
            return n0.a(BigDecimal.valueOf(d11.doubleValue()).divide(new BigDecimal(100))).doubleValue();
        } catch (Exception e11) {
            e4.b().w("UnitUtil", "cents convert to dollar fail, reason is " + e11.getMessage());
            return 0.0d;
        }
    }

    public static final double b(Double d11) {
        if (d11 == null) {
            return 0.0d;
        }
        try {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d11.doubleValue());
            Intrinsics.g(bigDecimalValueOf, "valueOf(...)");
            return n0.a(bigDecimalValueOf.multiply(BigDecimal.valueOf(100L))).doubleValue();
        } catch (Exception e11) {
            e4.b().w("UnitUtil", "dollar convert to cents fail, reason is " + e11.getMessage());
            return 0.0d;
        }
    }
}
