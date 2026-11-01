package com.transsion.usercenter.setting.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class LocaleLanguageViewModel extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57482b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocaleLanguageViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57482b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocaleLanguageViewModel.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 f() {
        return new b0();
    }

    public final void d() {
        k.d(o0.a(y0.b()), null, null, new LocaleLanguageViewModel$getList$1(this, null), 3, null);
    }

    public final b0 e() {
        return (b0) this.f57482b.getValue();
    }
}
