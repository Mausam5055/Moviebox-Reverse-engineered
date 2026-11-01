package kg;

import android.content.Context;
import android.graphics.Bitmap;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static Bitmap a(Context context, Bitmap bitmap, int i11, int i12, boolean z10, int i13) {
        if (bitmap == null) {
            return null;
        }
        try {
            if (bitmap.isRecycled()) {
                return null;
            }
            BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
            Bitmap bitmapG = (bitmap.getWidth() < i11 || bitmap.getHeight() < i12) ? ImageUtils.g(bitmap, i11, i12, z10) : TransformationUtils.centerCrop(bitmapPool, bitmap, i11, i12);
            Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(bitmapPool, bitmapG, i13);
            c(bitmapG);
            if (z10) {
                c(bitmap);
            }
            return bitmapRoundedCorners;
        } catch (Throwable unused) {
            return ImageUtils.g(bitmap, i11, i12, z10);
        }
    }

    private static boolean b(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }

    public static void c(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public static Bitmap d(Bitmap bitmap, int i11, int i12, boolean z10) {
        if (b(bitmap)) {
            return null;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i11, i12, true);
        if (z10 && !bitmap.isRecycled() && bitmapCreateScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateScaledBitmap;
    }
}
