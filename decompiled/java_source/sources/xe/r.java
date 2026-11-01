package xe;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f78236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f78239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78240e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f78241f;

    public r(byte[] bArr, int i11, int i12, int i13, int i14) {
        this.f78236a = new n(bArr, i11, i12);
        this.f78238c = i14;
        this.f78237b = i13;
        if (i11 * i12 <= bArr.length) {
            return;
        }
        throw new IllegalArgumentException("Image data does not match the resolution. " + i11 + "x" + i12 + " > " + bArr.length);
    }

    public com.google.zxing.h a() {
        n nVarA = this.f78236a.h(this.f78238c).a(this.f78239d, this.f78240e);
        return new com.google.zxing.h(nVarA.b(), nVarA.d(), nVarA.c(), 0, 0, nVarA.d(), nVarA.c(), false);
    }

    public Bitmap b(Rect rect, int i11) {
        if (rect == null) {
            rect = new Rect(0, 0, this.f78236a.d(), this.f78236a.c());
        } else if (c()) {
            rect = new Rect(rect.top, rect.left, rect.bottom, rect.right);
        }
        YuvImage yuvImage = new YuvImage(this.f78236a.b(), this.f78237b, this.f78236a.d(), this.f78236a.c(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i11;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        if (this.f78238c == 0) {
            return bitmapDecodeByteArray;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(this.f78238c);
        return Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
    }

    public boolean c() {
        return this.f78238c % 180 != 0;
    }

    public void d(Rect rect) {
        this.f78239d = rect;
    }

    public void e(boolean z10) {
        this.f78241f = z10;
    }

    public com.google.zxing.k f(com.google.zxing.k kVar) {
        float fC = (kVar.c() * this.f78240e) + this.f78239d.left;
        float fD = (kVar.d() * this.f78240e) + this.f78239d.top;
        if (this.f78241f) {
            fC = this.f78236a.d() - fC;
        }
        return new com.google.zxing.k(fC, fD);
    }
}
