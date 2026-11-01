package com.cloud.tmc.ad.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.util.Util;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J,\u0010\u0014\u001a\u00020\u00152\b\b\u0001\u0010\u0016\u001a\u00020\u00172\b\b\u0001\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0014J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;", "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;", "tl", "", "tr", TtmlNode.TAG_BR, "bl", "(FFFF)V", "ID", "", "kotlin.jvm.PlatformType", "radius", "", "[Ljava/lang/Float;", "equals", "", "o", "", "hashCode", "", "transform", "Landroid/graphics/Bitmap;", "pool", "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;", EventConstants.KEY_SOURCE, "outWidth", "outHeight", "updateDiskCacheKey", "", "messageDigest", "Ljava/security/MessageDigest;", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedCornersTransform extends BitmapTransformation {
    private final String ID = RoundedCornersTransform.class.getName();
    private final Float[] radius;

    public RoundedCornersTransform(float f11, float f12, float f13, float f14) {
        this.radius = new Float[]{Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), Float.valueOf(f14)};
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object o11) {
        if (o11 instanceof RoundedCornersTransform) {
            return Arrays.equals(this.radius, ((RoundedCornersTransform) o11).radius);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.hashCode(this.ID.hashCode(), Arrays.hashCode(this.radius));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    protected Bitmap transform(@NonNull BitmapPool pool, @NonNull Bitmap source, int outWidth, int outHeight) {
        Intrinsics.h(pool, "pool");
        Intrinsics.h(source, "source");
        Bitmap bitmap = pool.get(source.getWidth(), source.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.g(bitmap, "pool[source.width, sourc… Bitmap.Config.ARGB_8888]");
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(source, tileMode, tileMode));
        paint.setAntiAlias(true);
        RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        Float f11 = this.radius[0];
        canvas.save();
        canvas.clipRect(0, 0, canvas.getWidth() / 2, canvas.getHeight() / 2);
        canvas.drawRoundRect(rectF, f11 != null ? f11.floatValue() : 0.0f, f11 != null ? f11.floatValue() : 0.0f, paint);
        canvas.restore();
        Float f12 = this.radius[1];
        canvas.save();
        canvas.clipRect(canvas.getWidth() / 2, 0, canvas.getWidth(), canvas.getHeight() / 2);
        canvas.drawRoundRect(rectF, f12 != null ? f12.floatValue() : 0.0f, f12 != null ? f12.floatValue() : 0.0f, paint);
        canvas.restore();
        Float f13 = this.radius[2];
        canvas.save();
        canvas.clipRect(canvas.getWidth() / 2, canvas.getHeight() / 2, canvas.getWidth(), canvas.getHeight());
        canvas.drawRoundRect(rectF, f13 != null ? f13.floatValue() : 0.0f, f13 != null ? f13.floatValue() : 0.0f, paint);
        canvas.restore();
        Float f14 = this.radius[3];
        canvas.save();
        canvas.clipRect(0, canvas.getHeight() / 2, canvas.getWidth() / 2, canvas.getHeight());
        canvas.drawRoundRect(rectF, f14 != null ? f14.floatValue() : 0.0f, f14 != null ? f14.floatValue() : 0.0f, paint);
        canvas.restore();
        return bitmap;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        Intrinsics.h(messageDigest, "messageDigest");
        String ID = this.ID;
        Intrinsics.g(ID, "ID");
        Charset CHARSET = Key.CHARSET;
        Intrinsics.g(CHARSET, "CHARSET");
        byte[] bytes = ID.getBytes(CHARSET);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        byte[] bArrArray = ByteBuffer.allocate(4).putInt(Arrays.hashCode(this.radius)).array();
        Intrinsics.g(bArrArray, "allocate(4).putInt(Array…hashCode(radius)).array()");
        messageDigest.update(bArrArray);
    }
}
