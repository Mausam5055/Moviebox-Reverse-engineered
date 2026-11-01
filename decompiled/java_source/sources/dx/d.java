package dx;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f61455a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f61456b = LazyKt.b(new Function0() { // from class: dx.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.g();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f61457c = LazyKt.b(new Function0() { // from class: dx.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.f();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f61458d = LazyKt.b(new Function0() { // from class: dx.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.e();
        }
    });

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 e() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 f() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 g() {
        return new b0();
    }

    public final b0 d() {
        return (b0) f61456b.getValue();
    }
}
