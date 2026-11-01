package hg;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class a extends BitmapTransformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f64459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64460c;

    public a() {
        this(25, 1);
    }

    public a(int i11, int i12) {
        this.f64460c = false;
        this.f64458a = i11;
        this.f64459b = i12;
    }

    public a(int i11, int i12, boolean z10) {
        this.f64458a = i11;
        this.f64459b = i12;
        this.f64460c = z10;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.f64458a == this.f64458a && aVar.f64459b == this.f64459b) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return 589067571 + (this.f64458a * 1000) + (this.f64459b * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.f64458a + ", sampling=" + this.f64459b + ")";
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    protected Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i11, int i12) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i13 = this.f64459b;
        Bitmap bitmap2 = bitmapPool.get(width / i13, height / i13, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int i14 = this.f64459b;
        canvas.scale(1.0f / i14, 1.0f / i14);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return this.f64460c ? b.a(bitmap2, this.f64458a, true) : ImageUtils.a(bitmap2, 1.0f, this.f64458a);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("BlurTransformation.1" + this.f64458a + this.f64459b).getBytes(Key.CHARSET));
    }
}
