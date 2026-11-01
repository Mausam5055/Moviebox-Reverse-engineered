package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.semantics.SemanticsNode;
import o0.r;

/* JADX INFO: loaded from: classes.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SemanticsNode f5904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r f5906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l f5907d;

    public i(SemanticsNode semanticsNode, int i11, r rVar, l lVar) {
        this.f5904a = semanticsNode;
        this.f5905b = i11;
        this.f5906c = rVar;
        this.f5907d = lVar;
    }

    public final l a() {
        return this.f5907d;
    }

    public final int b() {
        return this.f5905b;
    }

    public final SemanticsNode c() {
        return this.f5904a;
    }

    public final r d() {
        return this.f5906c;
    }

    public String toString() {
        return "ScrollCaptureCandidate(node=" + this.f5904a + ", depth=" + this.f5905b + ", viewportBoundsInWindow=" + this.f5906c + ", coordinates=" + this.f5907d + ')';
    }
}
