package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

/* JADX INFO: loaded from: classes2.dex */
class DecodedStreamBuffer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Log f18359f = LogFactory.b(DecodedStreamBuffer.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f18360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f18363d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f18364e;

    public DecodedStreamBuffer(int i11) {
        this.f18360a = new byte[i11];
        this.f18361b = i11;
    }

    public void a(byte[] bArr, int i11, int i12) {
        this.f18363d = -1;
        int i13 = this.f18362c;
        if (i13 + i12 <= this.f18361b) {
            System.arraycopy(bArr, i11, this.f18360a, i13, i12);
            this.f18362c += i12;
            return;
        }
        Log log = f18359f;
        if (log.b()) {
            log.a("Buffer size " + this.f18361b + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
        }
        this.f18364e = true;
    }

    public boolean b() {
        int i11 = this.f18363d;
        return i11 != -1 && i11 < this.f18362c;
    }

    public byte c() {
        byte[] bArr = this.f18360a;
        int i11 = this.f18363d;
        this.f18363d = i11 + 1;
        return bArr[i11];
    }

    public void d() {
        if (!this.f18364e) {
            this.f18363d = 0;
            return;
        }
        throw new AmazonClientException("The input stream is not repeatable since the buffer size " + this.f18361b + " has been exceeded.");
    }
}
