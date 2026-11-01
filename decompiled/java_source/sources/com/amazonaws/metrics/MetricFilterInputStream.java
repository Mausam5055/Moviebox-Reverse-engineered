package com.amazonaws.metrics;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MetricFilterInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteThroughputHelper f18441a;

    public MetricFilterInputStream(ThroughputMetricType throughputMetricType, InputStream inputStream) {
        super(inputStream);
        this.f18441a = new ByteThroughputHelper(throughputMetricType);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f18441a.f();
        ((FilterInputStream) this).in.close();
        k();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, com.amazonaws.internal.MetricAware
    public final boolean d() {
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        k();
        long jG = this.f18441a.g();
        int i13 = ((FilterInputStream) this).in.read(bArr, i11, i12);
        if (i13 > 0) {
            this.f18441a.d(i13, jG);
        }
        return i13;
    }
}
