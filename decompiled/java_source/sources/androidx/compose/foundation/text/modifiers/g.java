package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.node.a0;
import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.p;
import androidx.compose.ui.node.x;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class g extends androidx.compose.ui.node.i implements x, n, p {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private h f3321p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Function1 f3322q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final TextAnnotatedStringNode f3323r;

    private g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3) {
        this.f3322q = function3;
        this.f3323r = (TextAnnotatedStringNode) D1(new TextAnnotatedStringNode(annotatedString, d0Var, bVar, function1, i11, z10, i12, i13, list, function2, this.f3321p, x1Var, this.f3322q, null));
        throw new IllegalArgumentException("Do not use SelectionCapableStaticTextModifier unless selectionController != null");
    }

    public /* synthetic */ g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, (i14 & 8) != 0 ? null : function1, (i14 & 16) != 0 ? androidx.compose.ui.text.style.p.f6442a.a() : i11, (i14 & 32) != 0 ? true : z10, (i14 & 64) != 0 ? Integer.MAX_VALUE : i12, (i14 & 128) != 0 ? 1 : i13, (i14 & 256) != 0 ? null : list, (i14 & 512) != 0 ? null : function2, (i14 & 1024) != 0 ? null : hVar, (i14 & 2048) != 0 ? null : x1Var, (i14 & 4096) != 0 ? null : function3, null);
    }

    public /* synthetic */ g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i11, boolean z10, int i12, int i13, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, function1, i11, z10, i12, i13, list, function2, hVar, x1Var, function3);
    }

    public final void J1(AnnotatedString annotatedString, d0 d0Var, List list, int i11, int i12, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i13, Function1 function1, Function1 function2, h hVar, x1 x1Var) {
        TextAnnotatedStringNode textAnnotatedStringNode = this.f3323r;
        textAnnotatedStringNode.K1(textAnnotatedStringNode.T1(x1Var, d0Var), this.f3323r.V1(annotatedString), this.f3323r.U1(d0Var, list, i11, i12, z10, bVar, i13), this.f3323r.S1(function1, function2, hVar, this.f3322q));
        a0.b(this);
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        this.f3323r.L1(cVar);
    }

    @Override // androidx.compose.ui.node.p
    public void v(l lVar) {
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        m.a(this);
    }

    @Override // androidx.compose.ui.node.x
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        return this.f3323r.Q1(xVar, sVar, j11);
    }
}
