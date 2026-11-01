package ap;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f16089a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f16090b = LazyKt.b(new Function0() { // from class: ap.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(b.c());
        }
    });

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c() {
        return false;
    }

    public final boolean b() {
        return ((Boolean) f16090b.getValue()).booleanValue();
    }
}
