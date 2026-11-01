package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class SaveableStateRegistryKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f3906a = CompositionLocalKt.f(new Function0<b>() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryKt$LocalSaveableStateRegistry$1
        @Override // kotlin.jvm.functions.Function0
        public final b invoke() {
            return null;
        }
    });

    public static final b a(Map map, Function1 function1) {
        return new c(map, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (!CharsKt.c(charSequence.charAt(i11))) {
                return false;
            }
        }
        return true;
    }

    public static final s1 d() {
        return f3906a;
    }
}
