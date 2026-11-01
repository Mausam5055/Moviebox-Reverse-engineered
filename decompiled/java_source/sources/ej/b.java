package ej;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RequestOptions implements Cloneable {
    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public b optionalCenterInside() {
        return (b) super.optionalCenterInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public b optionalCircleCrop() {
        return (b) super.optionalCircleCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public b optionalFitCenter() {
        return (b) super.optionalFitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public b optionalTransform(Transformation transformation) {
        return (b) super.optionalTransform(transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public b optionalTransform(Class cls, Transformation transformation) {
        return (b) super.optionalTransform(cls, transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public b override(int i11) {
        return (b) super.override(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public b override(int i11, int i12) {
        return (b) super.override(i11, i12);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public b placeholder(int i11) {
        return (b) super.placeholder(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public b placeholder(Drawable drawable) {
        return (b) super.placeholder(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public b priority(Priority priority) {
        return (b) super.priority(priority);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public b set(Option option, Object obj) {
        return (b) super.set(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public b signature(Key key) {
        return (b) super.signature(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public b sizeMultiplier(float f11) {
        return (b) super.sizeMultiplier(f11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public b skipMemoryCache(boolean z10) {
        return (b) super.skipMemoryCache(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public b theme(Resources.Theme theme) {
        return (b) super.theme(theme);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public b timeout(int i11) {
        return (b) super.timeout(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public b transform(Transformation transformation) {
        return (b) super.transform((Transformation<Bitmap>) transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public b transform(Class cls, Transformation transformation) {
        return (b) super.transform(cls, transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public final b transform(Transformation... transformationArr) {
        return (b) super.transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public final b transforms(Transformation... transformationArr) {
        return (b) super.transforms(transformationArr);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public b useAnimationPool(boolean z10) {
        return (b) super.useAnimationPool(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public b useUnlimitedSourceGeneratorsPool(boolean z10) {
        return (b) super.useUnlimitedSourceGeneratorsPool(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b apply(BaseRequestOptions baseRequestOptions) {
        return (b) super.apply(baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public b autoClone() {
        return (b) super.autoClone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b centerCrop() {
        return (b) super.centerCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b centerInside() {
        return (b) super.centerInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b circleCrop() {
        return (b) super.circleCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public b mo202clone() {
        return (b) super.mo202clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public b decode(Class cls) {
        return (b) super.decode(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public b disallowHardwareConfig() {
        return (b) super.disallowHardwareConfig();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public b diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (b) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b dontAnimate() {
        return (b) super.dontAnimate();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public b dontTransform() {
        return (b) super.dontTransform();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public b downsample(DownsampleStrategy downsampleStrategy) {
        return (b) super.downsample(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public b encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (b) super.encodeFormat(compressFormat);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public b encodeQuality(int i11) {
        return (b) super.encodeQuality(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public b error(int i11) {
        return (b) super.error(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public b error(Drawable drawable) {
        return (b) super.error(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public b fallback(int i11) {
        return (b) super.fallback(i11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public b fallback(Drawable drawable) {
        return (b) super.fallback(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public b fitCenter() {
        return (b) super.fitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public b format(DecodeFormat decodeFormat) {
        return (b) super.format(decodeFormat);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public b frame(long j11) {
        return (b) super.frame(j11);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public b lock() {
        return (b) super.lock();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public b onlyRetrieveFromCache(boolean z10) {
        return (b) super.onlyRetrieveFromCache(z10);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b optionalCenterCrop() {
        return (b) super.optionalCenterCrop();
    }
}
