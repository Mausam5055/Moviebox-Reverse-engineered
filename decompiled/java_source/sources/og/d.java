package og;

import com.google.gson.Gson;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import q7.e;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements mg.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f71014b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f71015c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: og.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.k();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gson f71016a = new Gson();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return (d) d.f71015c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d k() {
        return new d();
    }

    @Override // mg.a
    public void a(String msg) {
        Intrinsics.h(msg, "msg");
        e.d(msg);
    }

    @Override // mg.a
    public void b(String msg) {
        Intrinsics.h(msg, "msg");
        e.c(msg);
    }

    @Override // mg.a
    public void c(String msg) {
        Intrinsics.h(msg, "msg");
        e.b(msg);
    }

    @Override // mg.a
    public void d(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).w(msg);
    }

    @Override // mg.a
    public void e(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).u(msg);
    }

    @Override // mg.a
    public void f(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).z(msg);
    }

    @Override // mg.a
    public void g(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).v(msg);
    }

    @Override // mg.a
    public void h(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        e.g(tag).y(msg);
    }
}
