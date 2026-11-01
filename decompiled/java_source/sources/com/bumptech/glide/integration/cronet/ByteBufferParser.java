package com.bumptech.glide.integration.cronet;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
interface ByteBufferParser<T> {
    Class<T> getDataClass();

    T parse(ByteBuffer byteBuffer);
}
