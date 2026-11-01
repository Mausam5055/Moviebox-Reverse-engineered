package sg;

import android.util.Log;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.exception.ApiException;
import com.tn.lib.net.exception.ServerException;
import io.reactivex.rxjava3.core.o;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0915a f75346b = new C0915a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f75347c = "0";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75348a = "TNBaseObserver";

    /* JADX INFO: renamed from: sg.a$a, reason: collision with other inner class name */
    public static final class C0915a {
        private C0915a() {
        }

        public /* synthetic */ C0915a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public abstract void a(String str, String str2);

    @Override // io.reactivex.rxjava3.core.o
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onNext(BaseDto t11) {
        Intrinsics.h(t11, "t");
        if (Intrinsics.c(t11.getCode(), f75347c)) {
            lg.a.C0828a.f(lg.a.f68839a, this.f75348a, "onNext: data=" + t11.getData(), false, 4, null);
            c(t11.getData());
            d(t11);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f75348a, "onNext: Server errorInfo=" + t11.getData(), false, 4, null);
        try {
            a(wg.a.f77671a.a(new ServerException(t11.getCode(), t11.getMsg())).getErrCode(), t11.getMsg());
            Unit unit = Unit.f67061a;
        } catch (Exception e11) {
            Log.e(this.f75348a, "onNext Exception " + e11.getMessage());
        }
    }

    public void c(Object obj) {
    }

    public void d(BaseDto baseDto) {
        Intrinsics.h(baseDto, "baseDto");
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        lg.a.C0828a.f(lg.a.f68839a, this.f75348a, "onComplete", false, 4, null);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable e11) {
        Intrinsics.h(e11, "e");
        try {
            ApiException apiExceptionA = wg.a.f77671a.a(e11);
            lg.a.C0828a.f(lg.a.f68839a, this.f75348a, "onError: errorInfo=" + e11, false, 4, null);
            a(apiExceptionA.getErrCode(), apiExceptionA.getErrMsg());
        } catch (Exception e12) {
            Log.e(this.f75348a, "onError Exception " + e12.getMessage());
            a("", e12.getMessage());
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
        Intrinsics.h(d11, "d");
        lg.a.C0828a.f(lg.a.f68839a, this.f75348a, "Disposable=" + d11.isDisposed(), false, 4, null);
    }
}
