package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.r0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAnchorInfoController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.input.pointer.i0 f6180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f6181b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6187h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f6188i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextFieldValue f6189j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.compose.ui.text.z f6190k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private v f6191l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private y.i f6193n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private y.i f6194o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f6182c = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Function1 f6192m = new Function1<i4, Unit>() { // from class: androidx.compose.ui.text.input.CursorAnchorInfoController$textFieldToRootTransform$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m177invoke58bKbWc(((i4) obj).r());
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke-58bKbWc, reason: not valid java name */
        public final void m177invoke58bKbWc(float[] fArr) {
        }
    };

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CursorAnchorInfo.Builder f6195p = new CursorAnchorInfo.Builder();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float[] f6196q = i4.c(null, 1, null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Matrix f6197r = new Matrix();

    public CursorAnchorInfoController(androidx.compose.ui.input.pointer.i0 i0Var, r rVar) {
        this.f6180a = i0Var;
        this.f6181b = rVar;
    }

    private final void b() {
        if (this.f6181b.isActive()) {
            this.f6192m.invoke(i4.a(this.f6196q));
            this.f6180a.mo115localToScreen58bKbWc(this.f6196q);
            r0.a(this.f6197r, this.f6196q);
            r rVar = this.f6181b;
            CursorAnchorInfo.Builder builder = this.f6195p;
            TextFieldValue textFieldValue = this.f6189j;
            Intrinsics.e(textFieldValue);
            v vVar = this.f6191l;
            Intrinsics.e(vVar);
            androidx.compose.ui.text.z zVar = this.f6190k;
            Intrinsics.e(zVar);
            Matrix matrix = this.f6197r;
            y.i iVar = this.f6193n;
            Intrinsics.e(iVar);
            y.i iVar2 = this.f6194o;
            Intrinsics.e(iVar2);
            rVar.a(j.b(builder, textFieldValue, vVar, zVar, matrix, iVar, iVar2, this.f6185f, this.f6186g, this.f6187h, this.f6188i));
            this.f6184e = false;
        }
    }

    public final void a(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        synchronized (this.f6182c) {
            try {
                this.f6185f = z12;
                this.f6186g = z13;
                this.f6187h = z14;
                this.f6188i = z15;
                if (z10) {
                    this.f6184e = true;
                    if (this.f6189j != null) {
                        b();
                    }
                }
                this.f6183d = z11;
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
