package ej;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import java.io.File;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class c extends RequestBuilder implements Cloneable {
    c(Glide glide, RequestManager requestManager, Class cls, Context context) {
        super(glide, requestManager, cls, context);
    }

    c(Class cls, RequestBuilder requestBuilder) {
        super(cls, requestBuilder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public c getDownloadOnlyRequest() {
        return new c(File.class, this).apply(RequestBuilder.DOWNLOAD_ONLY_OPTIONS);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public c listener(RequestListener requestListener) {
        return (c) super.listener(requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public c load2(Bitmap bitmap) {
        return (c) super.load2(bitmap);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public c load2(Drawable drawable) {
        return (c) super.load2(drawable);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public c load2(Uri uri) {
        return (c) super.load2(uri);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public c load2(File file) {
        return (c) super.load2(file);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public c load2(Integer num) {
        return (c) super.load2(num);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public c load2(Object obj) {
        return (c) super.load2(obj);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public c load2(String str) {
        return (c) super.load2(str);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public c load2(URL url) {
        return (c) super.load2(url);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public c load2(byte[] bArr) {
        return (c) super.load2(bArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public c lock() {
        return (c) super.lock();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public c onlyRetrieveFromCache(boolean z10) {
        return (c) super.onlyRetrieveFromCache(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public c optionalCenterCrop() {
        return (c) super.optionalCenterCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public c optionalCenterInside() {
        return (c) super.optionalCenterInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public c optionalCircleCrop() {
        return (c) super.optionalCircleCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public c optionalFitCenter() {
        return (c) super.optionalFitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public c optionalTransform(Transformation transformation) {
        return (c) super.optionalTransform(transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public c optionalTransform(Class cls, Transformation transformation) {
        return (c) super.optionalTransform(cls, transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public c override(int i11) {
        return (c) super.override(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public c override(int i11, int i12) {
        return (c) super.override(i11, i12);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public c placeholder(int i11) {
        return (c) super.placeholder(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public c placeholder(Drawable drawable) {
        return (c) super.placeholder(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public c priority(Priority priority) {
        return (c) super.priority(priority);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public c set(Option option, Object obj) {
        return (c) super.set(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public c signature(Key key) {
        return (c) super.signature(key);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c addListener(RequestListener requestListener) {
        return (c) super.addListener(requestListener);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public c sizeMultiplier(float f11) {
        return (c) super.sizeMultiplier(f11);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c apply(BaseRequestOptions baseRequestOptions) {
        return (c) super.apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public c skipMemoryCache(boolean z10) {
        return (c) super.skipMemoryCache(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c autoClone() {
        return (c) super.autoClone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public c theme(Resources.Theme theme) {
        return (c) super.theme(theme);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public c thumbnail(float f11) {
        return (c) super.thumbnail(f11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c centerCrop() {
        return (c) super.centerCrop();
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public c thumbnail(RequestBuilder requestBuilder) {
        return (c) super.thumbnail(requestBuilder);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public c centerInside() {
        return (c) super.centerInside();
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public c thumbnail(List list) {
        return (c) super.thumbnail(list);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c circleCrop() {
        return (c) super.circleCrop();
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public final c thumbnail(RequestBuilder... requestBuilderArr) {
        return (c) super.thumbnail(requestBuilderArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public c timeout(int i11) {
        return (c) super.timeout(i11);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c mo202clone() {
        return (c) super.mo202clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public c transform(Transformation transformation) {
        return (c) super.transform((Transformation<Bitmap>) transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c decode(Class cls) {
        return (c) super.decode(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public c transform(Class cls, Transformation transformation) {
        return (c) super.transform(cls, transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public c disallowHardwareConfig() {
        return (c) super.disallowHardwareConfig();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public c transform(Transformation... transformationArr) {
        return (c) super.transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (c) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public c transforms(Transformation... transformationArr) {
        return (c) super.transforms(transformationArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public c dontAnimate() {
        return (c) super.dontAnimate();
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public c transition(TransitionOptions transitionOptions) {
        return (c) super.transition(transitionOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public c dontTransform() {
        return (c) super.dontTransform();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public c useAnimationPool(boolean z10) {
        return (c) super.useAnimationPool(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public c downsample(DownsampleStrategy downsampleStrategy) {
        return (c) super.downsample(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public c useUnlimitedSourceGeneratorsPool(boolean z10) {
        return (c) super.useUnlimitedSourceGeneratorsPool(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public c encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (c) super.encodeFormat(compressFormat);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public c encodeQuality(int i11) {
        return (c) super.encodeQuality(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public c error(int i11) {
        return (c) super.error(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public c error(Drawable drawable) {
        return (c) super.error(drawable);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public c error(RequestBuilder requestBuilder) {
        return (c) super.error(requestBuilder);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public c error(Object obj) {
        return (c) super.error(obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public c fallback(int i11) {
        return (c) super.fallback(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public c fallback(Drawable drawable) {
        return (c) super.fallback(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public c fitCenter() {
        return (c) super.fitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public c format(DecodeFormat decodeFormat) {
        return (c) super.format(decodeFormat);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public c frame(long j11) {
        return (c) super.frame(j11);
    }
}
