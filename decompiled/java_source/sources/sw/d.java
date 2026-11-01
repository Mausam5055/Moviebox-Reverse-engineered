package sw;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.usercenter.message.model.ResponseMessage;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f75956a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: sw.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.h();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f75957b = LazyKt.b(new Function0() { // from class: sw.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.g();
        }
    });

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            d.this.d().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ResponseMessage responseMessage) {
            d.this.d().n(responseMessage);
        }
    }

    private final sw.a e() {
        return (sw.a) this.f75956a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 g() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final sw.a h() {
        return (sw.a) zg.c.f79414e.a().h(sw.a.class);
    }

    public final b0 d() {
        return (b0) this.f75957b.getValue();
    }

    public final void f(String page, String type) {
        Intrinsics.h(page, "page");
        Intrinsics.h(type, "type");
        e().a(vg.a.f77324a.a(), page, type, 30).f(sg.d.f75349a.c()).subscribe(new a());
    }
}
