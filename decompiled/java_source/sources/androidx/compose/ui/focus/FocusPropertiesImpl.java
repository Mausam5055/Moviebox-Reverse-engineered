package androidx.compose.ui.focus;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class FocusPropertiesImpl implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4212a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FocusRequester f4213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FocusRequester f4214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FocusRequester f4215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FocusRequester f4216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FocusRequester f4217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private FocusRequester f4218g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FocusRequester f4219h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private FocusRequester f4220i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f4221j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Function1 f4222k;

    public FocusPropertiesImpl() {
        FocusRequester.a aVar = FocusRequester.f4223b;
        this.f4213b = aVar.b();
        this.f4214c = aVar.b();
        this.f4215d = aVar.b();
        this.f4216e = aVar.b();
        this.f4217f = aVar.b();
        this.f4218g = aVar.b();
        this.f4219h = aVar.b();
        this.f4220i = aVar.b();
        this.f4221j = new Function1<b, FocusRequester>() { // from class: androidx.compose.ui.focus.FocusPropertiesImpl$enter$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m108invoke3ESFkO8(((b) obj).o());
            }

            /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
            public final FocusRequester m108invoke3ESFkO8(int i11) {
                return FocusRequester.f4223b.b();
            }
        };
        this.f4222k = new Function1<b, FocusRequester>() { // from class: androidx.compose.ui.focus.FocusPropertiesImpl$exit$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m109invoke3ESFkO8(((b) obj).o());
            }

            /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
            public final FocusRequester m109invoke3ESFkO8(int i11) {
                return FocusRequester.f4223b.b();
            }
        };
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester i() {
        return this.f4217f;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester j() {
        return this.f4219h;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester k() {
        return this.f4213b;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester m() {
        return this.f4218g;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester n() {
        return this.f4215d;
    }

    @Override // androidx.compose.ui.focus.k
    public Function1 o() {
        return this.f4222k;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester p() {
        return this.f4220i;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester q() {
        return this.f4216e;
    }

    @Override // androidx.compose.ui.focus.k
    public void r(boolean z10) {
        this.f4212a = z10;
    }

    @Override // androidx.compose.ui.focus.k
    public Function1 s() {
        return this.f4221j;
    }

    @Override // androidx.compose.ui.focus.k
    public boolean t() {
        return this.f4212a;
    }

    @Override // androidx.compose.ui.focus.k
    public FocusRequester u() {
        return this.f4214c;
    }
}
