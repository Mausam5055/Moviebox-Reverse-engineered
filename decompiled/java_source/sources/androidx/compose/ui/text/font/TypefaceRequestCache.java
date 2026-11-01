package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class TypefaceRequestCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.text.platform.p f6108a = androidx.compose.ui.text.platform.o.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m0.b f6109b = new m0.b(16);

    public final androidx.compose.ui.text.platform.p b() {
        return this.f6108a;
    }

    public final a3 c(final d0 d0Var, Function1 function1) {
        synchronized (this.f6108a) {
            e0 e0Var = (e0) this.f6109b.d(d0Var);
            if (e0Var != null) {
                if (e0Var.a()) {
                    return e0Var;
                }
            }
            try {
                e0 e0Var2 = (e0) function1.invoke(new Function1<e0, Unit>() { // from class: androidx.compose.ui.text.font.TypefaceRequestCache$runCached$currentTypefaceResult$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((e0) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(e0 e0Var3) {
                        androidx.compose.ui.text.platform.p pVarB = this.this$0.b();
                        TypefaceRequestCache typefaceRequestCache = this.this$0;
                        d0 d0Var2 = d0Var;
                        synchronized (pVarB) {
                            try {
                                if (e0Var3.a()) {
                                    typefaceRequestCache.f6109b.e(d0Var2, e0Var3);
                                } else {
                                    typefaceRequestCache.f6109b.f(d0Var2);
                                }
                                Unit unit = Unit.f67061a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                });
                synchronized (this.f6108a) {
                    try {
                        if (this.f6109b.d(d0Var) == null && e0Var2.a()) {
                            this.f6109b.e(d0Var, e0Var2);
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return e0Var2;
            } catch (Exception e11) {
                throw new IllegalStateException("Could not load font", e11);
            }
        }
    }
}
