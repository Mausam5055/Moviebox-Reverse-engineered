package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class NamespaceRemovingInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f19000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f19001b;

    private static final class StringPrefixSlicer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f19002a;

        public StringPrefixSlicer(String str) {
            this.f19002a = str;
        }

        public String a() {
            return this.f19002a;
        }

        public boolean b(String str) {
            if (!this.f19002a.startsWith(str)) {
                return false;
            }
            this.f19002a = this.f19002a.substring(str.length());
            return true;
        }

        public boolean c(String str) {
            int iIndexOf = this.f19002a.indexOf(str);
            if (iIndexOf < 0) {
                return false;
            }
            this.f19002a = this.f19002a.substring(iIndexOf + str.length());
            return true;
        }

        public boolean d(String str) {
            if (!this.f19002a.startsWith(str)) {
                return false;
            }
            while (this.f19002a.startsWith(str)) {
                this.f19002a = this.f19002a.substring(str.length());
            }
            return true;
        }
    }

    public NamespaceRemovingInputStream(InputStream inputStream) {
        super(new BufferedInputStream(inputStream));
        this.f19000a = new byte[200];
        this.f19001b = false;
    }

    private int l(String str) {
        StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
        if (!stringPrefixSlicer.b("xmlns")) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (!stringPrefixSlicer.b(UrlUtils.EQUAL_MARK)) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (stringPrefixSlicer.b("\"") && stringPrefixSlicer.c("\"")) {
            return str.length() - stringPrefixSlicer.a().length();
        }
        return -1;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        k();
        int i11 = ((FilterInputStream) this).in.read();
        if (i11 != 120 || this.f19001b) {
            return i11;
        }
        this.f19000a[0] = (byte) i11;
        ((FilterInputStream) this).in.mark(this.f19000a.length);
        InputStream inputStream = ((FilterInputStream) this).in;
        byte[] bArr = this.f19000a;
        int i12 = inputStream.read(bArr, 1, bArr.length - 1);
        ((FilterInputStream) this).in.reset();
        int iL = l(new String(this.f19000a, 0, i12 + 1, StringUtils.f19004a));
        if (iL <= 0) {
            return i11;
        }
        for (int i13 = 0; i13 < iL - 1; i13++) {
            ((FilterInputStream) this).in.read();
        }
        int i14 = ((FilterInputStream) this).in.read();
        this.f19001b = true;
        return i14;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = read();
            if (i14 == -1) {
                if (i13 == 0) {
                    return -1;
                }
                return i13;
            }
            bArr[i13 + i11] = (byte) i14;
        }
        return i12;
    }
}
