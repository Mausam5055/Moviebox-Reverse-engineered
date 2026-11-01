package d0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61122a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f61123b = d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f61124c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f61125d = d(2);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return c.f61125d;
        }

        public final int b() {
            return c.f61124c;
        }

        public final int c() {
            return c.f61123b;
        }
    }

    public static int d(int i11) {
        return i11;
    }

    public static final boolean e(int i11, int i12) {
        return i11 == i12;
    }
}
