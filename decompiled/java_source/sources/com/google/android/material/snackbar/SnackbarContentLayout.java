package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
public class SnackbarContentLayout extends LinearLayout implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f29794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f29795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeInterpolator f29796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29797d;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29796c = j.g(context, R$attr.motionEasingEmphasizedInterpolator, oa.a.f70919b);
    }

    private static void b(View view, int i11, int i12) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i11, ViewCompat.getPaddingEnd(view), i12);
        } else {
            view.setPadding(view.getPaddingLeft(), i11, view.getPaddingRight(), i12);
        }
    }

    private boolean c(int i11, int i12, int i13) {
        boolean z10;
        if (i11 != getOrientation()) {
            setOrientation(i11);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f29794a.getPaddingTop() == i12 && this.f29794a.getPaddingBottom() == i13) {
            return z10;
        }
        b(this.f29794a, i12, i13);
        return true;
    }

    void a(float f11) {
        if (f11 != 1.0f) {
            this.f29795b.setTextColor(com.google.android.material.color.b.j(com.google.android.material.color.b.d(this, R$attr.colorSurface), this.f29795b.getCurrentTextColor(), f11));
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void animateContentIn(int i11, int i12) {
        this.f29794a.setAlpha(0.0f);
        long j11 = i12;
        long j12 = i11;
        this.f29794a.animate().alpha(1.0f).setDuration(j11).setInterpolator(this.f29796c).setStartDelay(j12).start();
        if (this.f29795b.getVisibility() == 0) {
            this.f29795b.setAlpha(0.0f);
            this.f29795b.animate().alpha(1.0f).setDuration(j11).setInterpolator(this.f29796c).setStartDelay(j12).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void animateContentOut(int i11, int i12) {
        this.f29794a.setAlpha(1.0f);
        long j11 = i12;
        long j12 = i11;
        this.f29794a.animate().alpha(0.0f).setDuration(j11).setInterpolator(this.f29796c).setStartDelay(j12).start();
        if (this.f29795b.getVisibility() == 0) {
            this.f29795b.setAlpha(1.0f);
            this.f29795b.animate().alpha(0.0f).setDuration(j11).setInterpolator(this.f29796c).setStartDelay(j12).start();
        }
    }

    public Button getActionView() {
        return this.f29795b;
    }

    public TextView getMessageView() {
        return this.f29794a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f29794a = (TextView) findViewById(R$id.snackbar_text);
        this.f29795b = (Button) findViewById(R$id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical);
        Layout layout = this.f29794a.getLayout();
        boolean z10 = layout != null && layout.getLineCount() > 1;
        if (!z10 || this.f29797d <= 0 || this.f29795b.getMeasuredWidth() <= this.f29797d) {
            if (!z10) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!c(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!c(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i11, i12);
    }

    public void setMaxInlineActionWidth(int i11) {
        this.f29797d = i11;
    }
}
