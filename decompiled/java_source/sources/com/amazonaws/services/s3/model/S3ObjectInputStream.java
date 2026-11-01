package com.amazonaws.services.s3.model;

import com.amazonaws.internal.MetricAware;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.MetricFilterInputStream;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class S3ObjectInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f18807a;

    public S3ObjectInputStream(InputStream inputStream) {
        super(m(inputStream) ? new MetricFilterInputStream(S3ServiceMetric.f18679b, inputStream) : inputStream);
    }

    private void l() {
        try {
            close();
        } catch (IOException e11) {
            LogFactory.b(getClass()).g("FYI", e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean m(InputStream inputStream) {
        if (!AwsSdkMetrics.isMetricsEnabled()) {
            return false;
        }
        if (inputStream instanceof MetricAware) {
            return !((MetricAware) inputStream).d();
        }
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int iAvailable = super.available();
        if (iAvailable == 0) {
            return 1;
        }
        return iAvailable;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream
    public void h() {
        l();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i11 = super.read();
        if (i11 == -1) {
            this.f18807a = true;
        }
        return i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = super.read(bArr, i11, i12);
        if (i13 == -1) {
            this.f18807a = true;
        }
        return i13;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        this.f18807a = false;
    }
}
