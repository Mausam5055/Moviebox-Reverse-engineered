package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GifHeaderParser {
    static final int DEFAULT_FRAME_DELAY = 10;
    private static final int DESCRIPTOR_MASK_INTERLACE_FLAG = 64;
    private static final int DESCRIPTOR_MASK_LCT_FLAG = 128;
    private static final int DESCRIPTOR_MASK_LCT_SIZE = 7;
    private static final int EXTENSION_INTRODUCER = 33;
    private static final int GCE_DISPOSAL_METHOD_SHIFT = 2;
    private static final int GCE_MASK_DISPOSAL_METHOD = 28;
    private static final int GCE_MASK_TRANSPARENT_COLOR_FLAG = 1;
    private static final int IMAGE_SEPARATOR = 44;
    private static final int LABEL_APPLICATION_EXTENSION = 255;
    private static final int LABEL_COMMENT_EXTENSION = 254;
    private static final int LABEL_GRAPHIC_CONTROL_EXTENSION = 249;
    private static final int LABEL_PLAIN_TEXT_EXTENSION = 1;
    private static final int LSD_MASK_GCT_FLAG = 128;
    private static final int LSD_MASK_GCT_SIZE = 7;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_BLOCK_SIZE = 256;
    static final int MIN_FRAME_DELAY = 2;
    private static final String TAG = "GifHeaderParser";
    private static final int TRAILER = 59;
    private final byte[] block = new byte[256];
    private int blockSize = 0;
    private GifHeader header;
    private ByteBuffer rawData;

    private boolean err() {
        return this.header.status != 0;
    }

    private int read() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.header.status = 1;
            return 0;
        }
    }

    private void readBitmap() {
        this.header.currentFrame.f20131ix = readShort();
        this.header.currentFrame.f20132iy = readShort();
        this.header.currentFrame.f20130iw = readShort();
        this.header.currentFrame.f20129ih = readShort();
        int i11 = read();
        boolean z10 = (i11 & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (i11 & 7) + 1);
        GifFrame gifFrame = this.header.currentFrame;
        gifFrame.interlace = (i11 & 64) != 0;
        if (z10) {
            gifFrame.lct = readColorTable(iPow);
        } else {
            gifFrame.lct = null;
        }
        this.header.currentFrame.bufferFrameStart = this.rawData.position();
        skipImageData();
        if (err()) {
            return;
        }
        GifHeader gifHeader = this.header;
        gifHeader.frameCount++;
        gifHeader.frames.add(gifHeader.currentFrame);
    }

    private void readBlock() {
        int i11 = read();
        this.blockSize = i11;
        if (i11 <= 0) {
            return;
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            try {
                int i14 = this.blockSize;
                if (i12 >= i14) {
                    return;
                }
                i13 = i14 - i12;
                this.rawData.get(this.block, i12, i13);
                i12 += i13;
            } catch (Exception unused) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Error Reading Block n: ");
                    sb2.append(i12);
                    sb2.append(" count: ");
                    sb2.append(i13);
                    sb2.append(" blockSize: ");
                    sb2.append(this.blockSize);
                }
                this.header.status = 1;
                return;
            }
        }
    }

    @Nullable
    private int[] readColorTable(int i11) {
        byte[] bArr = new byte[i11 * 3];
        int[] iArr = null;
        try {
            this.rawData.get(bArr);
            iArr = new int[256];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i11) {
                int i14 = bArr[i13] & 255;
                int i15 = i13 + 2;
                int i16 = bArr[i13 + 1] & 255;
                i13 += 3;
                int i17 = i12 + 1;
                iArr[i12] = (i16 << 8) | (i14 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i15] & 255);
                i12 = i17;
            }
        } catch (BufferUnderflowException unused) {
            Log.isLoggable(TAG, 3);
            this.header.status = 1;
        }
        return iArr;
    }

    private void readContents() {
        readContents(Integer.MAX_VALUE);
    }

    private void readContents(int i11) {
        boolean z10 = false;
        while (!z10 && !err() && this.header.frameCount <= i11) {
            int i12 = read();
            if (i12 == 33) {
                int i13 = read();
                if (i13 == 1) {
                    skip();
                } else if (i13 == LABEL_GRAPHIC_CONTROL_EXTENSION) {
                    this.header.currentFrame = new GifFrame();
                    readGraphicControlExt();
                } else if (i13 == LABEL_COMMENT_EXTENSION) {
                    skip();
                } else if (i13 != 255) {
                    skip();
                } else {
                    readBlock();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i14 = 0; i14 < 11; i14++) {
                        sb2.append((char) this.block[i14]);
                    }
                    if (sb2.toString().equals("NETSCAPE2.0")) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                }
            } else if (i12 == 44) {
                GifHeader gifHeader = this.header;
                if (gifHeader.currentFrame == null) {
                    gifHeader.currentFrame = new GifFrame();
                }
                readBitmap();
            } else if (i12 != TRAILER) {
                this.header.status = 1;
            } else {
                z10 = true;
            }
        }
    }

    private void readGraphicControlExt() {
        read();
        int i11 = read();
        GifFrame gifFrame = this.header.currentFrame;
        int i12 = (i11 & 28) >> 2;
        gifFrame.dispose = i12;
        if (i12 == 0) {
            gifFrame.dispose = 1;
        }
        gifFrame.transparency = (i11 & 1) != 0;
        int i13 = readShort();
        if (i13 < 2) {
            i13 = 10;
        }
        GifFrame gifFrame2 = this.header.currentFrame;
        gifFrame2.delay = i13 * 10;
        gifFrame2.transIndex = read();
        read();
    }

    private void readHeader() {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < 6; i11++) {
            sb2.append((char) read());
        }
        if (!sb2.toString().startsWith("GIF")) {
            this.header.status = 1;
            return;
        }
        readLSD();
        if (!this.header.gctFlag || err()) {
            return;
        }
        GifHeader gifHeader = this.header;
        gifHeader.gct = readColorTable(gifHeader.gctSize);
        GifHeader gifHeader2 = this.header;
        gifHeader2.bgColor = gifHeader2.gct[gifHeader2.bgIndex];
    }

    private void readLSD() {
        this.header.width = readShort();
        this.header.height = readShort();
        int i11 = read();
        GifHeader gifHeader = this.header;
        gifHeader.gctFlag = (i11 & 128) != 0;
        gifHeader.gctSize = (int) Math.pow(2.0d, (i11 & 7) + 1);
        this.header.bgIndex = read();
        this.header.pixelAspect = read();
    }

    private void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.header.loopCount = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    private int readShort() {
        return this.rawData.getShort();
    }

    private void reset() {
        this.rawData = null;
        Arrays.fill(this.block, (byte) 0);
        this.header = new GifHeader();
        this.blockSize = 0;
    }

    private void skip() {
        int i11;
        do {
            i11 = read();
            this.rawData.position(Math.min(this.rawData.position() + i11, this.rawData.limit()));
        } while (i11 > 0);
    }

    private void skipImageData() {
        read();
        skip();
    }

    public void clear() {
        this.rawData = null;
        this.header = null;
    }

    public boolean isAnimated() {
        readHeader();
        if (!err()) {
            readContents(2);
        }
        return this.header.frameCount > 1;
    }

    @NonNull
    public GifHeader parseHeader() {
        if (this.rawData == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (err()) {
            return this.header;
        }
        readHeader();
        if (!err()) {
            readContents();
            GifHeader gifHeader = this.header;
            if (gifHeader.frameCount < 0) {
                gifHeader.status = 1;
            }
        }
        return this.header;
    }

    public GifHeaderParser setData(@NonNull ByteBuffer byteBuffer) {
        reset();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.rawData = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public GifHeaderParser setData(@Nullable byte[] bArr) {
        if (bArr != null) {
            setData(ByteBuffer.wrap(bArr));
        } else {
            this.rawData = null;
            this.header.status = 2;
        }
        return this;
    }
}
