package kp;

import com.blankj.utilcode.util.o;
import com.transsion.publish.api.bean.RequestPostEntity;
import io.reactivex.rxjava3.core.j;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f68368a = LazyKt.b(new Function0() { // from class: kp.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.g();
        }
    });

    private final String b() {
        return vg.a.f77324a.a();
    }

    private final RequestBody c(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    private final lp.a d() {
        return (lp.a) this.f68368a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lp.a g() {
        return (lp.a) c.f79414e.a().h(lp.a.class);
    }

    public final j e(RequestPostEntity entity) {
        Intrinsics.h(entity, "entity");
        String strJ = o.j(entity);
        Intrinsics.g(strJ, "toJson(...)");
        return d().b(b(), c(strJ));
    }

    public final j f(RequestPostEntity entity) {
        Intrinsics.h(entity, "entity");
        String strJ = o.j(entity);
        Intrinsics.g(strJ, "toJson(...)");
        return d().c(b(), c(strJ));
    }
}
