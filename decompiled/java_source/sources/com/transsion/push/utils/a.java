package com.transsion.push.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import com.transsion.push.R$dimen;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Bitmap f50932a;

    public static Bitmap a(Context context, Bitmap bitmap) {
        return b(bitmap, c(context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_icon_corner_large), context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_large_icon_size), bitmap.getWidth()));
    }

    private static Bitmap b(Bitmap bitmap, int i11) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f11 = i11;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-1);
        canvas.drawRoundRect(rectF, f11, f11, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private static int c(int i11, int i12, int i13) {
        return i12 != i13 ? (i11 * i13) / i12 : i11;
    }

    public static Bitmap d(Context context, Bitmap bitmap) {
        Bitmap bitmap2 = f50932a;
        if (bitmap2 != null) {
            return bitmap2;
        }
        Bitmap bitmapB = b(bitmap, c(context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_icon_corner_small), context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_small_icon_size), bitmap.getWidth()));
        f50932a = bitmapB;
        return bitmapB;
    }
}
