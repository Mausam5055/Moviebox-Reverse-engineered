package androidx.compose.ui.draw;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static final b a(Function1 function1) {
        return new CacheDrawModifierNodeImpl(new c(), function1);
    }

    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, Function1 function1) {
        return fVar.e(new DrawBehindElement(function1));
    }
}
