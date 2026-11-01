package androidx.room.util;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f14795a = new String[0];

    public static final void a(StringBuilder builder, int i11) {
        Intrinsics.h(builder, "builder");
        for (int i12 = 0; i12 < i11; i12++) {
            builder.append(UrlUtils.QUESTION_MARK);
            if (i12 < i11 - 1) {
                builder.append(",");
            }
        }
    }

    public static final StringBuilder b() {
        return new StringBuilder();
    }
}
