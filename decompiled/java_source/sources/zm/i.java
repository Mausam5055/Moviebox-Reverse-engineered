package zm;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f79438a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f79439b = LazyKt.b(new Function0() { // from class: zm.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return i.c();
        }
    });

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 c() {
        return new b0();
    }

    public final b0 b() {
        return (b0) f79439b.getValue();
    }
}
