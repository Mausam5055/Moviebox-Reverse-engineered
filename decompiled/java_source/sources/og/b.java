package og;

import android.util.Log;
import com.google.gson.Gson;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements mg.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f71011b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f71012c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: og.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.k();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gson f71013a = new Gson();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f71012c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b k() {
        return new b();
    }

    private final boolean l(String str) {
        return mg.c.f69560a.e() || Log.isLoggable(str, 3);
    }

    @Override // mg.a
    public void a(String msg) {
        Intrinsics.h(msg, "msg");
        l("DefaultTag");
    }

    @Override // mg.a
    public void b(String msg) {
        Intrinsics.h(msg, "msg");
        if (l("DefaultTag")) {
            Log.e("DefaultTag", msg);
        }
    }

    @Override // mg.a
    public void c(String msg) {
        Intrinsics.h(msg, "msg");
        l("DefaultTag");
    }

    @Override // mg.a
    public void d(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            ArraysKt.p0(msg, " , ", null, null, 0, null, null, 62, null);
        }
    }

    @Override // mg.a
    public void e(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            ArraysKt.p0(msg, " , ", null, null, 0, null, null, 62, null);
        }
    }

    @Override // mg.a
    public void f(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.w(tag, ArraysKt.p0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }

    @Override // mg.a
    public void g(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.e(tag, ArraysKt.p0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }

    @Override // mg.a
    public void h(String tag, String... msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (l(tag)) {
            Log.v(tag, ArraysKt.p0(msg, " , ", null, null, 0, null, null, 62, null));
        }
    }
}
