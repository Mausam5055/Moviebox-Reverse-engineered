package com.bumptech.glide.integration.webp;

import androidx.core.view.MotionEventCompat;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.Preconditions;
import com.tn.lib.view.FlowLayout;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public class WebpHeaderParser {
    public static final int MAX_WEBP_HEADER_SIZE = 21;
    private static final int RIFF_HEADER = 1380533830;
    private static final String VP8X_WEBP_BASE64 = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";
    private static final int WEBP_EXTENDED_ALPHA_FLAG = 16;
    private static final int WEBP_EXTENDED_ANIM_FLAG = 2;
    private static final int WEBP_HEADER = 1464156752;
    private static final int WEBP_LOSSLESS_ALPHA_FLAG = 8;
    private static final int WEBP_VP8L_HEADER = 1448097868;
    private static final int WEBP_VP8X_HEADER = 1448097880;
    private static final int WEBP_VP8_HEADER = 1448097824;
    public static final boolean sIsExtendedWebpSupported = isExtendedWebpSupported();

    /* JADX INFO: loaded from: classes2.dex */
    private static final class ByteArrayReader implements Reader {
        private final byte[] data;
        private final int offset;
        private int pos;
        private final int size;

        ByteArrayReader(byte[] bArr, int i11, int i12) {
            this.data = bArr;
            this.offset = i11;
            this.size = i12;
            this.pos = i11;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            int i11 = this.pos;
            if (i11 >= this.offset + this.size) {
                return -1;
            }
            byte[] bArr = this.data;
            this.pos = i11 + 1;
            return bArr[i11];
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public short getUInt8() throws IOException {
            return (short) (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int read(byte[] bArr, int i11) throws IOException {
            int iMin = Math.min((this.offset + this.size) - this.pos, i11);
            if (iMin == 0) {
                return -1;
            }
            System.arraycopy(this.data, this.pos, bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j11) throws IOException {
            int iMin = (int) Math.min((this.offset + this.size) - this.pos, j11);
            this.pos += iMin;
            return iMin;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class ByteBufferReader implements Reader {
        private final ByteBuffer byteBuffer;

        ByteBufferReader(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            if (this.byteBuffer.remaining() < 1) {
                return -1;
            }
            return this.byteBuffer.get();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public short getUInt8() throws IOException {
            return (short) (getByte() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int read(byte[] bArr, int i11) throws IOException {
            int iMin = Math.min(i11, this.byteBuffer.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.byteBuffer.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j11) throws IOException {
            int iMin = (int) Math.min(this.byteBuffer.remaining(), j11);
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private interface Reader {
        int getByte() throws IOException;

        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i11) throws IOException;

        long skip(long j11) throws IOException;
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class StreamReader implements Reader {

        /* JADX INFO: renamed from: is, reason: collision with root package name */
        private final InputStream f20141is;

        StreamReader(InputStream inputStream) {
            this.f20141is = inputStream;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getByte() throws IOException {
            return this.f20141is.read();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((this.f20141is.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f20141is.read() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public short getUInt8() throws IOException {
            return (short) (this.f20141is.read() & 255);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public int read(byte[] bArr, int i11) throws IOException {
            int i12 = i11;
            while (i12 > 0) {
                int i13 = this.f20141is.read(bArr, i11 - i12, i12);
                if (i13 == -1) {
                    break;
                }
                i12 -= i13;
            }
            return i11 - i12;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public long skip(long j11) throws IOException {
            if (j11 < 0) {
                return 0L;
            }
            long j12 = j11;
            while (j12 > 0) {
                long jSkip = this.f20141is.skip(j12);
                if (jSkip <= 0) {
                    if (this.f20141is.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j12 -= jSkip;
            }
            return j11 - j12;
        }
    }

    public enum WebpImageType {
        WEBP_SIMPLE(false, false),
        WEBP_LOSSLESS(false, false),
        WEBP_LOSSLESS_WITH_ALPHA(true, false),
        WEBP_EXTENDED(false, false),
        WEBP_EXTENDED_WITH_ALPHA(true, false),
        WEBP_EXTENDED_ANIMATED(false, true),
        NONE_WEBP(false, false);

        private final boolean hasAlpha;
        private final boolean hasAnimation;

        WebpImageType(boolean z10, boolean z11) {
            this.hasAlpha = z10;
            this.hasAnimation = z11;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }

        public boolean hasAnimation() {
            return this.hasAnimation;
        }
    }

    private static WebpImageType getType(Reader reader) throws IOException {
        if ((((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != RIFF_HEADER) {
            return WebpImageType.NONE_WEBP;
        }
        reader.skip(4L);
        if ((((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != WEBP_HEADER) {
            return WebpImageType.NONE_WEBP;
        }
        int uInt16 = ((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        if (uInt16 == WEBP_VP8_HEADER) {
            return WebpImageType.WEBP_SIMPLE;
        }
        if (uInt16 == WEBP_VP8L_HEADER) {
            reader.skip(4L);
            return (reader.getByte() & 8) != 0 ? WebpImageType.WEBP_LOSSLESS_WITH_ALPHA : WebpImageType.WEBP_LOSSLESS;
        }
        if (uInt16 != WEBP_VP8X_HEADER) {
            return WebpImageType.NONE_WEBP;
        }
        reader.skip(4L);
        int i11 = reader.getByte();
        if ((i11 & 2) != 0) {
            return WebpImageType.WEBP_EXTENDED_ANIMATED;
        }
        return (i11 & 16) != 0 ? WebpImageType.WEBP_EXTENDED_WITH_ALPHA : WebpImageType.WEBP_EXTENDED;
    }

    public static WebpImageType getType(InputStream inputStream, ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return WebpImageType.NONE_WEBP;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(21);
        try {
            return getType(new StreamReader((InputStream) Preconditions.checkNotNull(inputStream)));
        } finally {
            inputStream.reset();
        }
    }

    public static WebpImageType getType(ByteBuffer byteBuffer) throws IOException {
        return byteBuffer == null ? WebpImageType.NONE_WEBP : getType(new ByteBufferReader((ByteBuffer) Preconditions.checkNotNull(byteBuffer)));
    }

    public static WebpImageType getType(byte[] bArr) throws IOException {
        return getType(bArr, 0, bArr.length);
    }

    public static WebpImageType getType(byte[] bArr, int i11, int i12) throws IOException {
        return getType(new ByteArrayReader(bArr, i11, i12));
    }

    public static boolean isAnimatedWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_EXTENDED_ANIMATED;
    }

    public static boolean isExtendedWebpSupported() {
        return true;
    }

    public static boolean isNonSimpleWebpType(WebpImageType webpImageType) {
        return (webpImageType == WebpImageType.NONE_WEBP || webpImageType == WebpImageType.WEBP_SIMPLE) ? false : true;
    }

    public static boolean isStaticWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_SIMPLE || webpImageType == WebpImageType.WEBP_LOSSLESS || webpImageType == WebpImageType.WEBP_LOSSLESS_WITH_ALPHA || webpImageType == WebpImageType.WEBP_EXTENDED || webpImageType == WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
    }
}
