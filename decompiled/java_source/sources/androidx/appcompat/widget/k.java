package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class k extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f2047b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2048a;

    public k(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        a(context, attributeSet, i11, i12);
    }

    private void a(Context context, AttributeSet attributeSet, int i11, int i12) {
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.PopupWindow, i11, i12);
        if (j0VarV.s(R$styleable.PopupWindow_overlapAnchor)) {
            b(j0VarV.a(R$styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(j0VarV.g(R$styleable.PopupWindow_android_popupBackground));
        j0VarV.x();
    }

    private void b(boolean z10) {
        if (f2047b) {
            this.f2048a = z10;
        } else {
            androidx.core.widget.l.a(this, z10);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i11, int i12) {
        if (f2047b && this.f2048a) {
            i12 -= view.getHeight();
        }
        super.showAsDropDown(view, i11, i12);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i11, int i12, int i13) {
        if (f2047b && this.f2048a) {
            i12 -= view.getHeight();
        }
        super.showAsDropDown(view, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i11, int i12, int i13, int i14) {
        if (f2047b && this.f2048a) {
            i12 -= view.getHeight();
        }
        super.update(view, i11, i12, i13, i14);
    }
}
