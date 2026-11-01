package com.transsnet.flow.event;

import androidx.annotation.Keep;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/transsnet/flow/event/AppScopeVMlProvider;", "Landroidx/lifecycle/y0;", "<init>", "()V", "Landroidx/lifecycle/t0;", "T", "Ljava/lang/Class;", "modelClass", "getApplicationScopeViewModel", "(Ljava/lang/Class;)Landroidx/lifecycle/t0;", "Landroidx/lifecycle/x0;", "eventViewModelStore", "Landroidx/lifecycle/x0;", "Landroidx/lifecycle/v0;", "mApplicationProvider$delegate", "Lkotlin/Lazy;", "getMApplicationProvider", "()Landroidx/lifecycle/v0;", "mApplicationProvider", "getViewModelStore", "()Landroidx/lifecycle/x0;", "viewModelStore", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppScopeVMlProvider implements y0 {
    public static final AppScopeVMlProvider INSTANCE = new AppScopeVMlProvider();
    private static final x0 eventViewModelStore = new x0();

    /* JADX INFO: renamed from: mApplicationProvider$delegate, reason: from kotlin metadata */
    private static final Lazy mApplicationProvider = LazyKt.b(new Function0() { // from class: com.transsnet.flow.event.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AppScopeVMlProvider.mApplicationProvider_delegate$lambda$0();
        }
    });

    private AppScopeVMlProvider() {
    }

    private final v0 getMApplicationProvider() {
        return (v0) mApplicationProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final v0 mApplicationProvider_delegate$lambda$0() {
        return new v0(INSTANCE, v0.a.f9652e.a(b.f60254a.a()));
    }

    public final <T extends t0> T getApplicationScopeViewModel(Class<T> modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        return (T) getMApplicationProvider().a(modelClass);
    }

    @Override // androidx.p009lifecycle.y0
    public x0 getViewModelStore() {
        return eventViewModelStore;
    }
}
