package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Xfermode f34611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f34616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f34619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f34620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float[] f34621k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float[] f34622l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RectF f34623m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RectF f34624n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f34625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f34626p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Path f34627q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Paint f34628r;

    public MBridgeImageView(Context context) {
        this(context, null);
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34627q = new Path();
        this.f34628r = new Paint();
        this.f34621k = new float[8];
        this.f34622l = new float[8];
        this.f34624n = new RectF();
        this.f34623m = new RectF();
        this.f34611a = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a() {
        if (this.f34621k == null || this.f34622l == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            try {
                float[] fArr = this.f34621k;
                if (i11 >= fArr.length) {
                    return;
                }
                float f11 = this.f34614d;
                fArr[i11] = f11;
                this.f34622l[i11] = f11 - (this.f34619i / 2.0f);
                i11++;
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
    }

    private void a(int i11, int i12) {
        Path path = this.f34627q;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f34628r;
        if (paint != null) {
            paint.setStrokeWidth(i11);
            this.f34628r.setColor(i12);
            this.f34628r.setStyle(Paint.Style.STROKE);
        }
    }

    private void a(Canvas canvas) {
        a(canvas, this.f34619i, this.f34620j, this.f34624n, this.f34621k);
    }

    private void a(Canvas canvas, int i11, int i12, RectF rectF, float[] fArr) {
        try {
            a(i11, i12);
            Path path = this.f34627q;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f34627q, this.f34628r);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void b() {
        int i11;
        int i12;
        int i13;
        try {
            if (this.f34621k == null || this.f34622l == null) {
                return;
            }
            int i14 = 0;
            while (true) {
                i11 = 2;
                if (i14 >= 2) {
                    break;
                }
                float[] fArr = this.f34621k;
                float f11 = this.f34615e;
                fArr[i14] = f11;
                this.f34622l[i14] = f11 - (this.f34619i / 2.0f);
                i14++;
            }
            while (true) {
                i12 = 4;
                if (i11 >= 4) {
                    break;
                }
                float[] fArr2 = this.f34621k;
                float f12 = this.f34616f;
                fArr2[i11] = f12;
                this.f34622l[i11] = f12 - (this.f34619i / 2.0f);
                i11++;
            }
            while (true) {
                if (i12 >= 6) {
                    break;
                }
                float[] fArr3 = this.f34621k;
                float f13 = this.f34617g;
                fArr3[i12] = f13;
                this.f34622l[i12] = f13 - (this.f34619i / 2.0f);
                i12++;
            }
            for (i13 = 6; i13 < 8; i13++) {
                float[] fArr4 = this.f34621k;
                float f14 = this.f34618h;
                fArr4[i13] = f14;
                this.f34622l[i13] = f14 - (this.f34619i / 2.0f);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f34624n;
        if (rectF != null) {
            float f11 = this.f34619i / 2.0f;
            rectF.set(f11, f11, this.f34612b - f11, this.f34613c - f11);
        }
    }

    private void d() {
        RectF rectF = this.f34623m;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f34612b, this.f34613c);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f34623m, null, 31);
            int i11 = this.f34612b;
            int i12 = this.f34619i * 2;
            float f11 = (i11 - i12) * 1.0f;
            float f12 = i11;
            int i13 = this.f34613c;
            float f13 = i13;
            canvas.scale(f11 / f12, ((i13 - i12) * 1.0f) / f13, f12 / 2.0f, f13 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f34628r;
            if (paint != null) {
                paint.reset();
                this.f34628r.setAntiAlias(true);
                this.f34628r.setStyle(Paint.Style.FILL);
                this.f34628r.setXfermode(this.f34611a);
            }
            Path path = this.f34627q;
            if (path != null) {
                path.reset();
                this.f34627q.addRoundRect(this.f34623m, this.f34622l, Path.Direction.CCW);
            }
            canvas.drawPath(this.f34627q, this.f34628r);
            Paint paint2 = this.f34628r;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f34625o) {
                a(canvas);
            }
        } catch (Exception e11) {
            o0.a("MBridgeImageView", e11.getMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.f34612b = i11;
        this.f34613c = i12;
        if (this.f34626p) {
            b();
        } else {
            a();
        }
        c();
        d();
    }

    public void setBorder(int i11, int i12, int i13) {
        this.f34625o = true;
        this.f34619i = i12;
        this.f34620j = i13;
        this.f34614d = i11;
    }

    public void setCornerRadius(int i11) {
        this.f34614d = i11;
    }

    public void setCustomBorder(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f34625o = true;
        this.f34626p = true;
        this.f34619i = i15;
        this.f34620j = i16;
        this.f34615e = i11;
        this.f34617g = i13;
        this.f34616f = i12;
        this.f34618h = i14;
    }
}
