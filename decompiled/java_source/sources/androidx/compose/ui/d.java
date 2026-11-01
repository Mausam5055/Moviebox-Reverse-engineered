package androidx.compose.ui;

import androidx.compose.ui.platform.a1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
class d extends a1 implements f.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function3 f4132c;

    public d(Function1 function1, Function3 function3) {
        super(function1);
        this.f4132c = function3;
    }

    public final Function3 a() {
        return this.f4132c;
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ f e(f fVar) {
        return e.a(this, fVar);
    }
}
