package com.cloud.tmc.integration.defaultImpl;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.bumptech.glide.util.Util;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0016J(\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0014J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/RoundedCornerCenterCrop;", "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;", "roundingRadius", "", "(I)V", "ID", "", "ID_BYTES", "", "getRoundingRadius", "()I", "equals", "", "o", "", "hashCode", "transform", "Landroid/graphics/Bitmap;", "pool", "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;", "toTransform", "outWidth", "outHeight", "updateDiskCacheKey", "", "messageDigest", "Ljava/security/MessageDigest;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedCornerCenterCrop extends BitmapTransformation {
    private final String ID;
    private final byte[] ID_BYTES;
    private final int roundingRadius;

    public RoundedCornerCenterCrop() {
        this(0, 1, null);
    }

    public RoundedCornerCenterCrop(int i11) {
        this.roundingRadius = i11;
        this.ID = "com.bumptech.glide.load.resource.bitmap.RoundedCornerCenterCrop";
        Charset CHARSET = Key.CHARSET;
        Intrinsics.g(CHARSET, "CHARSET");
        byte[] bytes = "com.bumptech.glide.load.resource.bitmap.RoundedCornerCenterCrop".getBytes(CHARSET);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        this.ID_BYTES = bytes;
    }

    public /* synthetic */ RoundedCornerCenterCrop(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object o11) {
        return (o11 instanceof RoundedCornerCenterCrop) && this.roundingRadius == ((RoundedCornerCenterCrop) o11).roundingRadius;
    }

    public final int getRoundingRadius() {
        return this.roundingRadius;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.hashCode(this.ID.hashCode(), Util.hashCode(this.roundingRadius));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    protected Bitmap transform(BitmapPool pool, Bitmap toTransform, int outWidth, int outHeight) {
        Intrinsics.h(pool, "pool");
        Intrinsics.h(toTransform, "toTransform");
        Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(pool, TransformationUtils.centerCrop(pool, toTransform, outWidth, outHeight), this.roundingRadius);
        Intrinsics.g(bitmapRoundedCorners, "roundedCorners(pool, bitmap, roundingRadius)");
        return bitmapRoundedCorners;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        Intrinsics.h(messageDigest, "messageDigest");
        messageDigest.update(this.ID_BYTES);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.roundingRadius).array());
    }
}
