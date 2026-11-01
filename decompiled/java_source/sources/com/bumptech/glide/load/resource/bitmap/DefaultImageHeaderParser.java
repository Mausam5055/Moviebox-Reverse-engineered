package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {
    private static final int AVIF_BRAND = 1635150182;
    private static final int AVIS_BRAND = 1635150195;
    static final int EXIF_MAGIC_NUMBER = 65496;
    static final int EXIF_SEGMENT_TYPE = 225;
    private static final int FTYP_HEADER = 1718909296;
    private static final int GIF_HEADER = 4671814;
    private static final int INTEL_TIFF_MAGIC_NUMBER = 18761;
    private static final int MARKER_EOI = 217;
    private static final int MOTOROLA_TIFF_MAGIC_NUMBER = 19789;
    private static final int ORIENTATION_TAG_TYPE = 274;
    private static final int PNG_HEADER = -1991225785;
    private static final int RIFF_HEADER = 1380533830;
    private static final int SEGMENT_SOS = 218;
    static final int SEGMENT_START_ID = 255;
    private static final String TAG = "DfltImageHeaderParser";
    private static final int VP8_HEADER = 1448097792;
    private static final int VP8_HEADER_MASK = -256;
    private static final int VP8_HEADER_TYPE_EXTENDED = 88;
    private static final int VP8_HEADER_TYPE_LOSSLESS = 76;
    private static final int VP8_HEADER_TYPE_MASK = 255;
    private static final int WEBP_EXTENDED_ALPHA_FLAG = 16;
    private static final int WEBP_EXTENDED_ANIMATION_FLAG = 2;
    private static final int WEBP_HEADER = 1464156752;
    private static final int WEBP_LOSSLESS_ALPHA_FLAG = 8;
    private static final String JPEG_EXIF_SEGMENT_PREAMBLE = "Exif\u0000\u0000";
    static final byte[] JPEG_EXIF_SEGMENT_PREAMBLE_BYTES = JPEG_EXIF_SEGMENT_PREAMBLE.getBytes(Charset.forName("UTF-8"));
    private static final int[] BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: loaded from: classes2.dex */
    private static final class ByteBufferReader implements Reader {
        private final ByteBuffer byteBuffer;

        ByteBufferReader(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() throws Reader.EndOfFileException {
            return (getUInt8() << 8) | getUInt8();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() throws Reader.EndOfFileException {
            if (this.byteBuffer.remaining() >= 1) {
                return (short) (this.byteBuffer.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(byte[] bArr, int i11) {
            int iMin = Math.min(i11, this.byteBuffer.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.byteBuffer.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j11) {
            int iMin = (int) Math.min(this.byteBuffer.remaining(), j11);
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class RandomAccessReader {
        private final ByteBuffer data;

        RandomAccessReader(byte[] bArr, int i11) {
            this.data = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i11);
        }

        private boolean isAvailable(int i11, int i12) {
            return this.data.remaining() - i11 >= i12;
        }

        short getInt16(int i11) {
            if (isAvailable(i11, 2)) {
                return this.data.getShort(i11);
            }
            return (short) -1;
        }

        int getInt32(int i11) {
            if (isAvailable(i11, 4)) {
                return this.data.getInt(i11);
            }
            return -1;
        }

        int length() {
            return this.data.remaining();
        }

        void order(ByteOrder byteOrder) {
            this.data.order(byteOrder);
        }
    }

    private interface Reader {

        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i11) throws IOException;

        long skip(long j11) throws IOException;
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class StreamReader implements Reader {

        /* JADX INFO: renamed from: is, reason: collision with root package name */
        private final InputStream f20150is;

        StreamReader(InputStream inputStream) {
            this.f20150is = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() throws IOException {
            return (getUInt8() << 8) | getUInt8();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() throws IOException {
            int i11 = this.f20150is.read();
            if (i11 != -1) {
                return (short) i11;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(byte[] bArr, int i11) throws IOException {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i11 && (i13 = this.f20150is.read(bArr, i12, i11 - i12)) != -1) {
                i12 += i13;
            }
            if (i12 == 0 && i13 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i12;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j11) throws IOException {
            if (j11 < 0) {
                return 0L;
            }
            long j12 = j11;
            while (j12 > 0) {
                long jSkip = this.f20150is.skip(j12);
                if (jSkip <= 0) {
                    if (this.f20150is.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j12 -= jSkip;
            }
            return j11 - j12;
        }
    }

    private static int calcTagOffset(int i11, int i12) {
        return i11 + 2 + (i12 * 12);
    }

    private int getOrientation(Reader reader, ArrayPool arrayPool) throws IOException {
        try {
            int uInt16 = reader.getUInt16();
            if (!handles(uInt16)) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Parser doesn't handle magic number: ");
                    sb2.append(uInt16);
                }
                return -1;
            }
            int iMoveToExifSegmentAndGetLength = moveToExifSegmentAndGetLength(reader);
            if (iMoveToExifSegmentAndGetLength == -1) {
                Log.isLoggable(TAG, 3);
                return -1;
            }
            byte[] bArr = (byte[]) arrayPool.get(iMoveToExifSegmentAndGetLength, byte[].class);
            try {
                return parseExifSegment(reader, bArr, iMoveToExifSegmentAndGetLength);
            } finally {
                arrayPool.put(bArr);
            }
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @NonNull
    private ImageHeaderParser.ImageType getType(Reader reader) throws IOException {
        try {
            int uInt16 = reader.getUInt16();
            if (uInt16 == EXIF_MAGIC_NUMBER) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int uInt8 = (uInt16 << 8) | reader.getUInt8();
            if (uInt8 == GIF_HEADER) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int uInt9 = (uInt8 << 8) | reader.getUInt8();
            if (uInt9 == PNG_HEADER) {
                reader.skip(21L);
                try {
                    return reader.getUInt8() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (uInt9 != RIFF_HEADER) {
                return sniffAvif(reader, uInt9);
            }
            reader.skip(4L);
            if (((reader.getUInt16() << 16) | reader.getUInt16()) != WEBP_HEADER) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int uInt17 = (reader.getUInt16() << 16) | reader.getUInt16();
            if ((uInt17 & (-256)) != VP8_HEADER) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i11 = uInt17 & 255;
            if (i11 != VP8_HEADER_TYPE_EXTENDED) {
                if (i11 != VP8_HEADER_TYPE_LOSSLESS) {
                    return ImageHeaderParser.ImageType.WEBP;
                }
                reader.skip(4L);
                return (reader.getUInt8() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            reader.skip(4L);
            short uInt10 = reader.getUInt8();
            if ((uInt10 & 2) != 0) {
                return ImageHeaderParser.ImageType.ANIMATED_WEBP;
            }
            return (uInt10 & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    private static boolean handles(int i11) {
        return (i11 & EXIF_MAGIC_NUMBER) == EXIF_MAGIC_NUMBER || i11 == MOTOROLA_TIFF_MAGIC_NUMBER || i11 == INTEL_TIFF_MAGIC_NUMBER;
    }

    private boolean hasJpegExifPreamble(byte[] bArr, int i11) {
        boolean z10 = bArr != null && i11 > JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length;
        if (z10) {
            int i12 = 0;
            while (true) {
                byte[] bArr2 = JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
                if (i12 >= bArr2.length) {
                    break;
                }
                if (bArr[i12] != bArr2[i12]) {
                    return false;
                }
                i12++;
            }
        }
        return z10;
    }

    private int moveToExifSegmentAndGetLength(Reader reader) throws IOException {
        short uInt8;
        int uInt16;
        long j11;
        long jSkip;
        do {
            short uInt9 = reader.getUInt8();
            if (uInt9 != 255) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unknown segmentId=");
                    sb2.append((int) uInt9);
                }
                return -1;
            }
            uInt8 = reader.getUInt8();
            if (uInt8 == 218) {
                return -1;
            }
            if (uInt8 == 217) {
                Log.isLoggable(TAG, 3);
                return -1;
            }
            uInt16 = reader.getUInt16() - 2;
            if (uInt8 == EXIF_SEGMENT_TYPE) {
                return uInt16;
            }
            j11 = uInt16;
            jSkip = reader.skip(j11);
        } while (jSkip == j11);
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to skip enough data, type: ");
            sb3.append((int) uInt8);
            sb3.append(", wanted to skip: ");
            sb3.append(uInt16);
            sb3.append(", but actually skipped: ");
            sb3.append(jSkip);
        }
        return -1;
    }

    private static int parseExifSegment(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        short int16 = randomAccessReader.getInt16(6);
        if (int16 != INTEL_TIFF_MAGIC_NUMBER) {
            if (int16 != MOTOROLA_TIFF_MAGIC_NUMBER && Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unknown endianness = ");
                sb2.append((int) int16);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        randomAccessReader.order(byteOrder);
        int int32 = randomAccessReader.getInt32(10) + 6;
        short int17 = randomAccessReader.getInt16(int32);
        for (int i11 = 0; i11 < int17; i11++) {
            int iCalcTagOffset = calcTagOffset(int32, i11);
            short int18 = randomAccessReader.getInt16(iCalcTagOffset);
            if (int18 == ORIENTATION_TAG_TYPE) {
                short int19 = randomAccessReader.getInt16(iCalcTagOffset + 2);
                if (int19 >= 1 && int19 <= 12) {
                    int int33 = randomAccessReader.getInt32(iCalcTagOffset + 4);
                    if (int33 < 0) {
                        Log.isLoggable(TAG, 3);
                    } else {
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Got tagIndex=");
                            sb3.append(i11);
                            sb3.append(" tagType=");
                            sb3.append((int) int18);
                            sb3.append(" formatCode=");
                            sb3.append((int) int19);
                            sb3.append(" componentCount=");
                            sb3.append(int33);
                        }
                        int i12 = int33 + BYTES_PER_FORMAT[int19];
                        if (i12 <= 4) {
                            int i13 = iCalcTagOffset + 8;
                            if (i13 >= 0 && i13 <= randomAccessReader.length()) {
                                if (i12 >= 0 && i12 + i13 <= randomAccessReader.length()) {
                                    return randomAccessReader.getInt16(i13);
                                }
                                if (Log.isLoggable(TAG, 3)) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("Illegal number of bytes for TI tag data tagType=");
                                    sb4.append((int) int18);
                                }
                            } else if (Log.isLoggable(TAG, 3)) {
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("Illegal tagValueOffset=");
                                sb5.append(i13);
                                sb5.append(" tagType=");
                                sb5.append((int) int18);
                            }
                        } else if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("Got byte count > 4, not orientation, continuing, formatCode=");
                            sb6.append((int) int19);
                        }
                    }
                } else if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Got invalid format code = ");
                    sb7.append((int) int19);
                }
            }
        }
        return -1;
    }

    private int parseExifSegment(Reader reader, byte[] bArr, int i11) throws IOException {
        int i12 = reader.read(bArr, i11);
        if (i12 == i11) {
            if (hasJpegExifPreamble(bArr, i11)) {
                return parseExifSegment(new RandomAccessReader(bArr, i11));
            }
            Log.isLoggable(TAG, 3);
            return -1;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to read exif segment data, length: ");
            sb2.append(i11);
            sb2.append(", actually read: ");
            sb2.append(i12);
        }
        return -1;
    }

    private ImageHeaderParser.ImageType sniffAvif(Reader reader, int i11) throws IOException {
        if (((reader.getUInt16() << 16) | reader.getUInt16()) != FTYP_HEADER) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int uInt16 = (reader.getUInt16() << 16) | reader.getUInt16();
        if (uInt16 == AVIS_BRAND) {
            return ImageHeaderParser.ImageType.ANIMATED_AVIF;
        }
        int i12 = 0;
        boolean z10 = uInt16 == AVIF_BRAND;
        reader.skip(4L);
        int i13 = i11 - 16;
        if (i13 % 4 == 0) {
            while (i12 < 5 && i13 > 0) {
                int uInt17 = (reader.getUInt16() << 16) | reader.getUInt16();
                if (uInt17 == AVIS_BRAND) {
                    return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                }
                if (uInt17 == AVIF_BRAND) {
                    z10 = true;
                }
                i12++;
                i13 -= 4;
            }
        }
        return z10 ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        return getOrientation(new StreamReader((InputStream) Preconditions.checkNotNull(inputStream)), (ArrayPool) Preconditions.checkNotNull(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull ByteBuffer byteBuffer, @NonNull ArrayPool arrayPool) throws IOException {
        return getOrientation(new ByteBufferReader((ByteBuffer) Preconditions.checkNotNull(byteBuffer)), (ArrayPool) Preconditions.checkNotNull(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull InputStream inputStream) throws IOException {
        return getType(new StreamReader((InputStream) Preconditions.checkNotNull(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer byteBuffer) throws IOException {
        return getType(new ByteBufferReader((ByteBuffer) Preconditions.checkNotNull(byteBuffer)));
    }
}
