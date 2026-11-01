package com.bumptech.glide.integration.cronet;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class ChromiumUrlLoader<T> implements ModelLoader<GlideUrl, T> {
    private final ByteBufferParser<T> parser;
    private final ChromiumRequestSerializer requestSerializer;

    public static final class ByteBufferFactory implements ModelLoaderFactory<GlideUrl, ByteBuffer>, ByteBufferParser<ByteBuffer> {

        @Nullable
        private final DataLogger dataLogger;
        private CronetRequestFactory requestFactory;

        public ByteBufferFactory(CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
            this.requestFactory = cronetRequestFactory;
            this.dataLogger = dataLogger;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<GlideUrl, ByteBuffer> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ChromiumUrlLoader(this, this.requestFactory, this.dataLogger);
        }

        @Override // com.bumptech.glide.integration.cronet.ByteBufferParser
        public Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.integration.cronet.ByteBufferParser
        public ByteBuffer parse(ByteBuffer byteBuffer) {
            return byteBuffer;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public static final class StreamFactory implements ModelLoaderFactory<GlideUrl, InputStream>, ByteBufferParser<InputStream> {

        @Nullable
        private final DataLogger dataLogger;
        private CronetRequestFactory requestFactory;

        public StreamFactory(CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
            this.requestFactory = cronetRequestFactory;
            this.dataLogger = dataLogger;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ChromiumUrlLoader(this, this.requestFactory, this.dataLogger);
        }

        @Override // com.bumptech.glide.integration.cronet.ByteBufferParser
        public Class<InputStream> getDataClass() {
            return InputStream.class;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bumptech.glide.integration.cronet.ByteBufferParser
        public InputStream parse(ByteBuffer byteBuffer) {
            return ByteBufferUtil.toStream(byteBuffer);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    ChromiumUrlLoader(ByteBufferParser<T> byteBufferParser, CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
        this.parser = byteBufferParser;
        this.requestSerializer = new ChromiumRequestSerializer(cronetRequestFactory, dataLogger);
    }

    ChromiumUrlLoader(CronetRequestFactory cronetRequestFactory, ByteBufferParser<T> byteBufferParser) {
        this(byteBufferParser, cronetRequestFactory, null);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<T> buildLoadData(GlideUrl glideUrl, int i11, int i12, Options options) {
        return new ModelLoader.LoadData<>(glideUrl, new ChromiumUrlFetcher(this.requestSerializer, this.parser, glideUrl));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(GlideUrl glideUrl) {
        return true;
    }
}
