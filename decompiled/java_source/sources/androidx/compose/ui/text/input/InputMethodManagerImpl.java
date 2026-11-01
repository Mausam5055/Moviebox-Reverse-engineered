package androidx.compose.ui.text.input;

import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class InputMethodManagerImpl implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f6199b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<InputMethodManager>() { // from class: androidx.compose.ui.text.input.InputMethodManagerImpl$imm$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final InputMethodManager invoke() {
            Object systemService = this.this$0.f6198a.getContext().getSystemService("input_method");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            return (InputMethodManager) systemService;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SoftwareKeyboardControllerCompat f6200c;

    public InputMethodManagerImpl(View view) {
        this.f6198a = view;
        this.f6200c = new SoftwareKeyboardControllerCompat(view);
    }

    private final InputMethodManager c() {
        return (InputMethodManager) this.f6199b.getValue();
    }

    @Override // androidx.compose.ui.text.input.r
    public void a(CursorAnchorInfo cursorAnchorInfo) {
        c().updateCursorAnchorInfo(this.f6198a, cursorAnchorInfo);
    }

    @Override // androidx.compose.ui.text.input.r
    public boolean isActive() {
        return c().isActive(this.f6198a);
    }
}
