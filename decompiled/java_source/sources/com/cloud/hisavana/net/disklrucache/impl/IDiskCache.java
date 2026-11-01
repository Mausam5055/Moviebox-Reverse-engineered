package com.cloud.hisavana.net.disklrucache.impl;

import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import java.io.File;
import java.io.InputStream;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public interface IDiskCache {

    public interface Factory {
    }

    public interface Provider {
    }

    void a(ImageCacheURL imageCacheURL);

    String b(ImageCacheURL imageCacheURL, byte[] bArr);

    File c(ImageCacheURL imageCacheURL);

    String d(ImageCacheURL imageCacheURL, Response response);

    String e(ImageCacheURL imageCacheURL, InputStream inputStream);

    boolean f(String str);
}
