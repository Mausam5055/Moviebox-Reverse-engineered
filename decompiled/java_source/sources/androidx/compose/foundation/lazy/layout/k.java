package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3058a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3059b = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f3060c = o0.q.a(Integer.MAX_VALUE, Integer.MAX_VALUE);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return k.f3060c;
        }
    }

    public abstract void b(long j11, boolean z10);

    public abstract void c();

    public abstract long d();

    public abstract GraphicsLayer e();

    public abstract long f();

    public abstract long g();

    public abstract long h();

    public abstract boolean i();

    public abstract void j();

    public abstract void k(long j11);

    public abstract void l(long j11);

    public abstract void m(long j11);
}
