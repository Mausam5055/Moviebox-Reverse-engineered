package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    public static final long b(long j11, float f11) {
        return (Float.isNaN(f11) || f11 >= 1.0f) ? j11 : u1.k(j11, u1.n(j11) * f11, 0.0f, 0.0f, 0.0f, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(float f11, Function0 function0) {
        return Float.isNaN(f11) ? ((Number) function0.invoke()).floatValue() : f11;
    }
}
