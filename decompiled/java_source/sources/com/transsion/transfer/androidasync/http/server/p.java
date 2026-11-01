package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.t;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class p extends t {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f55490g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f55491h = 2;

    @Override // com.transsion.transfer.androidasync.t, bv.d
    public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
        if (this.f55491h > 0) {
            ByteBuffer byteBufferT = ByteBufferList.t(this.f55490g.length);
            byteBufferT.put(this.f55490g, 0, this.f55491h);
            byteBufferT.flip();
            byteBufferList.c(byteBufferT);
            this.f55491h = 0;
        }
        int iC = byteBufferList.C();
        byte[] bArr = new byte[iC];
        byteBufferList.h(bArr);
        int i11 = 0;
        int i12 = 0;
        while (i11 < iC) {
            int i13 = this.f55491h;
            if (i13 >= 0) {
                byte b11 = bArr[i11];
                byte[] bArr2 = this.f55490g;
                if (b11 == bArr2[i13]) {
                    int i14 = i13 + 1;
                    this.f55491h = i14;
                    if (i14 == bArr2.length) {
                        this.f55491h = -1;
                    }
                } else if (i13 > 0) {
                    i11 -= i13;
                    this.f55491h = 0;
                }
            } else if (i13 == -1) {
                byte b12 = bArr[i11];
                if (b12 == 13) {
                    this.f55491h = -4;
                    int length = (i11 - i12) - this.f55490g.length;
                    if (i12 != 0 || length != 0) {
                        ByteBuffer byteBufferPut = ByteBufferList.t(length).put(bArr, i12, length);
                        byteBufferPut.flip();
                        ByteBufferList byteBufferList2 = new ByteBufferList();
                        byteBufferList2.a(byteBufferPut);
                        super.F(this, byteBufferList2);
                    }
                    S();
                } else {
                    if (b12 != 45) {
                        M(new MimeEncodingException("Invalid multipart/form-data. Expected \r or -"));
                        return;
                    }
                    this.f55491h = -2;
                }
            } else if (i13 == -2) {
                if (bArr[i11] != 45) {
                    M(new MimeEncodingException("Invalid multipart/form-data. Expected -"));
                    return;
                }
                this.f55491h = -3;
            } else if (i13 == -3) {
                if (bArr[i11] != 13) {
                    M(new MimeEncodingException("Invalid multipart/form-data. Expected \r"));
                    return;
                }
                this.f55491h = -4;
                int i15 = i11 - i12;
                ByteBuffer byteBufferPut2 = ByteBufferList.t((i15 - this.f55490g.length) - 2).put(bArr, i12, (i15 - this.f55490g.length) - 2);
                byteBufferPut2.flip();
                ByteBufferList byteBufferList3 = new ByteBufferList();
                byteBufferList3.a(byteBufferPut2);
                super.F(this, byteBufferList3);
                R();
            } else if (i13 != -4) {
                M(new MimeEncodingException("Invalid multipart/form-data. Unknown state?"));
            } else if (bArr[i11] == 10) {
                i12 = i11 + 1;
                this.f55491h = 0;
            } else {
                M(new MimeEncodingException("Invalid multipart/form-data. Expected \n"));
            }
            i11++;
        }
        if (i12 < iC) {
            int iMax = (iC - i12) - Math.max(this.f55491h, 0);
            ByteBuffer byteBufferPut3 = ByteBufferList.t(iMax).put(bArr, i12, iMax);
            byteBufferPut3.flip();
            ByteBufferList byteBufferList4 = new ByteBufferList();
            byteBufferList4.a(byteBufferPut3);
            super.F(this, byteBufferList4);
        }
    }

    public String O() {
        byte[] bArr = this.f55490g;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, 4, bArr.length - 4);
    }

    public String P() {
        return Q() + "--\r\n";
    }

    public String Q() {
        byte[] bArr = this.f55490g;
        return new String(bArr, 2, bArr.length - 2);
    }

    protected void R() {
    }

    protected void S() {
    }

    public void T(String str) {
        this.f55490g = ("\r\n--" + str).getBytes();
    }
}
