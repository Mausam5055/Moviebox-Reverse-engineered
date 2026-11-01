package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class OverscrollConfiguration_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f2613a = CompositionLocalKt.d(null, new Function0<e0>() { // from class: androidx.compose.foundation.OverscrollConfiguration_androidKt$LocalOverscrollConfiguration$1
        @Override // kotlin.jvm.functions.Function0
        public final e0 invoke() {
            return new e0(0L, null, 3, null);
        }
    }, 1, null);

    public static final s1 a() {
        return f2613a;
    }
}
