package androidx.compose.ui.input.key;

import androidx.compose.ui.f;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final f a(f fVar, Function1 function1) {
        return fVar.e(new KeyInputElement(function1, null));
    }
}
