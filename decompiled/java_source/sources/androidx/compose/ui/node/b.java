package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties$CC;
import androidx.compose.ui.focus.FocusRequester;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class b implements androidx.compose.ui.focus.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f5380a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f5381b;

    private b() {
    }

    public final boolean a() {
        return f5381b != null;
    }

    public final void b() {
        f5381b = null;
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester i() {
        return FocusProperties$CC.e(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester j() {
        return FocusProperties$CC.i(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester k() {
        return FocusProperties$CC.f(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester m() {
        return FocusProperties$CC.h(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester n() {
        return FocusProperties$CC.j(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ Function1 o() {
        return FocusProperties$CC.d(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester p() {
        return FocusProperties$CC.b(this);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester q() {
        return FocusProperties$CC.a(this);
    }

    @Override // androidx.compose.ui.focus.k
    public void r(boolean z10) {
        f5381b = Boolean.valueOf(z10);
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ Function1 s() {
        return FocusProperties$CC.c(this);
    }

    @Override // androidx.compose.ui.focus.k
    public boolean t() {
        Boolean bool = f5381b;
        if (bool != null) {
            return bool.booleanValue();
        }
        g0.a.c("canFocus is read before it is written");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.ui.focus.k
    public /* synthetic */ FocusRequester u() {
        return FocusProperties$CC.g(this);
    }
}
