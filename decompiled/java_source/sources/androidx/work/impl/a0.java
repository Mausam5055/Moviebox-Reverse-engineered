package androidx.work.impl;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15540a = a.f15541a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15541a = new a();

        private a() {
        }

        public static /* synthetic */ a0 c(a aVar, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = true;
            }
            return aVar.b(z10);
        }

        public final a0 a() {
            return c(this, false, 1, null);
        }

        public final a0 b(boolean z10) {
            b0 b0Var = new b0();
            return z10 ? new c0(b0Var) : b0Var;
        }
    }

    boolean a(androidx.work.impl.model.x xVar);

    y b(androidx.work.impl.model.x xVar);

    y c(androidx.work.impl.model.j0 j0Var);

    y d(androidx.work.impl.model.x xVar);

    List remove(String str);
}
