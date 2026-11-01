package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class i2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i2 f5823a = new i2();

    private i2() {
    }

    public final void a(ActionMode actionMode) {
        actionMode.invalidateContentRect();
    }

    public final ActionMode b(View view, ActionMode.Callback callback, int i11) {
        return view.startActionMode(callback, i11);
    }
}
