package om;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f71037a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f71038b = LazyKt.b(new Function0() { // from class: om.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            e.a();
            return null;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f71039c = LazyKt.b(new Function0() { // from class: om.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.e();
        }
    });

    private e() {
    }

    public static /* synthetic */ a a() {
        c();
        return null;
    }

    private static final a c() {
        android.support.v4.media.session.c.a(zg.c.f79414e.a().h(a.class));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV e() {
        return MMKV.I("mb_web_res");
    }

    public final void d() {
        b.f71036a.b();
    }
}
