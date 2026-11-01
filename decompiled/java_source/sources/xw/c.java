package xw;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f78448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f78449c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f78448b = LazyKt.b(new Function0() { // from class: xw.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.e();
            }
        });
        this.f78449c = LazyKt.b(new Function0() { // from class: xw.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 e() {
        return new b0();
    }

    private final b0 g() {
        return (b0) this.f78448b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi h() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    public final LiveData f() {
        return g();
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        super.onCleared();
    }
}
