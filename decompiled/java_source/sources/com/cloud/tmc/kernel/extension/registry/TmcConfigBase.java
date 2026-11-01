package com.cloud.tmc.kernel.extension.registry;

import com.cloud.tmc.kernel.api.bytedata.ByteOrderDataUtil;
import com.cloud.tmc.kernel.extension.registry.TmcConfigBase;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TmcConfigBase<T extends TmcConfigBase<T>> {
    protected byte mFormatVersion;

    public TmcConfigBase(byte b11) {
        this.mFormatVersion = b11;
    }

    public T deserialize(BufferedInputStream bufferedInputStream) throws IOException {
        this.mFormatVersion = ByteOrderDataUtil.readByte(bufferedInputStream);
        return this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof TmcConfigBase) && obj.hashCode() == hashCode();
    }

    public int hashCode() {
        return super.hashCode();
    }

    public T serialize(BufferedOutputStream bufferedOutputStream) throws IOException {
        ByteOrderDataUtil.writeByte(bufferedOutputStream, this.mFormatVersion);
        return this;
    }
}
