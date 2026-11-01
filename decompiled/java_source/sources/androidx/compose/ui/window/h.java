package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class h implements f {
    @Override // androidx.compose.ui.window.f
    public void a(View view, Rect rect) {
        view.getWindowVisibleDisplayFrame(rect);
    }
}
