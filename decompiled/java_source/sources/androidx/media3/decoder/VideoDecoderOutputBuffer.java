package androidx.media3.decoder;

import androidx.annotation.Nullable;
import androidx.media3.common.r;
import java.nio.ByteBuffer;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class VideoDecoderOutputBuffer extends h {
    public static final int COLORSPACE_BT2020 = 3;
    public static final int COLORSPACE_BT601 = 1;
    public static final int COLORSPACE_BT709 = 2;
    public static final int COLORSPACE_UNKNOWN = 0;
    public int colorspace;

    @Nullable
    public ByteBuffer data;
    public int decoderPrivate;

    @Nullable
    public r format;
    public int height;
    public int mode;
    private final h.a owner;

    @Nullable
    public ByteBuffer supplementalData;
    public int width;

    @Nullable
    public ByteBuffer[] yuvPlanes;

    @Nullable
    public int[] yuvStrides;

    public VideoDecoderOutputBuffer(h.a aVar) {
        this.owner = aVar;
    }

    private static boolean isSafeToMultiply(int i11, int i12) {
        return i11 >= 0 && i12 >= 0 && (i12 <= 0 || i11 < Integer.MAX_VALUE / i12);
    }

    public void init(long j11, int i11, @Nullable ByteBuffer byteBuffer) {
        this.timeUs = j11;
        this.mode = i11;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            this.supplementalData = null;
            return;
        }
        addFlag(ASTNode.DEOP);
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 == null || byteBuffer2.capacity() < iLimit) {
            this.supplementalData = ByteBuffer.allocate(iLimit);
        } else {
            this.supplementalData.clear();
        }
        this.supplementalData.put(byteBuffer);
        this.supplementalData.flip();
        byteBuffer.position(0);
    }

    public void initForPrivateFrame(int i11, int i12) {
        this.width = i11;
        this.height = i12;
    }

    public boolean initForYuvFrame(int i11, int i12, int i13, int i14, int i15) {
        this.width = i11;
        this.height = i12;
        this.colorspace = i15;
        int i16 = (int) ((((long) i12) + 1) / 2);
        if (isSafeToMultiply(i13, i12) && isSafeToMultiply(i14, i16)) {
            int i17 = i12 * i13;
            int i18 = i16 * i14;
            int i19 = (i18 * 2) + i17;
            if (isSafeToMultiply(i18, 2) && i19 >= i17) {
                ByteBuffer byteBuffer = this.data;
                if (byteBuffer == null || byteBuffer.capacity() < i19) {
                    this.data = ByteBuffer.allocateDirect(i19);
                } else {
                    this.data.position(0);
                    this.data.limit(i19);
                }
                if (this.yuvPlanes == null) {
                    this.yuvPlanes = new ByteBuffer[3];
                }
                ByteBuffer byteBuffer2 = this.data;
                ByteBuffer[] byteBufferArr = this.yuvPlanes;
                ByteBuffer byteBufferSlice = byteBuffer2.slice();
                byteBufferArr[0] = byteBufferSlice;
                byteBufferSlice.limit(i17);
                byteBuffer2.position(i17);
                ByteBuffer byteBufferSlice2 = byteBuffer2.slice();
                byteBufferArr[1] = byteBufferSlice2;
                byteBufferSlice2.limit(i18);
                byteBuffer2.position(i17 + i18);
                ByteBuffer byteBufferSlice3 = byteBuffer2.slice();
                byteBufferArr[2] = byteBufferSlice3;
                byteBufferSlice3.limit(i18);
                if (this.yuvStrides == null) {
                    this.yuvStrides = new int[3];
                }
                int[] iArr = this.yuvStrides;
                iArr[0] = i13;
                iArr[1] = i14;
                iArr[2] = i14;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.decoder.h
    public void release() {
        this.owner.a(this);
    }
}
