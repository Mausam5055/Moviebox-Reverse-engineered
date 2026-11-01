package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class k {
    private static final String FILE_SCHEME = "file://";
    private Executor ioExecutor;
    public static final a Companion = new a(null);
    private static final String TAG = k.class.getSimpleName();
    private static final k instance = new k();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k getInstance() {
            return k.instance;
        }
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: displayImage$lambda-0, reason: not valid java name */
    public static final void m448displayImage$lambda0(String str, Function1 onImageLoaded) {
        Intrinsics.h(onImageLoaded, "$onImageLoaded");
        if (StringsKt.W(str, "file://", false, 2, null)) {
            String strSubstring = str.substring(7);
            Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(strSubstring);
            if (bitmapDecodeFile != null) {
                onImageLoaded.invoke(bitmapDecodeFile);
                return;
            }
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "decode bitmap failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getImageSize$lambda-1, reason: not valid java name */
    public static final void m449getImageSize$lambda1(String str, Function2 onImageSizeLoaded) {
        Intrinsics.h(onImageSizeLoaded, "$onImageSizeLoaded");
        if (StringsKt.W(str, "file://", false, 2, null)) {
            String strSubstring = str.substring(7);
            Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(strSubstring, options);
            onImageSizeLoaded.invoke(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
        }
    }

    public final void displayImage(final String str, final Function1<? super Bitmap, Unit> onImageLoaded) {
        Intrinsics.h(onImageLoaded, "onImageLoaded");
        if (this.ioExecutor == null) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "ImageLoader not initialized.");
            return;
        }
        if (str == null || str.length() == 0) {
            o.a aVar2 = o.Companion;
            String TAG3 = TAG;
            Intrinsics.g(TAG3, "TAG");
            aVar2.w(TAG3, "the uri is required.");
            return;
        }
        Executor executor = this.ioExecutor;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.j
                @Override // java.lang.Runnable
                public final void run() {
                    k.m448displayImage$lambda0(str, onImageLoaded);
                }
            });
        }
    }

    public final void getImageSize(final String str, final Function2<? super Integer, ? super Integer, Unit> onImageSizeLoaded) {
        Intrinsics.h(onImageSizeLoaded, "onImageSizeLoaded");
        if (this.ioExecutor == null) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "ImageLoader not initialized.");
            return;
        }
        if (str == null || str.length() == 0) {
            o.a aVar2 = o.Companion;
            String TAG3 = TAG;
            Intrinsics.g(TAG3, "TAG");
            aVar2.w(TAG3, "the uri is required.");
            return;
        }
        Executor executor = this.ioExecutor;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.i
                @Override // java.lang.Runnable
                public final void run() {
                    k.m449getImageSize$lambda1(str, onImageSizeLoaded);
                }
            });
        }
    }

    public final void init(Executor ioExecutor) {
        Intrinsics.h(ioExecutor, "ioExecutor");
        this.ioExecutor = ioExecutor;
    }
}
