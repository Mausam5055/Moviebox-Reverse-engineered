package com.cloud.tmc.integration.defaultImpl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.R;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoadListener;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\fH\u0016J8\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0016J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J*\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J4\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001bH\u0016J2\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J\u001a\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J,\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010!2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00020\fH\u0016J6\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010!2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001bH\u0016J(\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\fH\u0016JD\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010!2\b\b\u0001\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0016\u0010%\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u0004\u0018\u00010&H\u0016JD\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0010\u001a\u00020\u00112\b\b\u0001\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0016\u0010%\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u0004\u0018\u00010&H\u0016J0\u0010'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010#\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J(\u0010'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J0\u0010'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J8\u0010'\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J(\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J8\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J\u001a\u0010)\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006*"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/DefaultImageLoaderImpl;", "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;", "()V", "glideLoad", "", "context", "Landroid/content/Context;", "options", "Lcom/bumptech/glide/request/RequestOptions;", "url", "", "imageView", "Landroid/widget/ImageView;", "isDestroy", "", "loadImg", "resId", "", "placeHolderResId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;", "Landroid/graphics/drawable/Drawable;", "placeHolder", "errorHolder", "loadImgBitmap", "Landroid/graphics/Bitmap;", "loadImgBitmapNoRound", "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;", "loadImgBitmapSize", "width", "height", "roundingRadius", "loadImgFile", "Ljava/io/File;", "loadImgGifPlay", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "loadImgGifPlayOnce", "onAnimationEnd", "Lkotlin/Function1;", "loadImgRoundCorners", "loadImgRoundCornersCenterCrop", "queryImgIsExist", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DefaultImageLoaderImpl implements ImageLoaderProxy {
    private final void glideLoad(Context context, RequestOptions options, String url, ImageView imageView) {
        try {
            if (isDestroy(context)) {
                return;
            }
            RequestManager requestManagerWith = Glide.with(context);
            requestManagerWith.applyDefaultRequestOptions(options);
            requestManagerWith.load2(url).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: glideLoad", e11);
        }
    }

    public final boolean isDestroy(Context context) {
        if (context == null) {
            return true;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            return activity.isFinishing() || activity.isDestroyed();
        }
        if (!(context instanceof FragmentActivity)) {
            return false;
        }
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        return fragmentActivity.isFinishing() || fragmentActivity.isDestroyed();
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImg(Context context, int resId, int placeHolderResId, ImageView imageView) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        if (isDestroy(context)) {
            return;
        }
        try {
            RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(context).load2(Integer.valueOf(resId));
            Intrinsics.g(requestBuilderLoad2, "with(context).load(resId)");
            if (resId != 0) {
                Cloneable cloneablePlaceholder = requestBuilderLoad2.placeholder(placeHolderResId);
                Intrinsics.g(cloneablePlaceholder, "handle.placeholder(placeHolderResId)");
                requestBuilderLoad2 = (RequestBuilder) cloneablePlaceholder;
            }
            requestBuilderLoad2.into(imageView);
        } catch (Throwable th2) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImg", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImg(Context context, int resId, int placeHolderResId, ImageView imageView, final ImageLoadCallback<Drawable> listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        if (isDestroy(context)) {
            return;
        }
        try {
            RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(context).load2(Integer.valueOf(resId));
            Intrinsics.g(requestBuilderLoad2, "with(context).load(resId)");
            if (placeHolderResId != 0) {
                Cloneable cloneablePlaceholder = requestBuilderLoad2.placeholder(placeHolderResId);
                Intrinsics.g(cloneablePlaceholder, "handle.placeholder(placeHolderResId)");
                requestBuilderLoad2 = (RequestBuilder) cloneablePlaceholder;
            }
            requestBuilderLoad2.into(new CustomViewTarget<ImageView, Drawable>(imageView) { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl.loadImg.1
                @Override // com.bumptech.glide.request.target.Target
                public void onLoadFailed(Drawable errorDrawable) {
                    try {
                        ImageLoadCallback<Drawable> imageLoadCallback = listener;
                        if (imageLoadCallback != null) {
                            imageLoadCallback.onLoadFailed("error");
                        }
                    } catch (Throwable th2) {
                        TmcLogger.e("[DefaultImageLoaderImpl]: loadImg", th2);
                    }
                }

                @Override // com.bumptech.glide.request.target.CustomViewTarget
                protected void onResourceCleared(Drawable placeholder) {
                }

                public void onResourceReady(Drawable resource, Transition<? super Drawable> transition) {
                    Intrinsics.h(resource, "resource");
                    try {
                        ImageLoadCallback<Drawable> imageLoadCallback = listener;
                        if (imageLoadCallback != null) {
                            imageLoadCallback.onLoadSuccess(resource);
                        }
                    } catch (Throwable th2) {
                        TmcLogger.e("[DefaultImageLoaderImpl]: loadImg", th2);
                    }
                }

                @Override // com.bumptech.glide.request.target.Target
                public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                    onResourceReady((Drawable) obj, (Transition<? super Drawable>) transition);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImg", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImg(Context context, String url, ImageView imageView) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = new RequestOptions().placeholder(R.drawable.mini_ic_palceholder).error(R.drawable.mini_ic_palceholder);
        Intrinsics.g(requestOptionsError, "RequestOptions().placeho…able.mini_ic_palceholder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImg(Context context, String url, ImageView imageView, Drawable placeHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = new RequestOptions().placeholder(placeHolder).error(placeHolder);
        Intrinsics.g(requestOptionsError, "RequestOptions().placeho…older).error(placeHolder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImg(Context context, String url, ImageView imageView, Drawable placeHolder, Drawable errorHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = new RequestOptions().placeholder(placeHolder).error(errorHolder);
        Intrinsics.g(requestOptionsError, "RequestOptions().placeho…older).error(errorHolder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public Bitmap loadImgBitmap(Context context, String url) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        if (isDestroy(context)) {
            return null;
        }
        try {
            RequestOptions requestOptionsBitmapTransform = RequestOptions.bitmapTransform(new RoundedCornerCenterCrop(SizeUtils.dp2px(8.0f)));
            Intrinsics.g(requestOptionsBitmapTransform, "bitmapTransform(RoundedC…rop(SizeUtils.dp2px(8f)))");
            RequestManager requestManagerWith = Glide.with(context);
            requestManagerWith.applyDefaultRequestOptions(requestOptionsBitmapTransform);
            FutureTarget<Bitmap> futureTargetSubmit = requestManagerWith.asBitmap().load2(url).submit();
            Intrinsics.g(futureTargetSubmit, "with(context)\n          …                .submit()");
            return futureTargetSubmit.get();
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgBitmap", e11);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgBitmapNoRound(Context context, String url, final ImageLoadListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        if (isDestroy(context)) {
            return;
        }
        try {
            Glide.with(context).asBitmap().load2(url).transform(new CenterCrop()).into(new SimpleTarget<Bitmap>() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl.loadImgBitmapNoRound.1
                @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
                public void onLoadFailed(Drawable errorDrawable) {
                    ImageLoadListener imageLoadListener = listener;
                    if (imageLoadListener != null) {
                        imageLoadListener.onLoadFailed("load failed");
                    }
                }

                public void onResourceReady(Bitmap resource, Transition<? super Bitmap> transition) {
                    Intrinsics.h(resource, "resource");
                    ImageLoadListener imageLoadListener = listener;
                    if (imageLoadListener != null) {
                        imageLoadListener.onLoadSuccess(resource);
                    }
                }

                @Override // com.bumptech.glide.request.target.Target
                public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                    onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
                }
            });
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgBitmapNoRound", e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public Bitmap loadImgBitmapSize(Context context, String url, int width, int height, int roundingRadius) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        if (isDestroy(context)) {
            return null;
        }
        try {
            RequestOptions requestOptionsBitmapTransform = RequestOptions.bitmapTransform(new RoundedCorners(roundingRadius));
            Intrinsics.g(requestOptionsBitmapTransform, "bitmapTransform(RoundedCorners(roundingRadius))");
            RequestManager requestManagerWith = Glide.with(context);
            requestManagerWith.applyDefaultRequestOptions(requestOptionsBitmapTransform);
            FutureTarget futureTargetSubmit = requestManagerWith.asBitmap().load2(url).override(width, height).submit();
            Intrinsics.g(futureTargetSubmit, "with(context)\n          …                .submit()");
            return (Bitmap) futureTargetSubmit.get();
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgBitmapSize", e11);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public File loadImgFile(Context context, String url) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        if (isDestroy(context)) {
            return null;
        }
        try {
            FutureTarget<File> futureTargetSubmit = Glide.with(context).asFile().load2(url).submit();
            Intrinsics.g(futureTargetSubmit, "with(context)\n          …                .submit()");
            return futureTargetSubmit.get();
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgFile", e11);
            return null;
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgGifPlay(Context context, int resId, int placeHolder, ImageView imageView) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        try {
            if (isDestroy(context)) {
                return;
            }
            Glide.with(context).asGif().load2(Integer.valueOf(resId)).placeholder(placeHolder).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.DATA)).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgGifPlayOnce", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgGifPlay(Context context, File file, Drawable placeHolder, ImageView imageView) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        try {
            if (isDestroy(context)) {
                return;
            }
            Glide.with(context).asGif().load2(file).placeholder(placeHolder).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.DATA)).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgGifPlayOnce", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgGifPlay(Context context, File file, Drawable placeHolder, ImageView imageView, final ImageLoadListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        Glide.with(context).asGif().load2(file).placeholder(placeHolder).listener(new RequestListener<GifDrawable>() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl.loadImgGifPlay.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException e11, Object model, Target<GifDrawable> target, boolean isFirstResource) {
                String message;
                ImageLoadListener imageLoadListener = listener;
                if (imageLoadListener == null) {
                    return false;
                }
                if (e11 == null || (message = e11.getMessage()) == null) {
                    message = "load error";
                }
                imageLoadListener.onLoadFailed(message);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(GifDrawable resource, Object model, Target<GifDrawable> target, DataSource dataSource, boolean isFirstResource) {
                ImageLoadListener imageLoadListener = listener;
                if (imageLoadListener == null) {
                    return false;
                }
                imageLoadListener.onLoadSuccess(null);
                return false;
            }
        }).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.DATA)).into(imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgGifPlayOnce(Context context, int resId, int placeHolder, ImageView imageView, final Function1<? super Drawable, Unit> onAnimationEnd) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        try {
            if (isDestroy(context)) {
                return;
            }
            Glide.with(context).asGif().load2(Integer.valueOf(resId)).placeholder(placeHolder).listener(new RequestListener<GifDrawable>() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl.loadImgGifPlayOnce.1
                @Override // com.bumptech.glide.request.RequestListener
                public boolean onLoadFailed(GlideException e11, Object model, Target<GifDrawable> target, boolean isFirstResource) {
                    return false;
                }

                @Override // com.bumptech.glide.request.RequestListener
                public boolean onResourceReady(final GifDrawable resource, Object model, Target<GifDrawable> target, DataSource dataSource, boolean isFirstResource) {
                    if (resource == null) {
                        return false;
                    }
                    final Function1<Drawable, Unit> function1 = onAnimationEnd;
                    resource.setLoopCount(1);
                    resource.registerAnimationCallback(new androidx.vectordrawable.graphics.drawable.b() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl$loadImgGifPlayOnce$1$onResourceReady$1$1
                        @Override // androidx.vectordrawable.graphics.drawable.b
                        public void onAnimationEnd(Drawable drawable) {
                            super.onAnimationEnd(drawable);
                            Function1<Drawable, Unit> function2 = function1;
                            if (function2 != null) {
                                function2.invoke(drawable);
                            }
                            resource.unregisterAnimationCallback(this);
                        }
                    });
                    return false;
                }
            }).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.DATA)).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgGifPlayOnce", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgGifPlayOnce(Context context, File file, int placeHolder, ImageView imageView, final Function1<? super Drawable, Unit> onAnimationEnd) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        try {
            if (isDestroy(context)) {
                return;
            }
            Glide.with(context).asGif().load2(file).placeholder(placeHolder).listener(new RequestListener<GifDrawable>() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl.loadImgGifPlayOnce.2
                @Override // com.bumptech.glide.request.RequestListener
                public boolean onLoadFailed(GlideException e11, Object model, Target<GifDrawable> target, boolean isFirstResource) {
                    return false;
                }

                @Override // com.bumptech.glide.request.RequestListener
                public boolean onResourceReady(final GifDrawable resource, Object model, Target<GifDrawable> target, DataSource dataSource, boolean isFirstResource) {
                    if (resource == null) {
                        return false;
                    }
                    final Function1<Drawable, Unit> function1 = onAnimationEnd;
                    resource.setLoopCount(1);
                    resource.registerAnimationCallback(new androidx.vectordrawable.graphics.drawable.b() { // from class: com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl$loadImgGifPlayOnce$2$onResourceReady$1$1
                        @Override // androidx.vectordrawable.graphics.drawable.b
                        public void onAnimationEnd(Drawable drawable) {
                            super.onAnimationEnd(drawable);
                            Function1<Drawable, Unit> function2 = function1;
                            if (function2 != null) {
                                function2.invoke(drawable);
                            }
                            resource.unregisterAnimationCallback(this);
                        }
                    });
                    return false;
                }
            }).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.DATA)).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: loadImgGifPlayOnce", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCorners(Context context, File file, ImageView imageView, int roundingRadius, int placeHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(file, "file");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsPlaceholder = RequestOptions.bitmapTransform(new RoundedCorners(roundingRadius)).placeholder(placeHolder);
        Intrinsics.g(requestOptionsPlaceholder, "bitmapTransform(RoundedC….placeholder(placeHolder)");
        RequestOptions requestOptions = requestOptionsPlaceholder;
        try {
            if (isDestroy(context)) {
                return;
            }
            RequestManager requestManagerWith = Glide.with(context);
            requestManagerWith.applyDefaultRequestOptions(requestOptions);
            requestManagerWith.load2(file).into(imageView);
        } catch (Exception e11) {
            TmcLogger.e("[DefaultImageLoaderImpl]: glideLoad", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCorners(Context context, String url, ImageView imageView, int roundingRadius) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = RequestOptions.bitmapTransform(new RoundedCorners(roundingRadius)).placeholder(R.drawable.mini_ic_palceholder).error(R.drawable.mini_ic_palceholder);
        Intrinsics.g(requestOptionsError, "bitmapTransform(RoundedC…able.mini_ic_palceholder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCorners(Context context, String url, ImageView imageView, int roundingRadius, int placeHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = RequestOptions.bitmapTransform(new RoundedCorners(roundingRadius)).placeholder(placeHolder).error(R.drawable.mini_ic_palceholder);
        Intrinsics.g(requestOptionsError, "bitmapTransform(RoundedC…able.mini_ic_palceholder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCorners(Context context, String url, ImageView imageView, int roundingRadius, int placeHolder, int errorHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = RequestOptions.bitmapTransform(new RoundedCorners(roundingRadius)).placeholder(placeHolder).error(errorHolder);
        Intrinsics.g(requestOptionsError, "bitmapTransform(RoundedC…      .error(errorHolder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCornersCenterCrop(Context context, String url, ImageView imageView, int roundingRadius) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        int i11 = R.drawable.mini_ic_palceholder;
        loadImgRoundCornersCenterCrop(context, url, imageView, roundingRadius, i11, i11);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public void loadImgRoundCornersCenterCrop(Context context, String url, ImageView imageView, int roundingRadius, int placeHolder, int errorHolder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(imageView, "imageView");
        RequestOptions requestOptionsError = RequestOptions.bitmapTransform(new RoundedCornerCenterCrop(roundingRadius)).placeholder(placeHolder).error(placeHolder);
        Intrinsics.g(requestOptionsError, "bitmapTransform(RoundedC…      .error(placeHolder)");
        glideLoad(context, requestOptionsError, url, imageView);
    }

    @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy
    public boolean queryImgIsExist(Context context, String url) {
        Intrinsics.h(context, "context");
        if (isDestroy(context)) {
            return false;
        }
        try {
            return Glide.with(context).asFile().load2(url).onlyRetrieveFromCache(true).submit().get() != 0;
        } catch (Throwable unused) {
            return false;
        }
    }
}
