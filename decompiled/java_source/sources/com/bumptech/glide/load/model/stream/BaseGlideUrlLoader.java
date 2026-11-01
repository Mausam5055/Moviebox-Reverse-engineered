package com.bumptech.glide.load.model.stream;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseGlideUrlLoader<Model> implements ModelLoader<Model, InputStream> {
    private final ModelLoader<GlideUrl, InputStream> concreteLoader;

    @Nullable
    private final ModelCache<Model, GlideUrl> modelCache;

    protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        this(modelLoader, null);
    }

    protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader, @Nullable ModelCache<Model, GlideUrl> modelCache) {
        this.concreteLoader = modelLoader;
        this.modelCache = modelCache;
    }

    private static List<Key> getAlternateKeys(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new GlideUrl(it.next()));
        }
        return arrayList;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull Model model, int i11, int i12, @NonNull Options options) {
        ModelCache<Model, GlideUrl> modelCache = this.modelCache;
        GlideUrl glideUrl = modelCache != null ? modelCache.get(model, i11, i12) : null;
        if (glideUrl == null) {
            String url = getUrl(model, i11, i12, options);
            if (TextUtils.isEmpty(url)) {
                return null;
            }
            GlideUrl glideUrl2 = new GlideUrl(url, getHeaders(model, i11, i12, options));
            ModelCache<Model, GlideUrl> modelCache2 = this.modelCache;
            if (modelCache2 != null) {
                modelCache2.put(model, i11, i12, glideUrl2);
            }
            glideUrl = glideUrl2;
        }
        List<String> alternateUrls = getAlternateUrls(model, i11, i12, options);
        ModelLoader.LoadData<InputStream> loadDataBuildLoadData = this.concreteLoader.buildLoadData(glideUrl, i11, i12, options);
        return (loadDataBuildLoadData == null || alternateUrls.isEmpty()) ? loadDataBuildLoadData : new ModelLoader.LoadData<>(loadDataBuildLoadData.sourceKey, getAlternateKeys(alternateUrls), loadDataBuildLoadData.fetcher);
    }

    protected List<String> getAlternateUrls(Model model, int i11, int i12, Options options) {
        return Collections.emptyList();
    }

    @Nullable
    protected Headers getHeaders(Model model, int i11, int i12, Options options) {
        return Headers.DEFAULT;
    }

    protected abstract String getUrl(Model model, int i11, int i12, Options options);
}
