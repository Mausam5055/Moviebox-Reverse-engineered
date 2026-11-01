package androidx.compose.ui.platform;

import androidx.compose.ui.semantics.SemanticsNode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.semantics.i f5751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.collection.f0 f5752b = androidx.collection.r.b();

    public c2(SemanticsNode semanticsNode, androidx.collection.o oVar) {
        this.f5751a = semanticsNode.w();
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i11 = 0; i11 < size; i11++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i11);
            if (oVar.a(semanticsNode2.o())) {
                this.f5752b.f(semanticsNode2.o());
            }
        }
    }

    public final androidx.collection.f0 a() {
        return this.f5752b;
    }

    public final androidx.compose.ui.semantics.i b() {
        return this.f5751a;
    }
}
