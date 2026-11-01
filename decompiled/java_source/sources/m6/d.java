package m6;

import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f69335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f69336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DiffUtil.e f69337c;

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final C0836a f69338d = new C0836a(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Object f69339e = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static Executor f69340f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DiffUtil.e f69341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f69342b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Executor f69343c;

        /* JADX INFO: renamed from: m6.d$a$a, reason: collision with other inner class name */
        public static final class C0836a {
            private C0836a() {
            }

            public /* synthetic */ C0836a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(DiffUtil.e mDiffCallback) {
            Intrinsics.h(mDiffCallback, "mDiffCallback");
            this.f69341a = mDiffCallback;
        }

        public final d a() {
            if (this.f69343c == null) {
                synchronized (f69339e) {
                    try {
                        if (f69340f == null) {
                            f69340f = Executors.newFixedThreadPool(2);
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                this.f69343c = f69340f;
            }
            Executor executor = this.f69342b;
            Executor executor2 = this.f69343c;
            Intrinsics.e(executor2);
            return new d(executor, executor2, this.f69341a);
        }
    }

    public d(Executor executor, Executor backgroundThreadExecutor, DiffUtil.e diffCallback) {
        Intrinsics.h(backgroundThreadExecutor, "backgroundThreadExecutor");
        Intrinsics.h(diffCallback, "diffCallback");
        this.f69335a = executor;
        this.f69336b = backgroundThreadExecutor;
        this.f69337c = diffCallback;
    }

    public final Executor a() {
        return this.f69336b;
    }

    public final DiffUtil.e b() {
        return this.f69337c;
    }

    public final Executor c() {
        return this.f69335a;
    }
}
