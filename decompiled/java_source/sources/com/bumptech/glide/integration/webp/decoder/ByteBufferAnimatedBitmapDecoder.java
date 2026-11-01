package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class ByteBufferAnimatedBitmapDecoder implements ResourceDecoder<ByteBuffer, Bitmap> {
    private final AnimatedWebpBitmapDecoder bitmapDecoder;

    public ByteBufferAnimatedBitmapDecoder(AnimatedWebpBitmapDecoder animatedWebpBitmapDecoder) {
        this.bitmapDecoder = animatedWebpBitmapDecoder;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    public Resource<Bitmap> decode(@NonNull ByteBuffer byteBuffer, int i11, int i12, @NonNull Options options) throws IOException {
        return this.bitmapDecoder.decode(byteBuffer, i11, i12, options);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull ByteBuffer byteBuffer, @NonNull Options options) throws IOException {
        return this.bitmapDecoder.handles(byteBuffer, options);
    }
}
