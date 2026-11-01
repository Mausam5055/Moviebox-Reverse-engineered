package com.bumptech.glide.integration.cronet;

import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class ChromiumUrlFetcher<T> implements DataFetcher<T>, ChromiumRequestSerializer.Listener {
    private DataFetcher.DataCallback<? super T> callback;
    private final ByteBufferParser<T> parser;
    private final ChromiumRequestSerializer serializer;
    private final GlideUrl url;

    public ChromiumUrlFetcher(ChromiumRequestSerializer chromiumRequestSerializer, ByteBufferParser<T> byteBufferParser, GlideUrl glideUrl) {
        this.serializer = chromiumRequestSerializer;
        this.parser = byteBufferParser;
        this.url = glideUrl;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.serializer.cancelRequest(this.url, this);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public Class<T> getDataClass() {
        return this.parser.getDataClass();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(Priority priority, DataFetcher.DataCallback<? super T> dataCallback) {
        this.callback = dataCallback;
        this.serializer.startRequest(priority, this.url, this);
    }

    @Override // com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.Listener
    public void onRequestComplete(ByteBuffer byteBuffer) {
        this.callback.onDataReady(this.parser.parse(byteBuffer));
    }

    @Override // com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.Listener
    public void onRequestFailed(@Nullable Exception exc) {
        this.callback.onLoadFailed(exc);
    }
}
