package org.chromium.net;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public final class UploadDataProviders {
    private UploadDataProviders() {
    }

    public static UploadDataProvider create(ParcelFileDescriptor parcelFileDescriptor) {
        return c10.a.a(parcelFileDescriptor);
    }

    public static UploadDataProvider create(File file) {
        return c10.a.b(file);
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return c10.a.c(byteBuffer);
    }

    public static UploadDataProvider create(byte[] bArr) {
        return c10.a.d(bArr);
    }

    public static UploadDataProvider create(byte[] bArr, int i11, int i12) {
        return c10.a.e(bArr, i11, i12);
    }
}
