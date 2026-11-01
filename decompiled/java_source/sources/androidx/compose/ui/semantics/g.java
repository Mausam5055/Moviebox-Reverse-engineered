package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f5973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f5974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5975c;

    public g(Function0 function0, Function0 function1, boolean z10) {
        this.f5973a = function0;
        this.f5974b = function1;
        this.f5975c = z10;
    }

    public final Function0 a() {
        return this.f5974b;
    }

    public final boolean b() {
        return this.f5975c;
    }

    public final Function0 c() {
        return this.f5973a;
    }

    public String toString() {
        return "ScrollAxisRange(value=" + ((Number) this.f5973a.invoke()).floatValue() + ", maxValue=" + ((Number) this.f5974b.invoke()).floatValue() + ", reverseScrolling=" + this.f5975c + ')';
    }
}
