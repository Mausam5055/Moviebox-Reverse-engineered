package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements e, d, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f38430c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    o f38431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f38432b;

    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(c.this.f38432b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            c cVar = c.this;
            if (cVar.f38432b > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            return c.this.read(bArr, i11, i12);
        }

        public String toString() {
            return c.this + ".inputStream()";
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b11) {
        return a(b11, 0L, Long.MAX_VALUE);
    }

    public long a(byte b11, long j11, long j12) {
        o oVar;
        long j13 = 0;
        if (j11 < 0 || j12 < j11) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f38432b), Long.valueOf(j11), Long.valueOf(j12)));
        }
        long j14 = this.f38432b;
        long j15 = j12 > j14 ? j14 : j12;
        if (j11 == j15 || (oVar = this.f38431a) == null) {
            return -1L;
        }
        if (j14 - j11 < j11) {
            while (j14 > j11) {
                oVar = oVar.f38470g;
                j14 -= (long) (oVar.f38466c - oVar.f38465b);
            }
        } else {
            while (true) {
                long j16 = ((long) (oVar.f38466c - oVar.f38465b)) + j13;
                if (j16 >= j11) {
                    break;
                }
                oVar = oVar.f38469f;
                j13 = j16;
            }
            j14 = j13;
        }
        long j17 = j11;
        while (j14 < j15) {
            byte[] bArr = oVar.f38464a;
            int iMin = (int) Math.min(oVar.f38466c, (((long) oVar.f38465b) + j15) - j14);
            for (int i11 = (int) ((((long) oVar.f38465b) + j17) - j14); i11 < iMin; i11++) {
                if (bArr[i11] == b11) {
                    return ((long) (i11 - oVar.f38465b)) + j14;
                }
            }
            j14 += (long) (oVar.f38466c - oVar.f38465b);
            oVar = oVar.f38469f;
            j17 = j14;
        }
        return -1L;
    }

    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j11 = 0;
        while (true) {
            long jB = sVar.b(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jB == -1) {
                return j11;
            }
            j11 += jB;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this;
    }

    public final c a(c cVar, long j11, long j12) {
        if (cVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        u.a(this.f38432b, j11, j12);
        if (j12 == 0) {
            return this;
        }
        cVar.f38432b += j12;
        o oVar = this.f38431a;
        while (true) {
            long j13 = oVar.f38466c - oVar.f38465b;
            if (j11 < j13) {
                break;
            }
            j11 -= j13;
            oVar = oVar.f38469f;
        }
        while (j12 > 0) {
            o oVarC = oVar.c();
            int i11 = (int) (((long) oVarC.f38465b) + j11);
            oVarC.f38465b = i11;
            oVarC.f38466c = Math.min(i11 + ((int) j12), oVarC.f38466c);
            o oVar2 = cVar.f38431a;
            if (oVar2 == null) {
                oVarC.f38470g = oVarC;
                oVarC.f38469f = oVarC;
                cVar.f38431a = oVarC;
            } else {
                oVar2.f38470g.a(oVarC);
            }
            j12 -= (long) (oVarC.f38466c - oVarC.f38465b);
            oVar = oVar.f38469f;
            j11 = 0;
        }
        return this;
    }

    public c a(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.a(this);
        return this;
    }

    public c a(String str, int i11, int i12) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i11);
        }
        if (i12 < i11) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i12 + " < " + i11);
        }
        if (i12 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i12 + " > " + str.length());
        }
        while (i11 < i12) {
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 < 128) {
                o oVarB = b(1);
                byte[] bArr = oVarB.f38464a;
                int i13 = oVarB.f38466c - i11;
                int iMin = Math.min(i12, 8192 - i13);
                int i14 = i11 + 1;
                bArr[i11 + i13] = (byte) cCharAt2;
                while (true) {
                    i11 = i14;
                    if (i11 >= iMin || (cCharAt = str.charAt(i11)) >= 128) {
                        break;
                    }
                    i14 = i11 + 1;
                    bArr[i11 + i13] = (byte) cCharAt;
                }
                int i15 = oVarB.f38466c;
                int i16 = (i13 + i11) - i15;
                oVarB.f38466c = i15 + i16;
                this.f38432b += (long) i16;
            } else {
                if (cCharAt2 < 2048) {
                    writeByte((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    writeByte((cCharAt2 & '?') | 128);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    writeByte((cCharAt2 >> '\f') | 224);
                    writeByte(((cCharAt2 >> 6) & 63) | 128);
                    writeByte((cCharAt2 & '?') | 128);
                } else {
                    int i17 = i11 + 1;
                    char cCharAt3 = i17 < i12 ? str.charAt(i17) : (char) 0;
                    if (cCharAt2 > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        writeByte(63);
                        i11 = i17;
                    } else {
                        int i18 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        writeByte((i18 >> 18) | 240);
                        writeByte(((i18 >> 12) & 63) | 128);
                        writeByte(((i18 >> 6) & 63) | 128);
                        writeByte((i18 & 63) | 128);
                        i11 += 2;
                    }
                }
                i11++;
            }
        }
        return this;
    }

    public c a(String str, int i11, int i12, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i11 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i11);
        }
        if (i12 < i11) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i12 + " < " + i11);
        }
        if (i12 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(u.f38479a)) {
                return a(str, i11, i12);
            }
            byte[] bytes = str.substring(i11, i12).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i12 + " > " + str.length());
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c write(byte[] bArr, int i11, int i12) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j11 = i12;
        u.a(bArr.length, i11, j11);
        int i13 = i12 + i11;
        while (i11 < i13) {
            o oVarB = b(1);
            int iMin = Math.min(i13 - i11, 8192 - oVarB.f38466c);
            System.arraycopy(bArr, i11, oVarB.f38464a, oVarB.f38466c, iMin);
            i11 += iMin;
            oVarB.f38466c += iMin;
        }
        this.f38432b += j11;
        return this;
    }

    public final f a(int i11) {
        return i11 == 0 ? f.f38435e : new q(this, i11);
    }

    public String a(long j11, Charset charset) throws EOFException {
        u.a(this.f38432b, 0L, j11);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j11 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j11);
        }
        if (j11 == 0) {
            return "";
        }
        o oVar = this.f38431a;
        int i11 = oVar.f38465b;
        if (((long) i11) + j11 > oVar.f38466c) {
            return new String(c(j11), charset);
        }
        String str = new String(oVar.f38464a, i11, (int) j11, charset);
        int i12 = (int) (((long) oVar.f38465b) + j11);
        oVar.f38465b = i12;
        this.f38432b -= j11;
        if (i12 == oVar.f38466c) {
            this.f38431a = oVar.b();
            p.a(oVar);
        }
        return str;
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j11) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        u.a(cVar.f38432b, 0L, j11);
        while (j11 > 0) {
            o oVar = cVar.f38431a;
            if (j11 < oVar.f38466c - oVar.f38465b) {
                o oVar2 = this.f38431a;
                o oVar3 = oVar2 != null ? oVar2.f38470g : null;
                if (oVar3 != null && oVar3.f38468e) {
                    if ((((long) oVar3.f38466c) + j11) - ((long) (oVar3.f38467d ? 0 : oVar3.f38465b)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        oVar.a(oVar3, (int) j11);
                        cVar.f38432b -= j11;
                        this.f38432b += j11;
                        return;
                    }
                }
                cVar.f38431a = oVar.a((int) j11);
            }
            o oVar4 = cVar.f38431a;
            long j12 = oVar4.f38466c - oVar4.f38465b;
            cVar.f38431a = oVar4.b();
            o oVar5 = this.f38431a;
            if (oVar5 == null) {
                this.f38431a = oVar4;
                oVar4.f38470g = oVar4;
                oVar4.f38469f = oVar4;
            } else {
                oVar5.f38470g.a(oVar4).a();
            }
            cVar.f38432b -= j12;
            this.f38432b += j12;
            j11 -= j12;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j11) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        long j12 = this.f38432b;
        if (j12 == 0) {
            return -1L;
        }
        if (j11 > j12) {
            j11 = j12;
        }
        cVar.a(this, j11);
        return j11;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c a(String str) {
        return a(str, 0, str.length());
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j11) throws EOFException {
        return new f(c(j11));
    }

    o b(int i11) {
        if (i11 < 1 || i11 > 8192) {
            throw new IllegalArgumentException();
        }
        o oVar = this.f38431a;
        if (oVar != null) {
            o oVar2 = oVar.f38470g;
            return (oVar2.f38466c + i11 > 8192 || !oVar2.f38468e) ? oVar2.a(p.a()) : oVar2;
        }
        o oVarA = p.a();
        this.f38431a = oVarA;
        oVarA.f38470g = oVarA;
        oVarA.f38469f = oVarA;
        return oVarA;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return t.f38475d;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c writeByte(int i11) {
        o oVarB = b(1);
        byte[] bArr = oVarB.f38464a;
        int i12 = oVarB.f38466c;
        oVarB.f38466c = i12 + 1;
        bArr[i12] = (byte) i11;
        this.f38432b++;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws EOFException {
        return d(Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j11) throws EOFException {
        u.a(this.f38432b, 0L, j11);
        if (j11 <= 2147483647L) {
            byte[] bArr = new byte[(int) j11];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j11);
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c writeInt(int i11) {
        o oVarB = b(4);
        byte[] bArr = oVarB.f38464a;
        int i12 = oVarB.f38466c;
        bArr[i12] = (byte) ((i11 >>> 24) & 255);
        bArr[i12 + 1] = (byte) ((i11 >>> 16) & 255);
        bArr[i12 + 2] = (byte) ((i11 >>> 8) & 255);
        bArr[i12 + 3] = (byte) (i11 & 255);
        oVarB.f38466c = i12 + 4;
        this.f38432b += 4;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j11) throws EOFException {
        if (j11 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j11);
        }
        long j12 = j11 != Long.MAX_VALUE ? j11 + 1 : Long.MAX_VALUE;
        long jA = a((byte) 10, 0L, j12);
        if (jA != -1) {
            return h(jA);
        }
        if (j12 < size() && f(j12 - 1) == 13 && f(j12) == 10) {
            return h(j12);
        }
        c cVar = new c();
        a(cVar, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j11) + " content=" + cVar.o().b() + (char) 8230);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() {
        return u.a(readInt());
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c writeShort(int i11) {
        o oVarB = b(2);
        byte[] bArr = oVarB.f38464a;
        int i12 = oVarB.f38466c;
        bArr[i12] = (byte) ((i11 >>> 8) & 255);
        bArr[i12 + 1] = (byte) (i11 & 255);
        oVarB.f38466c = i12 + 2;
        this.f38432b += 2;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j11) throws EOFException {
        if (this.f38432b < j11) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j11 = this.f38432b;
        if (j11 != cVar.f38432b) {
            return false;
        }
        long j12 = 0;
        if (j11 == 0) {
            return true;
        }
        o oVar = this.f38431a;
        o oVar2 = cVar.f38431a;
        int i11 = oVar.f38465b;
        int i12 = oVar2.f38465b;
        while (j12 < this.f38432b) {
            long jMin = Math.min(oVar.f38466c - i11, oVar2.f38466c - i12);
            int i13 = 0;
            while (i13 < jMin) {
                int i14 = i11 + 1;
                int i15 = i12 + 1;
                if (oVar.f38464a[i11] != oVar2.f38464a[i12]) {
                    return false;
                }
                i13++;
                i11 = i14;
                i12 = i15;
            }
            if (i11 == oVar.f38466c) {
                oVar = oVar.f38469f;
                i11 = oVar.f38465b;
            }
            if (i12 == oVar2.f38466c) {
                oVar2 = oVar2.f38469f;
                i12 = oVar2.f38465b;
            }
            j12 += jMin;
        }
        return true;
    }

    public final byte f(long j11) {
        u.a(this.f38432b, j11, 1L);
        long j12 = this.f38432b;
        if (j12 - j11 > j11) {
            o oVar = this.f38431a;
            while (true) {
                int i11 = oVar.f38466c;
                int i12 = oVar.f38465b;
                long j13 = i11 - i12;
                if (j11 < j13) {
                    return oVar.f38464a[i12 + ((int) j11)];
                }
                j11 -= j13;
                oVar = oVar.f38469f;
            }
        } else {
            long j14 = j11 - j12;
            o oVar2 = this.f38431a.f38470g;
            while (true) {
                int i13 = oVar2.f38466c;
                int i14 = oVar2.f38465b;
                j14 += (long) (i13 - i14);
                if (j14 >= 0) {
                    return oVar2.f38464a[i14 + ((int) j14)];
                }
                oVar2 = oVar2.f38470g;
            }
        }
    }

    public c f(int i11) {
        if (i11 < 128) {
            writeByte(i11);
        } else if (i11 < 2048) {
            writeByte((i11 >> 6) | PsExtractor.AUDIO_STREAM);
            writeByte((i11 & 63) | 128);
        } else if (i11 < 65536) {
            if (i11 < 55296 || i11 > 57343) {
                writeByte((i11 >> 12) | 224);
                writeByte(((i11 >> 6) & 63) | 128);
                writeByte((i11 & 63) | 128);
            } else {
                writeByte(63);
            }
        } else {
            if (i11 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i11));
            }
            writeByte((i11 >> 18) | 240);
            writeByte(((i11 >> 12) & 63) | 128);
            writeByte(((i11 >> 6) & 63) | 128);
            writeByte((i11 & 63) | 128);
        }
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() {
        return this.f38432b == 0;
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() {
    }

    public String g(long j11) throws EOFException {
        return a(j11, u.f38479a);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() {
        return u.a(readShort());
    }

    String h(long j11) throws EOFException {
        if (j11 > 0) {
            long j12 = j11 - 1;
            if (f(j12) == 13) {
                String strG = g(j12);
                skip(2L);
                return strG;
            }
        }
        String strG2 = g(j11);
        skip(1L);
        return strG2;
    }

    public int hashCode() {
        o oVar = this.f38431a;
        if (oVar == null) {
            return 0;
        }
        int i11 = 1;
        do {
            int i12 = oVar.f38466c;
            for (int i13 = oVar.f38465b; i13 < i12; i13++) {
                i11 = (i11 * 31) + oVar.f38464a[i13];
            }
            oVar = oVar.f38469f;
        } while (oVar != this.f38431a);
        return i11;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long i() {
        int i11;
        if (this.f38432b == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i12 = 0;
        boolean z10 = false;
        long j11 = 0;
        do {
            o oVar = this.f38431a;
            byte[] bArr = oVar.f38464a;
            int i13 = oVar.f38465b;
            int i14 = oVar.f38466c;
            while (i13 < i14) {
                byte b11 = bArr[i13];
                if (b11 >= 48 && b11 <= 57) {
                    i11 = b11 - 48;
                } else if (b11 >= 97 && b11 <= 102) {
                    i11 = b11 - 87;
                } else {
                    if (b11 < 65 || b11 > 70) {
                        if (i12 != 0) {
                            z10 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b11));
                    }
                    i11 = b11 - 55;
                }
                if (((-1152921504606846976L) & j11) != 0) {
                    throw new NumberFormatException("Number too large: " + new c().a(j11).writeByte((int) b11).p());
                }
                j11 = (j11 << 4) | ((long) i11);
                i13++;
                i12++;
            }
            if (i13 == i14) {
                this.f38431a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f38465b = i13;
            }
            if (z10) {
                break;
            }
        } while (this.f38431a != null);
        this.f38432b -= (long) i12;
        return j11;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c a(long j11) {
        if (j11 == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j11)) / 4) + 1;
        o oVarB = b(iNumberOfTrailingZeros);
        byte[] bArr = oVarB.f38464a;
        int i11 = oVarB.f38466c;
        for (int i12 = (i11 + iNumberOfTrailingZeros) - 1; i12 >= i11; i12--) {
            bArr[i12] = f38430c[(int) (15 & j11)];
            j11 >>>= 4;
        }
        oVarB.f38466c += iNumberOfTrailingZeros;
        this.f38432b += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    public final void k() {
        try {
            skip(this.f38432b);
        } catch (EOFException e11) {
            throw new AssertionError(e11);
        }
    }

    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c clone() {
        c cVar = new c();
        if (this.f38432b == 0) {
            return cVar;
        }
        o oVarC = this.f38431a.c();
        cVar.f38431a = oVarC;
        oVarC.f38470g = oVarC;
        oVarC.f38469f = oVarC;
        for (o oVar = this.f38431a.f38469f; oVar != this.f38431a; oVar = oVar.f38469f) {
            cVar.f38431a.f38470g.a(oVar.c());
        }
        cVar.f38432b = this.f38432b;
        return cVar;
    }

    public final long m() {
        long j11 = this.f38432b;
        if (j11 == 0) {
            return 0L;
        }
        o oVar = this.f38431a.f38470g;
        int i11 = oVar.f38466c;
        return (i11 >= 8192 || !oVar.f38468e) ? j11 : j11 - ((long) (i11 - oVar.f38465b));
    }

    public byte[] n() {
        try {
            return c(this.f38432b);
        } catch (EOFException e11) {
            throw new AssertionError(e11);
        }
    }

    public f o() {
        return new f(n());
    }

    public String p() {
        try {
            return a(this.f38432b, u.f38479a);
        } catch (EOFException e11) {
            throw new AssertionError(e11);
        }
    }

    public final f q() {
        long j11 = this.f38432b;
        if (j11 <= 2147483647L) {
            return a((int) j11);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f38432b);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f38431a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), oVar.f38466c - oVar.f38465b);
        byteBuffer.put(oVar.f38464a, oVar.f38465b, iMin);
        int i11 = oVar.f38465b + iMin;
        oVar.f38465b = i11;
        this.f38432b -= (long) iMin;
        if (i11 == oVar.f38466c) {
            this.f38431a = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    public int read(byte[] bArr, int i11, int i12) {
        u.a(bArr.length, i11, i12);
        o oVar = this.f38431a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(i12, oVar.f38466c - oVar.f38465b);
        System.arraycopy(oVar.f38464a, oVar.f38465b, bArr, i11, iMin);
        int i13 = oVar.f38465b + iMin;
        oVar.f38465b = i13;
        this.f38432b -= (long) iMin;
        if (i13 == oVar.f38466c) {
            this.f38431a = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() {
        long j11 = this.f38432b;
        if (j11 == 0) {
            throw new IllegalStateException("size == 0");
        }
        o oVar = this.f38431a;
        int i11 = oVar.f38465b;
        int i12 = oVar.f38466c;
        int i13 = i11 + 1;
        byte b11 = oVar.f38464a[i11];
        this.f38432b = j11 - 1;
        if (i13 == i12) {
            this.f38431a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f38465b = i13;
        }
        return b11;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws EOFException {
        int i11 = 0;
        while (i11 < bArr.length) {
            int i12 = read(bArr, i11, bArr.length - i11);
            if (i12 == -1) {
                throw new EOFException();
            }
            i11 += i12;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() {
        long j11 = this.f38432b;
        if (j11 < 4) {
            throw new IllegalStateException("size < 4: " + this.f38432b);
        }
        o oVar = this.f38431a;
        int i11 = oVar.f38465b;
        int i12 = oVar.f38466c;
        if (i12 - i11 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = oVar.f38464a;
        int i13 = i11 + 3;
        int i14 = ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 2] & 255) << 8);
        int i15 = i11 + 4;
        int i16 = (bArr[i13] & 255) | i14;
        this.f38432b = j11 - 4;
        if (i15 == i12) {
            this.f38431a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f38465b = i15;
        }
        return i16;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() {
        long j11 = this.f38432b;
        if (j11 < 2) {
            throw new IllegalStateException("size < 2: " + this.f38432b);
        }
        o oVar = this.f38431a;
        int i11 = oVar.f38465b;
        int i12 = oVar.f38466c;
        if (i12 - i11 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = oVar.f38464a;
        int i13 = i11 + 1;
        int i14 = (bArr[i11] & 255) << 8;
        int i15 = i11 + 2;
        int i16 = (bArr[i13] & 255) | i14;
        this.f38432b = j11 - 2;
        if (i15 == i12) {
            this.f38431a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f38465b = i15;
        }
        return (short) i16;
    }

    public final long size() {
        return this.f38432b;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j11) throws EOFException {
        while (j11 > 0) {
            o oVar = this.f38431a;
            if (oVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j11, oVar.f38466c - oVar.f38465b);
            long j12 = iMin;
            this.f38432b -= j12;
            j11 -= j12;
            o oVar2 = this.f38431a;
            int i11 = oVar2.f38465b + iMin;
            oVar2.f38465b = i11;
            if (i11 == oVar2.f38466c) {
                this.f38431a = oVar2.b();
                p.a(oVar2);
            }
        }
    }

    public String toString() {
        return q().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i11 = iRemaining;
        while (i11 > 0) {
            o oVarB = b(1);
            int iMin = Math.min(i11, 8192 - oVarB.f38466c);
            byteBuffer.get(oVarB.f38464a, oVarB.f38466c, iMin);
            i11 -= iMin;
            oVarB.f38466c += iMin;
        }
        this.f38432b += (long) iRemaining;
        return iRemaining;
    }
}
