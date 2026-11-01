package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class h extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.text.f f6323a;

    public h(androidx.compose.ui.text.f fVar) {
        this.f6323a = fVar;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        this.f6323a.a();
    }
}
