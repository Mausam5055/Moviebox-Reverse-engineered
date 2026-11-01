package ba;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.y2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class p extends com.google.android.exoplayer2.h implements Handler.Callback {
    private int A;
    private long B;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Handler f16313n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o f16314o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final k f16315p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final p1 f16316q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f16317r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f16318s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f16319t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f16320u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private o1 f16321v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private j f16322w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private m f16323x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private n f16324y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private n f16325z;

    public p(o oVar, Looper looper) {
        this(oVar, looper, k.f16298a);
    }

    public p(o oVar, Looper looper, k kVar) {
        super(3);
        this.f16314o = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f16313n = looper == null ? null : p0.v(looper, this);
        this.f16315p = kVar;
        this.f16316q = new p1();
        this.B = C.TIME_UNSET;
    }

    private long A() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.a.e(this.f16324y);
        if (this.A >= this.f16324y.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f16324y.getEventTime(this.A);
    }

    private void B(SubtitleDecoderException subtitleDecoderException) {
        s.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f16321v, subtitleDecoderException);
        z();
        G();
    }

    private void C() {
        this.f16319t = true;
        this.f16322w = this.f16315p.b((o1) com.google.android.exoplayer2.util.a.e(this.f16321v));
    }

    private void D(List list) {
        this.f16314o.onCues(list);
        this.f16314o.onCues(new f(list));
    }

    private void E() {
        this.f16323x = null;
        this.A = -1;
        n nVar = this.f16324y;
        if (nVar != null) {
            nVar.l();
            this.f16324y = null;
        }
        n nVar2 = this.f16325z;
        if (nVar2 != null) {
            nVar2.l();
            this.f16325z = null;
        }
    }

    private void F() {
        E();
        ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).release();
        this.f16322w = null;
        this.f16320u = 0;
    }

    private void G() {
        F();
        C();
    }

    private void I(List list) {
        Handler handler = this.f16313n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            D(list);
        }
    }

    private void z() {
        I(Collections.emptyList());
    }

    public void H(long j11) {
        com.google.android.exoplayer2.util.a.g(isCurrentStreamFinal());
        this.B = j11;
    }

    @Override // com.google.android.exoplayer2.z2
    public int a(o1 o1Var) {
        if (this.f16315p.a(o1Var)) {
            return y2.a(o1Var.E == 0 ? 4 : 2);
        }
        return w.s(o1Var.f25496l) ? y2.a(1) : y2.a(0);
    }

    @Override // com.google.android.exoplayer2.x2, com.google.android.exoplayer2.z2
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        D((List) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isEnded() {
        return this.f16318s;
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.h
    protected void p() {
        this.f16321v = null;
        this.B = C.TIME_UNSET;
        z();
        F();
    }

    @Override // com.google.android.exoplayer2.h
    protected void r(long j11, boolean z10) {
        z();
        this.f16317r = false;
        this.f16318s = false;
        this.B = C.TIME_UNSET;
        if (this.f16320u != 0) {
            G();
        } else {
            E();
            ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).flush();
        }
    }

    @Override // com.google.android.exoplayer2.x2
    public void render(long j11, long j12) {
        boolean z10;
        if (isCurrentStreamFinal()) {
            long j13 = this.B;
            if (j13 != C.TIME_UNSET && j11 >= j13) {
                E();
                this.f16318s = true;
            }
        }
        if (this.f16318s) {
            return;
        }
        if (this.f16325z == null) {
            ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).setPositionUs(j11);
            try {
                this.f16325z = (n) ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e11) {
                B(e11);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f16324y != null) {
            long jA = A();
            z10 = false;
            while (jA <= j11) {
                this.A++;
                jA = A();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        n nVar = this.f16325z;
        if (nVar != null) {
            if (nVar.h()) {
                if (!z10 && A() == Long.MAX_VALUE) {
                    if (this.f16320u == 2) {
                        G();
                    } else {
                        E();
                        this.f16318s = true;
                    }
                }
            } else if (nVar.f24887b <= j11) {
                n nVar2 = this.f16324y;
                if (nVar2 != null) {
                    nVar2.l();
                }
                this.A = nVar.getNextEventTimeIndex(j11);
                this.f16324y = nVar;
                this.f16325z = null;
                z10 = true;
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f16324y);
            I(this.f16324y.getCues(j11));
        }
        if (this.f16320u == 2) {
            return;
        }
        while (!this.f16317r) {
            try {
                m mVar = this.f16323x;
                if (mVar == null) {
                    mVar = (m) ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).dequeueInputBuffer();
                    if (mVar == null) {
                        return;
                    } else {
                        this.f16323x = mVar;
                    }
                }
                if (this.f16320u == 1) {
                    mVar.k(4);
                    ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).queueInputBuffer(mVar);
                    this.f16323x = null;
                    this.f16320u = 2;
                    return;
                }
                int iW = w(this.f16316q, mVar, 0);
                if (iW == -4) {
                    if (mVar.h()) {
                        this.f16317r = true;
                        this.f16319t = false;
                    } else {
                        o1 o1Var = this.f16316q.f25598b;
                        if (o1Var == null) {
                            return;
                        }
                        mVar.f16310i = o1Var.f25500p;
                        mVar.n();
                        this.f16319t &= !mVar.j();
                    }
                    if (!this.f16319t) {
                        ((j) com.google.android.exoplayer2.util.a.e(this.f16322w)).queueInputBuffer(mVar);
                        this.f16323x = null;
                    }
                } else if (iW == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e12) {
                B(e12);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void v(o1[] o1VarArr, long j11, long j12) {
        this.f16321v = o1VarArr[0];
        if (this.f16322w != null) {
            this.f16320u = 1;
        } else {
            C();
        }
    }
}
