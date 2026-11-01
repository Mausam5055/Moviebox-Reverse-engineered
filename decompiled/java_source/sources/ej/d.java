package ej;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class d extends RequestManager {
    public d(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        super(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d addDefaultRequestListener(RequestListener requestListener) {
        return (d) super.addDefaultRequestListener(requestListener);
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized d applyDefaultRequestOptions(RequestOptions requestOptions) {
        return (d) super.applyDefaultRequestOptions(requestOptions);
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c as(Class cls) {
        return new c(this.glide, this, cls, this.context);
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c asBitmap() {
        return (c) super.asBitmap();
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c asDrawable() {
        return (c) super.asDrawable();
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public c asFile() {
        return (c) super.asFile();
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c asGif() {
        return (c) super.asGif();
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public synchronized d clearOnStop() {
        return (d) super.clearOnStop();
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c download(Object obj) {
        return (c) super.download(obj);
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c downloadOnly() {
        return (c) super.downloadOnly();
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(Bitmap bitmap) {
        return (c) super.load2(bitmap);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(Drawable drawable) {
        return (c) super.load2(drawable);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(Uri uri) {
        return (c) super.load2(uri);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(File file) {
        return (c) super.load2(file);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(Integer num) {
        return (c) super.load2(num);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(Object obj) {
        return (c) super.load2(obj);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(String str) {
        return (c) super.load2(str);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(URL url) {
        return (c) super.load2(url);
    }

    @Override // com.bumptech.glide.RequestManager, com.bumptech.glide.ModelTypes
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c load2(byte[] bArr) {
        return (c) super.load2(bArr);
    }

    @Override // com.bumptech.glide.RequestManager
    protected void setRequestOptions(RequestOptions requestOptions) {
        if (requestOptions instanceof b) {
            super.setRequestOptions(requestOptions);
        } else {
            super.setRequestOptions(new b().apply(requestOptions));
        }
    }

    @Override // com.bumptech.glide.RequestManager
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public synchronized d setDefaultRequestOptions(RequestOptions requestOptions) {
        return (d) super.setDefaultRequestOptions(requestOptions);
    }
}
