package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends View {
    private int Dq;
    private int EjP;
    private PorterDuff.Mode Fmk;
    private int HiB;
    private int Jcg;
    Rect Sj;
    private Bitmap TEQ;
    private int TKC;
    private Paint Ym;
    private final List<Sj> Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Xfermode f20908aa;
    Rect sP;
    private LinearGradient sef;
    private int[] uA;
    private int vS;

    public static class Sj {
        private final int Sj;
        private int sP = 0;

        public Sj(int i11) {
            this.Sj = i11;
        }

        public void Sj() {
            this.sP += this.Sj;
        }
    }

    public aa(Context context) {
        super(context);
        this.Fmk = PorterDuff.Mode.DST_IN;
        this.Zq = new ArrayList();
        Sj();
    }

    private void Sj() {
        this.TKC = com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_splash_unlock_image_arrow");
        this.EjP = Color.parseColor("#00ffffff");
        this.HiB = Color.parseColor("#ffffffff");
        int color = Color.parseColor("#00ffffff");
        this.vS = color;
        this.Jcg = 10;
        this.Dq = 40;
        this.uA = new int[]{this.EjP, this.HiB, color};
        setLayerType(1, null);
        this.Ym = new Paint(1);
        this.TEQ = BitmapFactory.decodeResource(getResources(), this.TKC);
        this.f20908aa = new PorterDuffXfermode(this.Fmk);
    }

    public void Sj(int i11) {
        this.Zq.add(new Sj(i11));
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.TEQ, this.Sj, this.sP, this.Ym);
        canvas.save();
        Iterator<Sj> it = this.Zq.iterator();
        while (it.hasNext()) {
            Sj next = it.next();
            this.sef = new LinearGradient(next.sP, 0.0f, next.sP + this.Dq, this.Jcg, this.uA, (float[]) null, Shader.TileMode.CLAMP);
            this.Ym.setColor(-1);
            this.Ym.setShader(this.sef);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.Ym);
            this.Ym.setShader(null);
            next.Sj();
            if (next.sP > getWidth()) {
                it.remove();
            }
        }
        this.Ym.setXfermode(this.f20908aa);
        canvas.drawBitmap(this.TEQ, this.Sj, this.sP, this.Ym);
        this.Ym.setXfermode(null);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (this.TEQ == null) {
            return;
        }
        this.Sj = new Rect(0, 0, this.TEQ.getWidth(), this.TEQ.getHeight());
        this.sP = new Rect(0, 0, getWidth(), getHeight());
    }
}
