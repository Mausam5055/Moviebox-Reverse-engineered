package androidx.compose.ui.platform;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class y0 extends a1 implements androidx.compose.ui.f.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f5881c;

    public final class a implements androidx.compose.ui.f.b {
        public a() {
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ Object b(Object obj, Function2 function2) {
            return androidx.compose.ui.g.b(this, obj, function2);
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ boolean c(Function1 function1) {
            return androidx.compose.ui.g.a(this, function1);
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
            return androidx.compose.ui.e.a(this, fVar);
        }
    }

    public y0(Function1 function1) {
        super(function1);
        this.f5881c = new a();
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }
}
