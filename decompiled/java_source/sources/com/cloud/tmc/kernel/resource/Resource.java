package com.cloud.tmc.kernel.resource;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface Resource {
    void addHeader(String str, String str2);

    byte[] getBytes();

    String getEncoding();

    @Nullable
    Map<String, String> getHeaders();

    @Nullable
    String getMimeType();

    InputStream getStream();

    @NonNull
    String getUrl();

    boolean isLocal();

    void setBytes(byte[] bArr);
}
