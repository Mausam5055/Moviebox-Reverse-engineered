package androidx.compose.ui.platform;

import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public final class a3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a3 f5731a = new a3();

    private a3() {
    }

    public final void a(AndroidComposeView androidComposeView) {
        ViewParent parent = androidComposeView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
        }
    }
}
