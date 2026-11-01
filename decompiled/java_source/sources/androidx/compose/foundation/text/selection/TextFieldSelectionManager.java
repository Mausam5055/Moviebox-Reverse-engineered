package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.f;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.platform.h2;
import androidx.compose.ui.platform.q0;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.b0;
import androidx.compose.ui.text.c0;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.d0;
import androidx.compose.ui.text.input.j0;
import androidx.compose.ui.text.input.v;
import androidx.compose.ui.text.input.w;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import y.g;
import y.i;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.foundation.text.d f3325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v f3326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f3327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f3328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j0 f3329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q0 f3330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private h2 f3331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i1 f3332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i1 f3333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f3334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f3335k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final i1 f3336l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final i1 f3337m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3338n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextFieldValue f3339o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.compose.foundation.text.c f3340p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.compose.foundation.text.selection.a f3341q;

    public static final class a implements androidx.compose.foundation.text.selection.a {
        a() {
        }
    }

    public static final class b implements androidx.compose.foundation.text.c {
        b() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public TextFieldSelectionManager(androidx.compose.foundation.text.d dVar) {
        this.f3325a = dVar;
        this.f3326b = f.b();
        this.f3327c = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$onValueChange$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((TextFieldValue) obj);
                return Unit.f67061a;
            }

            public final void invoke(TextFieldValue textFieldValue) {
            }
        };
        this.f3328d = u2.c(new TextFieldValue((String) null, 0L, (b0) null, 7, (DefaultConstructorMarker) null), null, 2, null);
        this.f3329e = j0.f6233a.a();
        Boolean bool = Boolean.TRUE;
        this.f3332h = u2.c(bool, null, 2, null);
        this.f3333i = u2.c(bool, null, 2, null);
        g.a aVar = g.f78470b;
        this.f3334j = aVar.c();
        this.f3335k = aVar.c();
        this.f3336l = u2.c(null, null, 2, null);
        this.f3337m = u2.c(null, null, 2, null);
        this.f3338n = -1;
        this.f3339o = new TextFieldValue((String) null, 0L, (b0) null, 7, (DefaultConstructorMarker) null);
        this.f3340p = new b();
        this.f3341q = new a();
    }

    public /* synthetic */ TextFieldSelectionManager(androidx.compose.foundation.text.d dVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : dVar);
    }

    public static /* synthetic */ void b(TextFieldSelectionManager textFieldSelectionManager, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        textFieldSelectionManager.a(z10);
    }

    private final TextFieldValue c(AnnotatedString annotatedString, long j11) {
        return new TextFieldValue(annotatedString, j11, (b0) null, 4, (DefaultConstructorMarker) null);
    }

    private final i f() {
        return i.f78475e.a();
    }

    private final void m(HandleState handleState) {
    }

    private final void o(boolean z10) {
        if (z10) {
            n();
        } else {
            j();
        }
    }

    public final void a(boolean z10) {
        if (b0.f(i().e())) {
            return;
        }
        q0 q0Var = this.f3330f;
        if (q0Var != null) {
            q0Var.c(d0.a(i()));
        }
        if (z10) {
            int i11 = b0.i(i().e());
            this.f3327c.invoke(c(i().c(), c0.b(i11, i11)));
            m(HandleState.None);
        }
    }

    public final void d() {
        if (b0.f(i().e())) {
            return;
        }
        q0 q0Var = this.f3330f;
        if (q0Var != null) {
            q0Var.c(d0.a(i()));
        }
        AnnotatedString annotatedStringN = d0.c(i(), i().f().length()).n(d0.b(i(), i().f().length()));
        int iJ = b0.j(i().e());
        this.f3327c.invoke(c(annotatedStringN, c0.b(iJ, iJ)));
        m(HandleState.None);
        androidx.compose.foundation.text.d dVar = this.f3325a;
        if (dVar != null) {
            dVar.a();
        }
    }

    public final void e(boolean z10) {
        this.f3339o = i();
        o(z10);
        m(HandleState.Selection);
    }

    public final boolean g() {
        return ((Boolean) this.f3332h.getValue()).booleanValue();
    }

    public final boolean h() {
        return ((Boolean) this.f3333i.getValue()).booleanValue();
    }

    public final TextFieldValue i() {
        return (TextFieldValue) this.f3328d.getValue();
    }

    public final void j() {
        h2 h2Var;
        h2 h2Var2 = this.f3331g;
        if ((h2Var2 != null ? h2Var2.getStatus() : null) != TextToolbarStatus.Shown || (h2Var = this.f3331g) == null) {
            return;
        }
        h2Var.hide();
    }

    public final void k() {
        AnnotatedString annotatedStringA;
        q0 q0Var = this.f3330f;
        if (q0Var == null || (annotatedStringA = q0Var.a()) == null) {
            return;
        }
        AnnotatedString annotatedStringN = d0.c(i(), i().f().length()).n(annotatedStringA).n(d0.b(i(), i().f().length()));
        int iJ = b0.j(i().e()) + annotatedStringA.length();
        this.f3327c.invoke(c(annotatedStringN, c0.b(iJ, iJ)));
        m(HandleState.None);
        androidx.compose.foundation.text.d dVar = this.f3325a;
        if (dVar != null) {
            dVar.a();
        }
    }

    public final void l() {
        TextFieldValue textFieldValueC = c(i().c(), c0.b(0, i().f().length()));
        this.f3327c.invoke(textFieldValueC);
        this.f3339o = TextFieldValue.b(this.f3339o, null, textFieldValueC.e(), null, 5, null);
        e(true);
    }

    public final void n() {
        q0 q0Var;
        if (h()) {
            boolean z10 = this.f3329e instanceof w;
            Function0<Unit> function0 = (b0.f(i().e()) || z10) ? null : new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$copy$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m65invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m65invoke() {
                    TextFieldSelectionManager.b(this.this$0, false, 1, null);
                    this.this$0.j();
                }
            };
            Function0<Unit> function1 = (b0.f(i().e()) || !g() || z10) ? null : new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$cut$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m66invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m66invoke() {
                    this.this$0.d();
                    this.this$0.j();
                }
            };
            Function0<Unit> function2 = (g() && (q0Var = this.f3330f) != null && q0Var.b()) ? new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$paste$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m67invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m67invoke() {
                    this.this$0.k();
                    this.this$0.j();
                }
            } : null;
            Function0<Unit> function3 = b0.h(i().e()) != i().f().length() ? new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$selectAll$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m68invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m68invoke() {
                    this.this$0.l();
                }
            } : null;
            h2 h2Var = this.f3331g;
            if (h2Var != null) {
                h2Var.a(f(), function0, function2, function1, function3);
            }
        }
    }
}
