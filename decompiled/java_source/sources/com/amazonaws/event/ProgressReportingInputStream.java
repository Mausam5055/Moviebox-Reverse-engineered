package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressReportingInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f18373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ProgressListenerCallbackExecutor f18374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f18376d;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.f18373a = 8192;
        this.f18374b = progressListenerCallbackExecutor;
    }

    private void l(int i11) {
        int i12 = this.f18375c + i11;
        this.f18375c = i12;
        if (i12 >= this.f18373a) {
            this.f18374b.c(new ProgressEvent(i12));
            this.f18375c = 0;
        }
    }

    private void m() {
        if (this.f18376d) {
            ProgressEvent progressEvent = new ProgressEvent(this.f18375c);
            progressEvent.c(4);
            this.f18375c = 0;
            this.f18374b.c(progressEvent);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i11 = this.f18375c;
        if (i11 > 0) {
            this.f18374b.c(new ProgressEvent(i11));
            this.f18375c = 0;
        }
        super.close();
    }

    public void n(boolean z10) {
        this.f18376d = z10;
    }

    public void o(int i11) {
        this.f18373a = i11 * 1024;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i11 = super.read();
        if (i11 == -1) {
            m();
        } else {
            l(1);
        }
        return i11;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = super.read(bArr, i11, i12);
        if (i13 == -1) {
            m();
        }
        if (i13 != -1) {
            l(i13);
        }
        return i13;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.f18375c);
        progressEvent.c(32);
        this.f18374b.c(progressEvent);
        this.f18375c = 0;
    }
}
