package k2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends i {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final DecoderInputBuffer f66571r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final j0 f66572s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f66573t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f66574u;

    public b() {
        super(6);
        this.f66571r = new DecoderInputBuffer(1);
        this.f66572s = new j0();
    }

    private float[] Q(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f66572s.U(byteBuffer.array(), byteBuffer.limit());
        this.f66572s.W(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i11 = 0; i11 < 3; i11++) {
            fArr[i11] = Float.intBitsToFloat(this.f66572s.u());
        }
        return fArr;
    }

    private void R() {
        a aVar = this.f66573t;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        R();
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) {
        this.f66574u = Long.MIN_VALUE;
        R();
    }

    @Override // androidx.media3.exoplayer.y3
    public int a(r rVar) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(rVar.f10161o) ? x3.a(4) : x3.a(0);
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 == 8) {
            this.f66573t = (a) obj;
        } else {
            super.handleMessage(i11, obj);
        }
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) {
        while (!hasReadStreamToEnd() && this.f66574u < 100000 + j11) {
            this.f66571r.clear();
            if (N(u(), this.f66571r, 0) != -4 || this.f66571r.isEndOfStream()) {
                return;
            }
            long j13 = this.f66571r.f10920e;
            this.f66574u = j13;
            boolean z10 = j13 < w();
            if (this.f66573t != null && !z10) {
                this.f66571r.d();
                float[] fArrQ = Q((ByteBuffer) a1.i(this.f66571r.f10918c));
                if (fArrQ != null) {
                    ((a) a1.i(this.f66573t)).a(this.f66574u - z(), fArrQ);
                }
            }
        }
    }
}
