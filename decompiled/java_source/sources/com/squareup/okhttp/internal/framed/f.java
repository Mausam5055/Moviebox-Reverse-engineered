package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InflaterSource f40412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f40413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BufferedSource f40414c;

    class a extends ForwardingSource {
        a(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            if (f.this.f40413b == 0) {
                return -1L;
            }
            long j12 = super.read(buffer, Math.min(j11, f.this.f40413b));
            if (j12 == -1) {
                return -1L;
            }
            f fVar = f.this;
            fVar.f40413b = (int) (((long) fVar.f40413b) - j12);
            return j12;
        }
    }

    class b extends Inflater {
        b() {
        }

        @Override // java.util.zip.Inflater
        public int inflate(byte[] bArr, int i11, int i12) throws DataFormatException {
            int iInflate = super.inflate(bArr, i11, i12);
            if (iInflate != 0 || !needsDictionary()) {
                return iInflate;
            }
            setDictionary(i.f40421a);
            return super.inflate(bArr, i11, i12);
        }
    }

    public f(BufferedSource bufferedSource) {
        InflaterSource inflaterSource = new InflaterSource(new a(bufferedSource), new b());
        this.f40412a = inflaterSource;
        this.f40414c = Okio.buffer(inflaterSource);
    }

    private void d() throws IOException {
        if (this.f40413b > 0) {
            this.f40412a.refill();
            if (this.f40413b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f40413b);
        }
    }

    private ByteString e() throws IOException {
        return this.f40414c.readByteString(this.f40414c.readInt());
    }

    public void c() {
        this.f40414c.close();
    }

    public List f(int i11) {
        this.f40413b += i11;
        int i12 = this.f40414c.readInt();
        if (i12 < 0) {
            throw new IOException("numberOfPairs < 0: " + i12);
        }
        if (i12 > 1024) {
            throw new IOException("numberOfPairs > 1024: " + i12);
        }
        ArrayList arrayList = new ArrayList(i12);
        for (int i13 = 0; i13 < i12; i13++) {
            ByteString asciiLowercase = e().toAsciiLowercase();
            ByteString byteStringE = e();
            if (asciiLowercase.size() == 0) {
                throw new IOException("name.size == 0");
            }
            arrayList.add(new com.squareup.okhttp.internal.framed.b(asciiLowercase, byteStringE));
        }
        d();
        return arrayList;
    }
}
