package androidx.compose.ui.window;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.m;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.platform.AbstractComposeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class DialogLayout extends AbstractComposeView implements d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Window f6526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i1 f6527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f6528k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f6529l;

    public DialogLayout(Context context, Window window) {
        super(context, null, 0, 6, null);
        this.f6526i = window;
        this.f6527j = u2.c(ComposableSingletons$AndroidDialog_androidKt.f6522a.a(), null, 2, null);
    }

    private final Function2 getContent() {
        return (Function2) this.f6527j.getValue();
    }

    private final int getDisplayHeight() {
        return Math.round(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return Math.round(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final void setContent(Function2 function2) {
        this.f6527j.setValue(function2);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(1735448596);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(this) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i12 & 3) == 2 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1735448596, i12, -1, "androidx.compose.ui.window.DialogLayout.Content (AndroidDialog.android.kt:280)");
            }
            getContent().invoke(iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.DialogLayout.Content.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    DialogLayout.this.Content(iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    public final boolean f() {
        return this.f6528k;
    }

    public final void g(boolean z10) {
        this.f6528k = z10;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.f6529l;
    }

    @Override // androidx.compose.ui.window.d
    public Window getWindow() {
        return this.f6526i;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnLayout$ui_release(boolean z10, int i11, int i12, int i13, int i14) {
        View childAt;
        super.internalOnLayout$ui_release(z10, i11, i12, i13, i14);
        if (this.f6528k || (childAt = getChildAt(0)) == null) {
            return;
        }
        getWindow().setLayout(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnMeasure$ui_release(int i11, int i12) {
        if (this.f6528k) {
            super.internalOnMeasure$ui_release(i11, i12);
        } else {
            super.internalOnMeasure$ui_release(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    public final void setContent(m mVar, Function2 function2) {
        setParentCompositionContext(mVar);
        setContent(function2);
        this.f6529l = true;
        createComposition();
    }
}
