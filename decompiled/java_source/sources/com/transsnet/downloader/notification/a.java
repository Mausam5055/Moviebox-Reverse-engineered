package com.transsnet.downloader.notification;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.transsion.lib.push.R$mipmap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f59517a = new a();

    private a() {
    }

    public static /* synthetic */ Bitmap d(a aVar, Context context, Bitmap bitmap, int i11, int i12, boolean z10, int i13, int i14, Object obj) {
        if ((i14 & 32) != 0) {
            i13 = dk.a.b(8);
        }
        return aVar.c(context, bitmap, i11, i12, z10, i13);
    }

    public final Bitmap a(Context context, Bitmap bitmap, int i11, int i12, boolean z10, int i13, int i14) {
        Intrinsics.h(context, "context");
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
                    Intrinsics.g(bitmapPool, "getBitmapPool(...)");
                    Bitmap bitmapCenterCrop = TransformationUtils.centerCrop(bitmapPool, bitmap, i11, i12);
                    Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(bitmapPool, bitmapCenterCrop, i14);
                    b(bitmapCenterCrop);
                    if (z10) {
                        b(bitmap);
                    }
                    return bitmapRoundedCorners;
                }
            } catch (Throwable unused) {
                return ImageUtils.g(bitmap, i11, i12, z10);
            }
        }
        return BitmapFactory.decodeResource(context.getResources(), i13);
    }

    public final void b(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public final Bitmap c(Context context, Bitmap bitmap, int i11, int i12, boolean z10, int i13) {
        Intrinsics.h(context, "context");
        return (bitmap == null || bitmap.isRecycled()) ? BitmapFactory.decodeResource(context.getResources(), R$mipmap.notification_placeholder) : a(context, bitmap, i11, i12, z10, R$mipmap.notification_placeholder, i13);
    }
}
