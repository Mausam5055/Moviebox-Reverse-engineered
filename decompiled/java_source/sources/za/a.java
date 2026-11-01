package za;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f79387i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f79388j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f79389k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f79390l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f79391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f79392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f79393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f79394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f79395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f79396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f79397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f79398h;

    public a() {
        this(ViewCompat.MEASURED_STATE_MASK);
    }

    public a(int i11) {
        this.f79397g = new Path();
        Paint paint = new Paint();
        this.f79398h = paint;
        this.f79391a = new Paint();
        d(i11);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f79392b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f79393c = new Paint(paint2);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i11, float f11, float f12) {
        boolean z10 = f12 < 0.0f;
        Path path = this.f79397g;
        if (z10) {
            int[] iArr = f79389k;
            iArr[0] = 0;
            iArr[1] = this.f79396f;
            iArr[2] = this.f79395e;
            iArr[3] = this.f79394d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f11, f12);
            path.close();
            float f13 = -i11;
            rectF.inset(f13, f13);
            int[] iArr2 = f79389k;
            iArr2[0] = 0;
            iArr2[1] = this.f79394d;
            iArr2[2] = this.f79395e;
            iArr2[3] = this.f79396f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f14 = 1.0f - (i11 / fWidth);
        float[] fArr = f79390l;
        fArr[1] = f14;
        fArr[2] = ((1.0f - f14) / 2.0f) + f14;
        this.f79392b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f79389k, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f79398h);
        }
        canvas.drawArc(rectF, f11, f12, true, this.f79392b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i11) {
        rectF.bottom += i11;
        rectF.offset(0.0f, -i11);
        int[] iArr = f79387i;
        iArr[0] = this.f79396f;
        iArr[1] = this.f79395e;
        iArr[2] = this.f79394d;
        Paint paint = this.f79393c;
        float f11 = rectF.left;
        paint.setShader(new LinearGradient(f11, rectF.top, f11, rectF.bottom, iArr, f79388j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f79393c);
        canvas.restore();
    }

    public Paint c() {
        return this.f79391a;
    }

    public void d(int i11) {
        this.f79394d = z0.b.p(i11, 68);
        this.f79395e = z0.b.p(i11, 20);
        this.f79396f = z0.b.p(i11, 0);
        this.f79391a.setColor(this.f79394d);
    }
}
