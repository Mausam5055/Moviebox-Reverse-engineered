package androidx.compose.material.ripple;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

/* JADX INFO: loaded from: classes.dex */
public interface i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3504a = a.f3505a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f3505a = new a();

        private a() {
        }

        public final c a(long j11, boolean z10) {
            if (z10) {
                return ((double) w1.i(j11)) > 0.5d ? RippleThemeKt.f3486b : RippleThemeKt.f3487c;
            }
            return RippleThemeKt.f3488d;
        }

        public final long b(long j11, boolean z10) {
            return (z10 || ((double) w1.i(j11)) >= 0.5d) ? j11 : u1.f4658b.f();
        }
    }

    long a(androidx.compose.runtime.i iVar, int i11);

    c b(androidx.compose.runtime.i iVar, int i11);
}
