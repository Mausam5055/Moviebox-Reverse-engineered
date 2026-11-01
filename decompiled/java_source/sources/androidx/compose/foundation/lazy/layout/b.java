package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public interface b {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f3033c;

        public a(int i11, int i12, Object obj) {
            this.f3031a = i11;
            this.f3032b = i12;
            this.f3033c = obj;
            if (i11 < 0) {
                throw new IllegalArgumentException(("startIndex should be >= 0, but was " + i11).toString());
            }
            if (i12 > 0) {
                return;
            }
            throw new IllegalArgumentException(("size should be >0, but was " + i12).toString());
        }

        public final int a() {
            return this.f3032b;
        }

        public final int b() {
            return this.f3031a;
        }

        public final Object c() {
            return this.f3033c;
        }
    }

    void a(int i11, int i12, Function1 function1);

    a get(int i11);

    int getSize();
}
