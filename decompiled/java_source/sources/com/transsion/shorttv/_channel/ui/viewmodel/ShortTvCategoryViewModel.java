package com.transsion.shorttv._channel.ui.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv._channel.model.ShortTvCategoryBean;
import com.transsion.shorttv._channel.model.ShortTvCategoryItemBean;
import com.transsion.shorttv.bean.Subject;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvCategoryViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f52633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f52634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f52635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f52636e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvCategoryViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52633b = 1;
        this.f52634c = 10;
        this.f52635d = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvCategoryViewModel.n();
            }
        });
        this.f52636e = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvCategoryViewModel.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 h() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final nr.a l() {
        return (nr.a) this.f52635d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(ShortTvCategoryBean shortTvCategoryBean) {
        List<ShortTvCategoryItemBean> list;
        if (shortTvCategoryBean == null || (list = shortTvCategoryBean.getList()) == null) {
            return;
        }
        for (ShortTvCategoryItemBean shortTvCategoryItemBean : list) {
            Subject subject = shortTvCategoryItemBean.getSubject();
            String ops = subject != null ? subject.getOps() : null;
            if (ops == null || ops.length() == 0) {
                Subject subject2 = shortTvCategoryItemBean.getSubject();
                if (subject2 != null) {
                    subject2.setOps(shortTvCategoryBean.getOps());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final nr.a n() {
        return (nr.a) zg.c.f79414e.a().h(nr.a.class);
    }

    public final void i(String type) {
        Intrinsics.h(type, "type");
        k.d(u0.a(this), y0.b(), null, new ShortTvCategoryViewModel$getCategoryList$1(type, this, null), 2, null);
    }

    public final b0 j() {
        return (b0) this.f52636e.getValue();
    }

    public final int k() {
        return this.f52633b;
    }

    public final void o(int i11) {
        this.f52633b = i11;
    }
}
