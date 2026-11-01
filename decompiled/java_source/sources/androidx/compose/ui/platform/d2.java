package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;

/* JADX INFO: loaded from: classes.dex */
public final class d2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SemanticsNode f5774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f5775b;

    public d2(SemanticsNode semanticsNode, Rect rect) {
        this.f5774a = semanticsNode;
        this.f5775b = rect;
    }

    public final Rect a() {
        return this.f5775b;
    }

    public final SemanticsNode b() {
        return this.f5774a;
    }
}
