package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Zq extends View {
    private Drawable EjP;
    private Drawable HiB;
    private final Path Sj;
    private int TKC;
    private final boolean sP;
    private float vS;

    public Zq(Context context) {
        this(context, false);
    }

    public Zq(Context context, boolean z10) {
        super(context);
        this.Sj = new Path();
        this.sP = z10;
        Sj();
    }

    private void Sj() {
        Context context = getContext();
        this.EjP = ib.TKC(context, this.sP ? "tt_star_thick_dark" : "tt_star_thick");
        this.HiB = ib.TKC(context, "tt_star");
    }

    private void sP() {
        int width = getWidth();
        int height = getHeight();
        if (this.vS <= 0.0f || width <= 0 || height <= 0) {
            return;
        }
        this.Sj.reset();
        this.Sj.addRect(new RectF(0.0f, 0.0f, width * this.vS, height), Path.Direction.CCW);
    }

    public void Sj(double d11, int i11) {
        int iSj = (int) FPG.Sj(getContext(), i11, false);
        this.TKC = iSj;
        this.EjP.setBounds(0, 0, iSj, iSj);
        Drawable drawable = this.HiB;
        int i12 = this.TKC;
        drawable.setBounds(0, 0, i12, i12);
        this.vS = ((float) d11) / 5.0f;
        sP();
        requestLayout();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.TKC <= 0) {
            return;
        }
        int iSave = canvas.save();
        for (int i11 = 0; i11 < 5; i11++) {
            this.EjP.draw(canvas);
            canvas.translate(this.TKC, 0.0f);
        }
        canvas.restoreToCount(iSave);
        canvas.clipPath(this.Sj);
        for (int i12 = 0; i12 < 5; i12++) {
            this.HiB.draw(canvas);
            canvas.translate(this.TKC, 0.0f);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.TKC * 5, 1073741824), View.MeasureSpec.makeMeasureSpec(this.TKC, 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        sP();
    }
}
