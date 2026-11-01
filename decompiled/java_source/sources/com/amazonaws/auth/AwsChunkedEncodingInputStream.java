package com.amazonaws.auth;

import android.support.v4.media.session.PlaybackStateCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class AwsChunkedEncodingInputStream extends SdkInputStream {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final byte[] f18336m = new byte[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Log f18337n = LogFactory.b(AwsChunkedEncodingInputStream.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f18338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f18340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f18341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f18342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f18343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f18344g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AWS4Signer f18345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ChunkContentIterator f18346i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private DecodedStreamBuffer f18347j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f18348k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f18349l;

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i11, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f18338a = null;
        this.f18348k = true;
        this.f18349l = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i11 = Math.max(awsChunkedEncodingInputStream.f18339b, i11);
            this.f18338a = awsChunkedEncodingInputStream.f18338a;
            this.f18347j = awsChunkedEncodingInputStream.f18347j;
        } else {
            this.f18338a = inputStream;
            this.f18347j = null;
        }
        if (i11 < 131072) {
            throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
        }
        this.f18339b = i11;
        this.f18340c = bArr;
        this.f18341d = str;
        this.f18342e = str2;
        this.f18343f = str3;
        this.f18344g = str3;
        this.f18345h = aWS4Signer;
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    private static long m(long j11) {
        return ((long) (Long.toHexString(j11).length() + 83)) + j11 + ((long) 2);
    }

    public static long n(long j11) {
        if (j11 < 0) {
            throw new IllegalArgumentException("Nonnegative content length expected.");
        }
        long j12 = j11 / PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        long j13 = j11 % PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        return (j12 * m(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) + (j13 > 0 ? m(j13) : 0L) + m(0L);
    }

    private byte[] o(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Integer.toHexString(bArr.length));
        String strD = BinaryUtils.d(this.f18345h.r("AWS4-HMAC-SHA256-PAYLOAD\n" + this.f18341d + "\n" + this.f18342e + "\n" + this.f18344g + "\n" + BinaryUtils.d(this.f18345h.o("")) + "\n" + BinaryUtils.d(this.f18345h.p(bArr)), this.f18340c, SigningAlgorithm.HmacSHA256));
        this.f18344g = strD;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(";chunk-signature=");
        sb3.append(strD);
        sb2.append(sb3.toString());
        sb2.append("\r\n");
        try {
            String string = sb2.toString();
            Charset charset = StringUtils.f19004a;
            byte[] bytes = string.getBytes(charset);
            byte[] bytes2 = "\r\n".getBytes(charset);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e11) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e11.getMessage(), e11);
        }
    }

    private boolean p() throws IOException {
        byte[] bArr = new byte[131072];
        int i11 = 0;
        while (i11 < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.f18347j;
            if (decodedStreamBuffer == null || !decodedStreamBuffer.b()) {
                int i12 = this.f18338a.read(bArr, i11, 131072 - i11);
                if (i12 == -1) {
                    break;
                }
                DecodedStreamBuffer decodedStreamBuffer2 = this.f18347j;
                if (decodedStreamBuffer2 != null) {
                    decodedStreamBuffer2.a(bArr, i11, i12);
                }
                i11 += i12;
            } else {
                bArr[i11] = this.f18347j.c();
                i11++;
            }
        }
        if (i11 == 0) {
            this.f18346i = new ChunkContentIterator(o(f18336m));
            return true;
        }
        if (i11 < 131072) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, 0, bArr2, 0, i11);
            bArr = bArr2;
        }
        this.f18346i = new ChunkContentIterator(o(bArr));
        return false;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    protected InputStream l() {
        return this.f18338a;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i11) {
        try {
            k();
            if (!this.f18348k) {
                throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
            }
            if (this.f18338a.markSupported()) {
                Log log = f18337n;
                if (log.b()) {
                    log.a("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                }
                this.f18338a.mark(Integer.MAX_VALUE);
            } else {
                Log log2 = f18337n;
                if (log2.b()) {
                    log2.a("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                }
                this.f18347j = new DecodedStreamBuffer(this.f18339b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        int i11 = read(bArr, 0, 1);
        if (i11 == -1) {
            return i11;
        }
        Log log = f18337n;
        if (log.b()) {
            log.a("One byte read from the stream.");
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        k();
        bArr.getClass();
        if (i11 < 0 || i12 < 0 || i12 > bArr.length - i11) {
            throw new IndexOutOfBoundsException();
        }
        if (i12 == 0) {
            return 0;
        }
        ChunkContentIterator chunkContentIterator = this.f18346i;
        if (chunkContentIterator == null || !chunkContentIterator.a()) {
            if (this.f18349l) {
                return -1;
            }
            this.f18349l = p();
        }
        int iB = this.f18346i.b(bArr, i11, i12);
        if (iB > 0) {
            this.f18348k = false;
            Log log = f18337n;
            if (log.b()) {
                log.a(iB + " byte read from the stream.");
            }
        }
        return iB;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        try {
            k();
            this.f18346i = null;
            this.f18344g = this.f18343f;
            if (this.f18338a.markSupported()) {
                Log log = f18337n;
                if (log.b()) {
                    log.a("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f18338a.reset();
            } else {
                Log log2 = f18337n;
                if (log2.b()) {
                    log2.a("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                DecodedStreamBuffer decodedStreamBuffer = this.f18347j;
                if (decodedStreamBuffer == null) {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                }
                decodedStreamBuffer.d();
            }
            this.f18346i = null;
            this.f18348k = true;
            this.f18349l = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j11) {
        int i11;
        if (j11 <= 0) {
            return 0L;
        }
        int iMin = (int) Math.min(PlaybackStateCompat.ACTION_SET_REPEAT_MODE, j11);
        byte[] bArr = new byte[iMin];
        long j12 = j11;
        while (j12 > 0 && (i11 = read(bArr, 0, iMin)) >= 0) {
            j12 -= (long) i11;
        }
        return j11 - j12;
    }
}
