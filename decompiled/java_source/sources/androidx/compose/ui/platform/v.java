package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewStructure;

/* JADX INFO: loaded from: classes.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f5867a = new v();

    private v() {
    }

    public final void a(ViewStructure viewStructure, View view) {
        viewStructure.setClassName(view.getAccessibilityClassName().toString());
    }
}
