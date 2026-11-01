package com.cloud.tmc.integration.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Base64;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J<\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\b\u0001\u0010\u0010\u001a\u00020\u00112\b\b\u0003\u0010\u0012\u001a\u00020\f2\b\b\u0003\u0010\u0013\u001a\u00020\f2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/utils/BitmapUtils;", "", "()V", "base64ToBitmap", "Landroid/graphics/Bitmap;", "imageStr", "", "bitmapToBase64", "bitmap", "createRoundedCornerBitmap", "oldBitmap", "radius", "", "hasTransparent", "", "replaceBitmapBgColor", "backgroundColor", "", "scaleX", "scaleY", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BitmapUtils {
    public static final BitmapUtils INSTANCE = new BitmapUtils();

    private BitmapUtils() {
    }

    @JvmStatic
    public static final Bitmap createRoundedCornerBitmap(Bitmap oldBitmap, float radius) {
        if (oldBitmap == null) {
            return null;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(oldBitmap.getWidth(), oldBitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.g(bitmapCreateBitmap, "createBitmap(width, heig… Bitmap.Config.ARGB_8888)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            Rect rect = new Rect(0, 0, oldBitmap.getWidth(), oldBitmap.getHeight());
            canvas.drawRoundRect(new RectF(rect), radius, radius, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(oldBitmap, rect, rect, paint);
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError unused) {
            System.gc();
            return null;
        }
    }

    @JvmStatic
    public static final boolean hasTransparent(Bitmap oldBitmap) {
        if (oldBitmap != null) {
            int width = oldBitmap.getWidth() * oldBitmap.getHeight();
            int[] iArr = new int[width];
            oldBitmap.getPixels(iArr, 0, oldBitmap.getWidth(), 0, 0, oldBitmap.getWidth(), oldBitmap.getHeight());
            for (int i11 = 0; i11 < width; i11++) {
                if (Color.alpha(iArr[i11]) != 255) {
                    return true;
                }
            }
        }
        return false;
    }

    @JvmStatic
    @JvmOverloads
    public static final Bitmap replaceBitmapBgColor(Bitmap bitmap, int i11) {
        return replaceBitmapBgColor$default(bitmap, i11, 0.0f, 0.0f, 0.0f, 28, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final Bitmap replaceBitmapBgColor(Bitmap bitmap, int i11, float f11) {
        return replaceBitmapBgColor$default(bitmap, i11, f11, 0.0f, 0.0f, 24, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final Bitmap replaceBitmapBgColor(Bitmap bitmap, int i11, float f11, float f12) {
        return replaceBitmapBgColor$default(bitmap, i11, f11, f12, 0.0f, 16, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final Bitmap replaceBitmapBgColor(Bitmap oldBitmap, int backgroundColor, float scaleX, float scaleY, float radius) {
        if (oldBitmap == null) {
            return null;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(oldBitmap.getWidth(), oldBitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.g(bitmapCreateBitmap, "createBitmap(width, heig… Bitmap.Config.ARGB_8888)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            canvas.drawColor(backgroundColor);
            Matrix matrix = new Matrix();
            if (scaleX != 1.0f || scaleY != 1.0f) {
                matrix.postTranslate((oldBitmap.getWidth() - (oldBitmap.getWidth() * scaleX)) / 2.0f, (oldBitmap.getHeight() - (oldBitmap.getHeight() * scaleY)) / 2.0f);
                matrix.postScale(scaleX, scaleY);
            }
            canvas.drawBitmap(oldBitmap, matrix, paint);
            return radius == -1.0f ? bitmapCreateBitmap : createRoundedCornerBitmap(bitmapCreateBitmap, radius);
        } catch (OutOfMemoryError unused) {
            System.gc();
            return null;
        }
    }

    public static /* synthetic */ Bitmap replaceBitmapBgColor$default(Bitmap bitmap, int i11, float f11, float f12, float f13, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            f11 = 1.0f;
        }
        if ((i12 & 8) != 0) {
            f12 = 1.0f;
        }
        if ((i12 & 16) != 0) {
            f13 = -1.0f;
        }
        return replaceBitmapBgColor(bitmap, i11, f11, f12, f13);
    }

    public final Bitmap base64ToBitmap(String imageStr) {
        if (imageStr == null) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(imageStr, 0);
            Intrinsics.g(bArrDecode, "decode(imageStr, Base64.DEFAULT)");
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Throwable th2) {
            TmcLogger.e("BitmapUtils", th2);
            return null;
        }
    }

    public final String bitmapToBase64(Bitmap bitmap) {
        if (bitmap == null) {
            return "";
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            Intrinsics.g(strEncodeToString, "encodeToString(bytes, Base64.DEFAULT)");
            return strEncodeToString;
        } catch (Throwable th2) {
            TmcLogger.e("BitmapUtils", th2);
            return "";
        }
    }
}
