package i2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.k;
import i3.l;
import i3.o;
import i3.p;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends androidx.media3.exoplayer.i implements Handler.Callback {
    private p A;
    private int B;
    private final Handler C;
    private final h D;
    private final s2 E;
    private boolean F;
    private boolean G;
    private r H;
    private long I;
    private long J;
    private boolean K;
    private IOException L;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final i3.b f64887r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final DecoderInputBuffer f64888s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f64889t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final g f64890u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f64891v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f64892w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private l f64893x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o f64894y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private p f64895z;

    public i(h hVar, Looper looper) {
        this(hVar, looper, g.f64885a);
    }

    public i(h hVar, Looper looper, g gVar) {
        super(3);
        this.D = (h) androidx.media3.common.util.a.e(hVar);
        this.C = looper == null ? null : a1.z(looper, this);
        this.f64890u = gVar;
        this.f64887r = new i3.b();
        this.f64888s = new DecoderInputBuffer(1);
        this.E = new s2();
        this.J = C.TIME_UNSET;
        this.I = C.TIME_UNSET;
        this.K = false;
    }

    private void Q() {
        androidx.media3.common.util.a.h(this.K || Objects.equals(this.H.f10161o, MimeTypes.APPLICATION_CEA608) || Objects.equals(this.H.f10161o, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(this.H.f10161o, MimeTypes.APPLICATION_CEA708), "Legacy decoding is disabled, can't handle " + this.H.f10161o + " samples (expected application/x-media3-cues).");
    }

    private void R() {
        h0(new u1.b(ImmutableList.of(), U(this.I)));
    }

    private long S(long j11) {
        int nextEventTimeIndex = this.f64895z.getNextEventTimeIndex(j11);
        if (nextEventTimeIndex == 0 || this.f64895z.getEventTimeCount() == 0) {
            return this.f64895z.timeUs;
        }
        if (nextEventTimeIndex != -1) {
            return this.f64895z.getEventTime(nextEventTimeIndex - 1);
        }
        p pVar = this.f64895z;
        return pVar.getEventTime(pVar.getEventTimeCount() - 1);
    }

    private long T() {
        if (this.B == -1) {
            return Long.MAX_VALUE;
        }
        androidx.media3.common.util.a.e(this.f64895z);
        if (this.B >= this.f64895z.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f64895z.getEventTime(this.B);
    }

    private long U(long j11) {
        androidx.media3.common.util.a.g(j11 != C.TIME_UNSET);
        return j11 - z();
    }

    private void V(SubtitleDecoderException subtitleDecoderException) {
        u.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.H, subtitleDecoderException);
        R();
        f0();
    }

    private static boolean W(k kVar, long j11) {
        return kVar == null || kVar.getEventTime(kVar.getEventTimeCount() - 1) <= j11;
    }

    private void X() {
        this.f64891v = true;
        l lVarB = this.f64890u.b((r) androidx.media3.common.util.a.e(this.H));
        this.f64893x = lVarB;
        lVarB.a(w());
    }

    private void Y(u1.b bVar) {
        this.D.onCues(bVar.f76595a);
        this.D.onCues(bVar);
    }

    private static boolean Z(r rVar) {
        return Objects.equals(rVar.f10161o, "application/x-media3-cues");
    }

    private boolean a0(long j11) {
        if (this.F || N(this.E, this.f64888s, 0) != -4) {
            return false;
        }
        if (this.f64888s.isEndOfStream()) {
            this.F = true;
            return false;
        }
        this.f64888s.d();
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f64888s.f10918c);
        i3.e eVarA = this.f64887r.a(this.f64888s.f10920e, byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        this.f64888s.clear();
        return this.f64889t.d(eVarA, j11);
    }

    private void b0() {
        this.f64894y = null;
        this.B = -1;
        p pVar = this.f64895z;
        if (pVar != null) {
            pVar.release();
            this.f64895z = null;
        }
        p pVar2 = this.A;
        if (pVar2 != null) {
            pVar2.release();
            this.A = null;
        }
    }

    private void c0() {
        b0();
        ((l) androidx.media3.common.util.a.e(this.f64893x)).release();
        this.f64893x = null;
        this.f64892w = 0;
    }

    private void d0(long j11) {
        boolean zA0 = a0(j11);
        long jC = this.f64889t.c(this.I);
        if (jC == Long.MIN_VALUE && this.F && !zA0) {
            this.G = true;
        }
        if (jC != Long.MIN_VALUE && jC <= j11) {
            zA0 = true;
        }
        if (zA0) {
            ImmutableList immutableListA = this.f64889t.a(j11);
            long jB = this.f64889t.b(j11);
            h0(new u1.b(immutableListA, U(jB)));
            this.f64889t.e(jB);
        }
        this.I = j11;
    }

    private void e0(long j11) {
        boolean z10;
        this.I = j11;
        if (this.A == null) {
            ((l) androidx.media3.common.util.a.e(this.f64893x)).setPositionUs(j11);
            try {
                this.A = (p) ((l) androidx.media3.common.util.a.e(this.f64893x)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e11) {
                V(e11);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f64895z != null) {
            long jT = T();
            z10 = false;
            while (jT <= j11) {
                this.B++;
                jT = T();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        p pVar = this.A;
        if (pVar != null) {
            if (pVar.isEndOfStream()) {
                if (!z10 && T() == Long.MAX_VALUE) {
                    if (this.f64892w == 2) {
                        f0();
                    } else {
                        b0();
                        this.G = true;
                    }
                }
            } else if (pVar.timeUs <= j11) {
                p pVar2 = this.f64895z;
                if (pVar2 != null) {
                    pVar2.release();
                }
                this.B = pVar.getNextEventTimeIndex(j11);
                this.f64895z = pVar;
                this.A = null;
                z10 = true;
            }
        }
        if (z10) {
            androidx.media3.common.util.a.e(this.f64895z);
            h0(new u1.b(this.f64895z.getCues(j11), U(S(j11))));
        }
        if (this.f64892w == 2) {
            return;
        }
        while (!this.F) {
            try {
                o oVar = this.f64894y;
                if (oVar == null) {
                    oVar = (o) ((l) androidx.media3.common.util.a.e(this.f64893x)).dequeueInputBuffer();
                    if (oVar == null) {
                        return;
                    } else {
                        this.f64894y = oVar;
                    }
                }
                if (this.f64892w == 1) {
                    oVar.setFlags(4);
                    ((l) androidx.media3.common.util.a.e(this.f64893x)).queueInputBuffer(oVar);
                    this.f64894y = null;
                    this.f64892w = 2;
                    return;
                }
                int iN = N(this.E, oVar, 0);
                if (iN == -4) {
                    if (oVar.isEndOfStream()) {
                        this.F = true;
                        this.f64891v = false;
                    } else {
                        r rVar = this.E.f12570b;
                        if (rVar == null) {
                            return;
                        }
                        oVar.f64919i = rVar.f10166t;
                        oVar.d();
                        this.f64891v &= !oVar.isKeyFrame();
                    }
                    if (!this.f64891v) {
                        ((l) androidx.media3.common.util.a.e(this.f64893x)).queueInputBuffer(oVar);
                        this.f64894y = null;
                    }
                } else if (iN == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e12) {
                V(e12);
                return;
            }
        }
    }

    private void f0() {
        c0();
        X();
    }

    private void h0(u1.b bVar) {
        Handler handler = this.C;
        if (handler != null) {
            handler.obtainMessage(1, bVar).sendToTarget();
        } else {
            Y(bVar);
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.H = null;
        this.J = C.TIME_UNSET;
        R();
        this.I = C.TIME_UNSET;
        if (this.f64893x != null) {
            c0();
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) {
        this.I = j11;
        a aVar = this.f64889t;
        if (aVar != null) {
            aVar.clear();
        }
        R();
        this.F = false;
        this.G = false;
        this.J = C.TIME_UNSET;
        r rVar = this.H;
        if (rVar == null || Z(rVar)) {
            return;
        }
        if (this.f64892w != 0) {
            f0();
            return;
        }
        b0();
        l lVar = (l) androidx.media3.common.util.a.e(this.f64893x);
        lVar.flush();
        lVar.a(w());
    }

    @Override // androidx.media3.exoplayer.i
    protected void L(r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        r rVar = rVarArr[0];
        this.H = rVar;
        if (Z(rVar)) {
            this.f64889t = this.H.K == 1 ? new e() : new f();
            return;
        }
        Q();
        if (this.f64893x != null) {
            this.f64892w = 1;
        } else {
            X();
        }
    }

    @Override // androidx.media3.exoplayer.y3
    public int a(r rVar) {
        if (Z(rVar) || this.f64890u.a(rVar)) {
            return x3.a(rVar.N == 0 ? 4 : 2);
        }
        return y.s(rVar.f10161o) ? x3.a(1) : x3.a(0);
    }

    public void g0(long j11) {
        androidx.media3.common.util.a.g(isCurrentStreamFinal());
        this.J = j11;
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        Y((u1.b) message.obj);
        return true;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.G;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        if (this.H == null) {
            return true;
        }
        if (this.L == null) {
            try {
                maybeThrowStreamError();
            } catch (IOException e11) {
                this.L = e11;
            }
        }
        if (this.L != null) {
            if (Z((r) androidx.media3.common.util.a.e(this.H))) {
                return ((a) androidx.media3.common.util.a.e(this.f64889t)).c(this.I) != Long.MIN_VALUE;
            }
            if (this.G || (this.F && W(this.f64895z, this.I) && W(this.A, this.I) && this.f64894y != null)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) {
        if (isCurrentStreamFinal()) {
            long j13 = this.J;
            if (j13 != C.TIME_UNSET && j11 >= j13) {
                b0();
                this.G = true;
            }
        }
        if (this.G) {
            return;
        }
        if (Z((r) androidx.media3.common.util.a.e(this.H))) {
            androidx.media3.common.util.a.e(this.f64889t);
            d0(j11);
        } else {
            Q();
            e0(j11);
        }
    }
}
