package jn;

import java.text.DecimalFormat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f {
    public static final String a(int i11) {
        String str = new DecimalFormat("00").format(Integer.valueOf(i11));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
