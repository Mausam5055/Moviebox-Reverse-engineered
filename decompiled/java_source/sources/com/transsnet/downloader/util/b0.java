package com.transsnet.downloader.util;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f59921a = new b0();

    private b0() {
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    public final int a(String str) {
        Integer num;
        if (str == null || StringsKt.q0(str)) {
            return 0;
        }
        String upperCase = StringsKt.n1(str).toString().toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        int iHashCode = upperCase.hashCode();
        if (iHashCode != 1625) {
            if (iHashCode != 1687) {
                if (iHashCode != 1718) {
                    if (iHashCode == 1811 && upperCase.equals("8K")) {
                        num = 4320;
                    } else {
                        num = null;
                    }
                } else if (upperCase.equals("5K")) {
                    num = 2880;
                } else {
                    num = null;
                }
            } else if (upperCase.equals("4K")) {
                num = 2160;
            } else {
                num = null;
            }
        } else if (upperCase.equals("2K")) {
            num = 1440;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        Integer numV = StringsKt.v(StringsKt.J0(upperCase, "P"));
        if (numV != null) {
            return numV.intValue();
        }
        return 0;
    }
}
