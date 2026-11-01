package androidx.activity;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Lp1/a;", "invoke", "()Lp1/a;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class ActivityViewModelLazyKt$viewModels$4 extends Lambda implements Function0<p1.a> {
    final /* synthetic */ Function0<p1.a> $extrasProducer;
    final /* synthetic */ ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActivityViewModelLazyKt$viewModels$4(Function0<? extends p1.a> function0, ComponentActivity componentActivity) {
        super(0);
        this.$extrasProducer = function0;
        this.$this_viewModels = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final p1.a invoke() {
        p1.a aVar;
        Function0<p1.a> function0 = this.$extrasProducer;
        return (function0 == null || (aVar = (p1.a) function0.invoke()) == null) ? this.$this_viewModels.getDefaultViewModelCreationExtras() : aVar;
    }
}
