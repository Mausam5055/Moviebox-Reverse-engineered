package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.y4;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6422a = a.f6423a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f6423a = new a();

        private a() {
        }

        public final l a(j1 j1Var, float f11) {
            if (j1Var == null) {
                return b.f6424b;
            }
            if (j1Var instanceof b5) {
                return b(k.b(((b5) j1Var).b(), f11));
            }
            if (j1Var instanceof y4) {
                return new androidx.compose.ui.text.style.b((y4) j1Var, f11);
            }
            throw new NoWhenBranchMatchedException();
        }

        public final l b(long j11) {
            return j11 != 16 ? new c(j11, null) : b.f6424b;
        }
    }

    public static final class b implements l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f6424b = new b();

        private b() {
        }

        @Override // androidx.compose.ui.text.style.l
        public long a() {
            return u1.f4658b.e();
        }

        @Override // androidx.compose.ui.text.style.l
        public /* synthetic */ l b(Function0 function0) {
            return TextForegroundStyle$CC.b(this, function0);
        }

        @Override // androidx.compose.ui.text.style.l
        public /* synthetic */ l c(l lVar) {
            return TextForegroundStyle$CC.a(this, lVar);
        }

        @Override // androidx.compose.ui.text.style.l
        public j1 d() {
            return null;
        }

        @Override // androidx.compose.ui.text.style.l
        public float getAlpha() {
            return Float.NaN;
        }
    }

    long a();

    l b(Function0 function0);

    l c(l lVar);

    j1 d();

    float getAlpha();
}
