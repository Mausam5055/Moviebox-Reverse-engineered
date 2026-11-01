package androidx.compose.ui.text.input;

import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.graphics.u4;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f6230a = new g();

    private g() {
    }

    @JvmStatic
    public static final CursorAnchorInfo.Builder a(CursorAnchorInfo.Builder builder, y.i iVar) {
        return builder.setEditorBoundsInfo(b.a().setEditorBounds(u4.c(iVar)).setHandwritingBounds(u4.c(iVar)).build());
    }
}
