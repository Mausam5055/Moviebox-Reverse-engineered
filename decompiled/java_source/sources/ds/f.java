package ds;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f {
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
            return bigDecimalDivide + " k";
        }
        BigDecimal bigDecimalDivide2 = new BigDecimal(j11).divide(new BigDecimal(1000000), 1, 4);
        Intrinsics.g(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2 + " m";
    }
}
