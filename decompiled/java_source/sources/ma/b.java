package ma;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.y2;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final DecoderInputBuffer f69425n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d0 f69426o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f69427p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f69428q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f69429r;

    public b() {
        super(6);
        this.f69425n = new DecoderInputBuffer(1);
        this.f69426o = new d0();
    }

    private void A() {
        a aVar = this.f69428q;
        if (aVar != null) {
            aVar.b();
        }
    }

    private float[] z(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f69426o.N(byteBuffer.array(), byteBuffer.limit());
        this.f69426o.P(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i11 = 0; i11 < 3; i11++) {
            fArr[i11] = Float.intBitsToFloat(this.f69426o.q());
        }
        return fArr;
    }

    @Override // com.google.android.exoplayer2.z2
    public int a(o1 o1Var) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(o1Var.f25496l) ? y2.a(4) : y2.a(0);
    }

    @Override // com.google.android.exoplayer2.x2, com.google.android.exoplayer2.z2
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // com.google.android.exoplayer2.h, com.google.android.exoplayer2.s2.b
    public void handleMessage(int i11, Object obj) {
        if (i11 == 8) {
            this.f69428q = (a) obj;
        } else {
            super.handleMessage(i11, obj);
        }
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.h
    protected void p() {
        A();
    }

    @Override // com.google.android.exoplayer2.h
    protected void r(long j11, boolean z10) {
        this.f69429r = Long.MIN_VALUE;
        A();
    }

    @Override // com.google.android.exoplayer2.x2
    public void render(long j11, long j12) {
        while (!hasReadStreamToEnd() && this.f69429r < 100000 + j11) {
            this.f69425n.b();
            if (w(k(), this.f69425n, 0) != -4 || this.f69425n.h()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.f69425n;
            this.f69429r = decoderInputBuffer.f24845e;
            if (this.f69428q != null && !decoderInputBuffer.g()) {
                this.f69425n.n();
                float[] fArrZ = z((ByteBuffer) p0.j(this.f69425n.f24843c));
                if (fArrZ != null) {
                    ((a) p0.j(this.f69428q)).a(this.f69429r - this.f69427p, fArrZ);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void v(o1[] o1VarArr, long j11, long j12) {
        this.f69427p = j12;
    }
}
