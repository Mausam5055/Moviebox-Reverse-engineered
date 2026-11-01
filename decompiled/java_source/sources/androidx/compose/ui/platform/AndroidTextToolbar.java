package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTextToolbar implements h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f5583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ActionMode f5584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h0.b f5585c = new h0.b(new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidTextToolbar$textActionModeCallback$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m159invoke();
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m159invoke() {
            this.this$0.f5584b = null;
        }
    }, null, null, null, null, null, 62, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextToolbarStatus f5586d = TextToolbarStatus.Hidden;

    public AndroidTextToolbar(View view) {
        this.f5583a = view;
    }

    @Override // androidx.compose.ui.platform.h2
    public void a(y.i iVar, Function0 function0, Function0 function1, Function0 function2, Function0 function3) {
        this.f5585c.l(iVar);
        this.f5585c.h(function0);
        this.f5585c.i(function2);
        this.f5585c.j(function1);
        this.f5585c.k(function3);
        ActionMode actionMode = this.f5584b;
        if (actionMode == null) {
            this.f5586d = TextToolbarStatus.Shown;
            this.f5584b = i2.f5823a.b(this.f5583a, new h0.a(this.f5585c), 1);
        } else if (actionMode != null) {
            actionMode.invalidate();
        }
    }

    @Override // androidx.compose.ui.platform.h2
    public TextToolbarStatus getStatus() {
        return this.f5586d;
    }

    @Override // androidx.compose.ui.platform.h2
    public void hide() {
        this.f5586d = TextToolbarStatus.Hidden;
        ActionMode actionMode = this.f5584b;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.f5584b = null;
    }
}
