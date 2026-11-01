package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public interface m extends e2 {

    public static final class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f67898a;

        public a(Function1 function1) {
            this.f67898a = function1;
        }

        @Override // kotlinx.coroutines.m
        public void a(Throwable th2) {
            this.f67898a.invoke(th2);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + p0.a(this.f67898a) + '@' + p0.b(this) + ']';
        }
    }

    void a(Throwable th2);
}
