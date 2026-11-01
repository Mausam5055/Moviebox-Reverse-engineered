package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetPathFetcher<T> implements DataFetcher<T> {
    private static final String TAG = "AssetPathFetcher";
    private final AssetManager assetManager;
    private final String assetPath;
    private T data;

    public AssetPathFetcher(AssetManager assetManager, String str) {
        this.assetManager = assetManager;
        this.assetPath = str;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t11 = this.data;
        if (t11 == null) {
            return;
        }
        try {
            close(t11);
        } catch (IOException unused) {
        }
    }

    protected abstract void close(T t11) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tLoadResource = loadResource(this.assetManager, this.assetPath);
            this.data = tLoadResource;
            dataCallback.onDataReady(tLoadResource);
        } catch (IOException e11) {
            Log.isLoggable(TAG, 3);
            dataCallback.onLoadFailed(e11);
        }
    }

    protected abstract T loadResource(AssetManager assetManager, String str) throws IOException;
}
