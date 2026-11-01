package androidx.media3.datasource.cronet;

import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes2.dex */
final class a extends UploadDataProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f10912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10913b;

    public a(byte[] bArr) {
        this.f10912a = bArr;
    }

    @Override // org.chromium.net.UploadDataProvider
    public long getLength() {
        return this.f10912a.length;
    }

    @Override // org.chromium.net.UploadDataProvider
    public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        int iMin = Math.min(byteBuffer.remaining(), this.f10912a.length - this.f10913b);
        byteBuffer.put(this.f10912a, this.f10913b, iMin);
        this.f10913b += iMin;
        uploadDataSink.onReadSucceeded(false);
    }

    @Override // org.chromium.net.UploadDataProvider
    public void rewind(UploadDataSink uploadDataSink) {
        this.f10913b = 0;
        uploadDataSink.onRewindSucceeded();
    }
}
