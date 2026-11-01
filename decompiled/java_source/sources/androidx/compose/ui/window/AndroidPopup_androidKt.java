package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;
import o0.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidPopup_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f6521a = CompositionLocalKt.d(null, new Function0<String>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$LocalPopupTestTag$1
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return "DEFAULT_TEST_TAG";
        }
    }, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(j jVar, boolean z10) {
        throw null;
    }

    public static final boolean d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final r e(Rect rect) {
        return new r(rect.left, rect.top, rect.right, rect.bottom);
    }
}
