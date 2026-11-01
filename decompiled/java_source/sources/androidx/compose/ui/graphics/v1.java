package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class v1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4675b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ColorFilter f4676a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ v1 b(a aVar, long j11, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i11 = c1.f4292a.z();
            }
            return aVar.a(j11, i11);
        }

        public final v1 a(long j11, int i11) {
            return new d1(j11, i11, (DefaultConstructorMarker) null);
        }
    }

    public v1(ColorFilter colorFilter) {
        this.f4676a = colorFilter;
    }

    public final ColorFilter a() {
        return this.f4676a;
    }
}
