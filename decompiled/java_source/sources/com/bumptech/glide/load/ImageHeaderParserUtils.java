package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageHeaderParserUtils {
    private static final int MARK_READ_LIMIT = 5242880;

    private interface OrientationReader {
        int getOrientationAndRewind(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private interface TypeReader {
        ImageHeaderParser.ImageType getTypeAndRewind(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private ImageHeaderParserUtils() {
    }

    public static int getOrientation(@NonNull List<ImageHeaderParser> list, @NonNull final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull final ArrayPool arrayPool) throws IOException {
        return getOrientationInternal(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.6
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int getOrientationAndRewind(ImageHeaderParser imageHeaderParser) throws Throwable {
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder.rewindAndGet().getFileDescriptor()), arrayPool);
                    try {
                        int orientation = imageHeaderParser.getOrientation(recyclableBufferedInputStream2, arrayPool);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder.rewindAndGet();
                        return orientation;
                    } catch (Throwable th2) {
                        th = th2;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder.rewindAndGet();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        });
    }

    public static int getOrientation(@NonNull List<ImageHeaderParser> list, @Nullable final InputStream inputStream, @NonNull final ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(MARK_READ_LIMIT);
        return getOrientationInternal(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.5
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int getOrientationAndRewind(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.getOrientation(inputStream, arrayPool);
                } finally {
                    inputStream.reset();
                }
            }
        });
    }

    public static int getOrientation(@NonNull List<ImageHeaderParser> list, @Nullable final ByteBuffer byteBuffer, @NonNull final ArrayPool arrayPool) throws IOException {
        if (byteBuffer == null) {
            return -1;
        }
        return getOrientationInternal(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.4
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int getOrientationAndRewind(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.getOrientation(byteBuffer, arrayPool);
                } finally {
                    ByteBufferUtil.rewind(byteBuffer);
                }
            }
        });
    }

    private static int getOrientationInternal(@NonNull List<ImageHeaderParser> list, OrientationReader orientationReader) throws IOException {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            int orientationAndRewind = orientationReader.getOrientationAndRewind(list.get(i11));
            if (orientationAndRewind != -1) {
                return orientationAndRewind;
            }
        }
        return -1;
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @NonNull final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull final ArrayPool arrayPool) throws IOException {
        return getTypeInternal(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.3
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType getTypeAndRewind(ImageHeaderParser imageHeaderParser) throws Throwable {
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder.rewindAndGet().getFileDescriptor()), arrayPool);
                    try {
                        ImageHeaderParser.ImageType type = imageHeaderParser.getType(recyclableBufferedInputStream2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder.rewindAndGet();
                        return type;
                    } catch (Throwable th2) {
                        th = th2;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder.rewindAndGet();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        });
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable final InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(MARK_READ_LIMIT);
        return getTypeInternal(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.1
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType getTypeAndRewind(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.getType(inputStream);
                } finally {
                    inputStream.reset();
                }
            }
        });
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable final ByteBuffer byteBuffer) throws IOException {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : getTypeInternal(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.2
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType getTypeAndRewind(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.getType(byteBuffer);
                } finally {
                    ByteBufferUtil.rewind(byteBuffer);
                }
            }
        });
    }

    @NonNull
    private static ImageHeaderParser.ImageType getTypeInternal(@NonNull List<ImageHeaderParser> list, TypeReader typeReader) throws IOException {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            ImageHeaderParser.ImageType typeAndRewind = typeReader.getTypeAndRewind(list.get(i11));
            if (typeAndRewind != ImageHeaderParser.ImageType.UNKNOWN) {
                return typeAndRewind;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
