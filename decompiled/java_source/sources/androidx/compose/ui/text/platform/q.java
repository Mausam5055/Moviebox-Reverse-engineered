package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.a3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a3 f6333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q f6334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f6335c;

    public q(a3 a3Var, q qVar) {
        this.f6333a = a3Var;
        this.f6334b = qVar;
        this.f6335c = a3Var.getValue();
    }

    public final Typeface a() {
        Object obj = this.f6335c;
        Intrinsics.f(obj, "null cannot be cast to non-null type android.graphics.Typeface");
        return (Typeface) obj;
    }

    public final boolean b() {
        q qVar;
        return this.f6333a.getValue() != this.f6335c || ((qVar = this.f6334b) != null && qVar.b());
    }
}
