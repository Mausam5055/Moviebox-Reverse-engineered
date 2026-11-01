package com.amazonaws.mobileconnectors.s3.transferutility;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class TransferObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f18470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TransferDBUtil f18471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f18474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f18475f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TransferState f18476g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f18477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TransferListener f18478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TransferStatusListener f18479j;

    private class TransferStatusListener implements TransferListener {
        private TransferStatusListener() {
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i11, TransferState transferState) {
            TransferObserver.this.f18476g = transferState;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void b(int i11, long j11, long j12) {
            TransferObserver.this.f18475f = j11;
            TransferObserver.this.f18474e = j12;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void c(int i11, Exception exc) {
        }
    }

    TransferObserver(int i11, TransferDBUtil transferDBUtil, String str, String str2, File file) {
        this.f18470a = i11;
        this.f18471b = transferDBUtil;
        this.f18472c = str;
        this.f18473d = str2;
        this.f18477h = file.getAbsolutePath();
        this.f18474e = file.length();
        this.f18476g = TransferState.WAITING;
    }

    TransferObserver(int i11, TransferDBUtil transferDBUtil, String str, String str2, File file, TransferListener transferListener) {
        this(i11, transferDBUtil, str, str2, file);
        g(transferListener);
    }

    public void d() {
        synchronized (this) {
            try {
                TransferListener transferListener = this.f18478i;
                if (transferListener != null) {
                    TransferStatusUpdater.j(this.f18470a, transferListener);
                    this.f18478i = null;
                }
                TransferStatusListener transferStatusListener = this.f18479j;
                if (transferStatusListener != null) {
                    TransferStatusUpdater.j(this.f18470a, transferStatusListener);
                    this.f18479j = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String e() {
        return this.f18472c;
    }

    public int f() {
        return this.f18470a;
    }

    public void g(TransferListener transferListener) {
        if (transferListener != null) {
            synchronized (this) {
                d();
                TransferStatusListener transferStatusListener = new TransferStatusListener();
                this.f18479j = transferStatusListener;
                TransferStatusUpdater.g(this.f18470a, transferStatusListener);
                this.f18478i = transferListener;
                TransferStatusUpdater.g(this.f18470a, transferListener);
            }
        }
    }

    public String toString() {
        return "TransferObserver{id=" + this.f18470a + ", bucket='" + this.f18472c + "', key='" + this.f18473d + "', bytesTotal=" + this.f18474e + ", bytesTransferred=" + this.f18475f + ", transferState=" + this.f18476g + ", filePath='" + this.f18477h + "'}";
    }
}
