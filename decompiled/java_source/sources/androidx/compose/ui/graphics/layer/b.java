package androidx.compose.ui.graphics.layer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4512a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4513b = d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4514c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4515d = d(2);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return b.f4513b;
        }

        public final int b() {
            return b.f4515d;
        }

        public final int c() {
            return b.f4514c;
        }
    }

    public static int d(int i11) {
        return i11;
    }

    public static final boolean e(int i11, int i12) {
        return i11 == i12;
    }
}
