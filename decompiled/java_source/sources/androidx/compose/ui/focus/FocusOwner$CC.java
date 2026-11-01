package androidx.compose.ui.focus;

import android.view.KeyEvent;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: androidx.compose.ui.focus.FocusOwner$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class FocusOwner$CC {
    public static /* synthetic */ boolean a(i iVar, KeyEvent keyEvent, Function0 function0, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dispatchKeyEvent-YhN2O0w");
        }
        if ((i11 & 2) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.compose.ui.focus.FocusOwner$dispatchKeyEvent$1
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        return iVar.i(keyEvent, function0);
    }
}
