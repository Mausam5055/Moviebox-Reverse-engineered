package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.w;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultFlingBehavior implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w f2649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.ui.j f2650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2651c;

    public DefaultFlingBehavior(w wVar, androidx.compose.ui.j jVar) {
        this.f2649a = wVar;
        this.f2650b = jVar;
    }

    public /* synthetic */ DefaultFlingBehavior(w wVar, androidx.compose.ui.j jVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(wVar, (i11 & 2) != 0 ? ScrollableKt.e() : jVar);
    }

    @Override // androidx.compose.foundation.gestures.g
    public Object a(k kVar, float f11, Continuation continuation) {
        this.f2651c = 0;
        return kotlinx.coroutines.i.g(this.f2650b, new DefaultFlingBehavior$performFling$2(f11, this, kVar, null), continuation);
    }

    public final w b() {
        return this.f2649a;
    }

    public final int c() {
        return this.f2651c;
    }

    public final void d(w wVar) {
        this.f2649a = wVar;
    }

    public final void e(int i11) {
        this.f2651c = i11;
    }
}
