package d2;

import android.graphics.Bitmap;
import androidx.media3.common.r;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.image.ImageDecoderException;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public class e extends i {
    private int A;
    private r B;
    private c C;
    private DecoderInputBuffer D;
    private ImageOutput E;
    private Bitmap F;
    private boolean G;
    private b H;
    private b I;
    private int J;
    private boolean K;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final c.a f61131r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final DecoderInputBuffer f61132s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ArrayDeque f61133t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f61134u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f61135v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private a f61136w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f61137x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f61138y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f61139z;

    private static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f61140c = new a(C.TIME_UNSET, C.TIME_UNSET);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f61141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f61142b;

        public a(long j11, long j12) {
            this.f61141a = j11;
            this.f61142b = j12;
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f61143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f61144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bitmap f61145c;

        public b(int i11, long j11) {
            this.f61143a = i11;
            this.f61144b = j11;
        }

        public long a() {
            return this.f61144b;
        }

        public Bitmap b() {
            return this.f61145c;
        }

        public int c() {
            return this.f61143a;
        }

        public boolean d() {
            return this.f61145c != null;
        }

        public void e(Bitmap bitmap) {
            this.f61145c = bitmap;
        }
    }

    public e(c.a aVar, ImageOutput imageOutput) {
        super(4);
        this.f61131r = aVar;
        this.E = U(imageOutput);
        this.f61132s = DecoderInputBuffer.f();
        this.f61136w = a.f61140c;
        this.f61133t = new ArrayDeque();
        this.f61138y = C.TIME_UNSET;
        this.f61137x = C.TIME_UNSET;
        this.f61139z = 0;
        this.A = 1;
    }

    private boolean Q(r rVar) {
        int iA = this.f61131r.a(rVar);
        return iA == x3.a(4) || iA == x3.a(3);
    }

    private Bitmap R(int i11) {
        androidx.media3.common.util.a.i(this.F);
        int width = this.F.getWidth() / ((r) androidx.media3.common.util.a.i(this.B)).L;
        int height = this.F.getHeight() / ((r) androidx.media3.common.util.a.i(this.B)).M;
        int i12 = this.B.L;
        return Bitmap.createBitmap(this.F, (i11 % i12) * width, (i11 / i12) * height, width, height);
    }

    private boolean S(long j11, long j12) throws ExoPlaybackException {
        if (this.F != null && this.H == null) {
            return false;
        }
        if (this.A == 0 && getState() != 2) {
            return false;
        }
        if (this.F == null) {
            androidx.media3.common.util.a.i(this.C);
            d dVarDequeueOutputBuffer = this.C.dequeueOutputBuffer();
            if (dVarDequeueOutputBuffer == null) {
                return false;
            }
            if (((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).isEndOfStream()) {
                if (this.f61139z == 3) {
                    c0();
                    androidx.media3.common.util.a.i(this.B);
                    Y();
                } else {
                    ((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).release();
                    if (this.f61133t.isEmpty()) {
                        this.f61135v = true;
                    }
                }
                return false;
            }
            androidx.media3.common.util.a.j(dVarDequeueOutputBuffer.f61130a, "Non-EOS buffer came back from the decoder without bitmap.");
            this.F = dVarDequeueOutputBuffer.f61130a;
            ((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).release();
        }
        if (!this.G || this.F == null || this.H == null) {
            return false;
        }
        androidx.media3.common.util.a.i(this.B);
        r rVar = this.B;
        int i11 = rVar.L;
        boolean z10 = ((i11 == 1 && rVar.M == 1) || i11 == -1 || rVar.M == -1) ? false : true;
        if (!this.H.d()) {
            b bVar = this.H;
            bVar.e(z10 ? R(bVar.c()) : (Bitmap) androidx.media3.common.util.a.i(this.F));
        }
        if (!b0(j11, j12, (Bitmap) androidx.media3.common.util.a.i(this.H.b()), this.H.a())) {
            return false;
        }
        a0(((b) androidx.media3.common.util.a.i(this.H)).a());
        this.A = 3;
        if (!z10 || ((b) androidx.media3.common.util.a.i(this.H)).c() == (((r) androidx.media3.common.util.a.i(this.B)).M * ((r) androidx.media3.common.util.a.i(this.B)).L) - 1) {
            this.F = null;
        }
        this.H = this.I;
        this.I = null;
        return true;
    }

    private boolean T(long j11) {
        if (this.G && this.H != null) {
            return false;
        }
        s2 s2VarU = u();
        c cVar = this.C;
        if (cVar == null || this.f61139z == 3 || this.f61134u) {
            return false;
        }
        if (this.D == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) cVar.dequeueInputBuffer();
            this.D = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.f61139z == 2) {
            androidx.media3.common.util.a.i(this.D);
            this.D.setFlags(4);
            ((c) androidx.media3.common.util.a.i(this.C)).b(this.D);
            this.D = null;
            this.f61139z = 3;
            return false;
        }
        int iN = N(s2VarU, this.D, 0);
        if (iN == -5) {
            this.B = (r) androidx.media3.common.util.a.i(s2VarU.f12570b);
            this.K = true;
            this.f61139z = 2;
            return true;
        }
        if (iN != -4) {
            if (iN == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        this.D.d();
        ByteBuffer byteBuffer = this.D.f10918c;
        boolean z10 = (byteBuffer != null && byteBuffer.remaining() > 0) || ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).isEndOfStream();
        if (z10) {
            ((c) androidx.media3.common.util.a.i(this.C)).b((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D));
            this.J = 0;
        }
        X(j11, (DecoderInputBuffer) androidx.media3.common.util.a.i(this.D));
        if (((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).isEndOfStream()) {
            this.f61134u = true;
            this.D = null;
            return false;
        }
        this.f61138y = Math.max(this.f61138y, ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).f10920e);
        if (z10) {
            this.D = null;
        } else {
            ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).clear();
        }
        return !this.G;
    }

    private static ImageOutput U(ImageOutput imageOutput) {
        return imageOutput == null ? ImageOutput.f12030a : imageOutput;
    }

    private boolean V(b bVar) {
        return ((r) androidx.media3.common.util.a.i(this.B)).L == -1 || this.B.M == -1 || bVar.c() == (((r) androidx.media3.common.util.a.i(this.B)).M * this.B.L) - 1;
    }

    private void W(int i11) {
        this.A = Math.min(this.A, i11);
    }

    private void X(long j11, DecoderInputBuffer decoderInputBuffer) {
        boolean z10 = true;
        if (decoderInputBuffer.isEndOfStream()) {
            this.G = true;
            return;
        }
        b bVar = new b(this.J, decoderInputBuffer.f10920e);
        this.I = bVar;
        this.J++;
        if (!this.G) {
            long jA = bVar.a();
            boolean z11 = jA - 30000 <= j11 && j11 <= 30000 + jA;
            b bVar2 = this.H;
            boolean z12 = bVar2 != null && bVar2.a() <= j11 && j11 < jA;
            boolean zV = V((b) androidx.media3.common.util.a.i(this.I));
            if (!z11 && !z12 && !zV) {
                z10 = false;
            }
            this.G = z10;
            if (z12 && !z11) {
                return;
            }
        }
        this.H = this.I;
        this.I = null;
    }

    private boolean Y() throws ExoPlaybackException {
        if (!Z()) {
            return false;
        }
        if (!this.K) {
            return true;
        }
        if (!Q((r) androidx.media3.common.util.a.e(this.B))) {
            throw q(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.B, 4005);
        }
        c cVar = this.C;
        if (cVar != null) {
            cVar.release();
        }
        this.C = this.f61131r.b();
        this.K = false;
        return true;
    }

    private void a0(long j11) {
        this.f61137x = j11;
        while (!this.f61133t.isEmpty() && j11 >= ((a) this.f61133t.peek()).f61141a) {
            this.f61136w = (a) this.f61133t.removeFirst();
        }
    }

    private void c0() {
        this.D = null;
        this.f61139z = 0;
        this.f61138y = C.TIME_UNSET;
        c cVar = this.C;
        if (cVar != null) {
            cVar.release();
            this.C = null;
        }
    }

    private void d0(ImageOutput imageOutput) {
        this.E = U(imageOutput);
    }

    private boolean e0() {
        boolean z10 = getState() == 2;
        int i11 = this.A;
        if (i11 == 0) {
            return z10;
        }
        if (i11 == 1) {
            return true;
        }
        if (i11 == 3) {
            return false;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.B = null;
        this.f61136w = a.f61140c;
        this.f61133t.clear();
        c0();
        this.E.a();
    }

    @Override // androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        this.A = z11 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) {
        W(1);
        this.f61135v = false;
        this.f61134u = false;
        this.F = null;
        this.H = null;
        this.I = null;
        this.G = false;
        this.D = null;
        c cVar = this.C;
        if (cVar != null) {
            cVar.flush();
        }
        this.f61133t.clear();
    }

    @Override // androidx.media3.exoplayer.i
    protected void G() {
        c0();
    }

    @Override // androidx.media3.exoplayer.i
    protected void I() {
        c0();
        W(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r2 >= r5) goto L14;
     */
    @Override // androidx.media3.exoplayer.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void L(r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j11, j12, bVar);
        if (this.f61136w.f61142b != C.TIME_UNSET) {
            if (this.f61133t.isEmpty()) {
                long j13 = this.f61138y;
                if (j13 != C.TIME_UNSET) {
                    long j14 = this.f61137x;
                    if (j14 != C.TIME_UNSET) {
                    }
                }
            }
            this.f61133t.add(new a(this.f61138y, j12));
            return;
        }
        this.f61136w = new a(C.TIME_UNSET, j12);
    }

    protected boolean Z() {
        return true;
    }

    @Override // androidx.media3.exoplayer.y3
    public int a(r rVar) {
        return this.f61131r.a(rVar);
    }

    protected boolean b0(long j11, long j12, Bitmap bitmap, long j13) {
        long j14 = j13 - j11;
        if (!e0() && j14 >= 30000) {
            return false;
        }
        this.E.onImageAvailable(j13 - this.f61136w.f61142b, bitmap);
        return true;
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "ImageRenderer";
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 != 15) {
            super.handleMessage(i11, obj);
        } else {
            d0(obj instanceof ImageOutput ? (ImageOutput) obj : null);
        }
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.f61135v;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        int i11 = this.A;
        return i11 == 3 || (i11 == 0 && this.G);
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) throws ExoPlaybackException {
        if (this.f61135v) {
            return;
        }
        if (this.B == null) {
            s2 s2VarU = u();
            this.f61132s.clear();
            int iN = N(s2VarU, this.f61132s, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f61132s.isEndOfStream());
                    this.f61134u = true;
                    this.f61135v = true;
                    return;
                }
                return;
            }
            this.B = (r) androidx.media3.common.util.a.i(s2VarU.f12570b);
            this.K = true;
        }
        if (this.C != null || Y()) {
            try {
                q0.a("drainAndFeedDecoder");
                while (S(j11, j12)) {
                }
                while (T(j11)) {
                }
                q0.b();
            } catch (ImageDecoderException e11) {
                throw q(e11, null, 4003);
            }
        }
    }
}
