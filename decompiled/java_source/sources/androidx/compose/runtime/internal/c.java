package androidx.compose.runtime.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3763a;

    public c() {
        this(0, 1, null);
    }

    public c(int i11) {
        this.f3763a = i11;
    }

    public /* synthetic */ c(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public final int a() {
        return this.f3763a;
    }

    public final void b(int i11) {
        this.f3763a = i11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("IntRef(element = ");
        sb2.append(this.f3763a);
        sb2.append(")@");
        String string = Integer.toString(hashCode(), CharsKt.a(16));
        Intrinsics.g(string, "toString(this, checkRadix(radix))");
        sb2.append(string);
        return sb2.toString();
    }
}
