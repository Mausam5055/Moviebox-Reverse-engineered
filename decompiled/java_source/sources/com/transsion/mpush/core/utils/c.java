package com.transsion.mpush.core.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f47625a = new c();

    private c() {
    }

    public static /* synthetic */ Bitmap h(c cVar, Bitmap bitmap, Integer num, float f11, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            num = null;
        }
        if ((i12 & 4) != 0) {
            f11 = 0.0f;
        }
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        return cVar.g(bitmap, num, f11, i11);
    }

    public final Bitmap a(Context context, Bitmap bitmap, int i11, int i12, int i13, int i14, boolean z10) {
        Intrinsics.h(context, "context");
        Bitmap bitmapDecodeResource = (bitmap == null || bitmap.isRecycled()) ? BitmapFactory.decodeResource(context.getResources(), i13) : bitmap;
        if (bitmapDecodeResource == null || bitmapDecodeResource.isRecycled()) {
            return null;
        }
        try {
            BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
            Intrinsics.g(bitmapPool, "getBitmapPool(...)");
            Bitmap bitmapCenterCrop = TransformationUtils.centerCrop(bitmapPool, bitmapDecodeResource, i11, i12);
            Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(bitmapPool, bitmapCenterCrop, i14);
            if (bitmapCenterCrop != bitmapDecodeResource) {
                f(bitmapCenterCrop);
            }
            if (bitmapDecodeResource == bitmap && !z10) {
                return bitmapRoundedCorners;
            }
            f(bitmapDecodeResource);
            return bitmapRoundedCorners;
        } catch (Throwable unused) {
            return ImageUtils.g(bitmapDecodeResource, i11, i12, z10);
        }
    }

    public final int c(float f11) {
        return (int) ((f11 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public final String d(String input) {
        Intrinsics.h(input, "input");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = input.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                String hexString = Integer.toHexString(b11 & 255);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            String string = sb2.toString();
            Intrinsics.g(string, "toString(...)");
            Locale locale = Locale.getDefault();
            Intrinsics.g(locale, "getDefault(...)");
            String lowerCase = string.toLowerCase(locale);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            return lowerCase;
        } catch (Exception unused) {
            return "";
        }
    }

    public final String e(String str, String paramKey) {
        Intrinsics.h(paramKey, "paramKey");
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            String queryParameter = Uri.parse(StringsKt.Q(str, "%%", "%25%25", false, 4, null)).getQueryParameter(paramKey);
            if (queryParameter != null) {
                queryParameter = URLDecoder.decode(queryParameter, StandardCharsets.UTF_8.name());
            }
            return queryParameter;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public final void f(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public final Bitmap g(Bitmap sourceBitmap, Integer num, float f11, int i11) {
        Intrinsics.h(sourceBitmap, "sourceBitmap");
        int iIntValue = num != null ? num.intValue() : RangesKt.i(sourceBitmap.getWidth(), sourceBitmap.getHeight());
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(sourceBitmap, iIntValue, iIntValue, true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iIntValue, iIntValue, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        float f12 = iIntValue - f11;
        RectF rectF = new RectF(f11, f11, f12, f12);
        canvas.drawOval(rectF, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        int i12 = (int) f11;
        int i13 = (int) f12;
        canvas.drawBitmap(bitmapCreateScaledBitmap, new Rect(i12, i12, i13, i13), rectF, paint);
        if (f11 > 0.0f) {
            Paint paint2 = new Paint();
            paint2.setAntiAlias(true);
            paint2.setColor(i11);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(f11);
            canvas.drawOval(rectF, paint2);
        }
        return bitmapCreateBitmap;
    }
}
