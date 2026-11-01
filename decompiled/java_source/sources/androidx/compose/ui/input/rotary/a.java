package androidx.compose.ui.input.rotary;

import androidx.compose.ui.f;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final f a(f fVar, Function1 function1) {
        return fVar.e(new RotaryInputElement(function1, null));
    }
}
