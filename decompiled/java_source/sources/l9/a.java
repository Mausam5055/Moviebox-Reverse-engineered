package l9;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.a0;
import g9.b0;
import g9.l;
import g9.m;
import g9.n;
import o9.k;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n f68755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68758e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MotionPhotoMetadata f68760g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m f68761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c f68762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f68763j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f68754a = new d0(6);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f68759f = -1;

    private void a(m mVar) {
        this.f68754a.L(2);
        mVar.peekFully(this.f68754a.d(), 0, 2);
        mVar.advancePeekPosition(this.f68754a.J() - 2);
    }

    private void e() {
        g(new Metadata.Entry[0]);
        ((n) com.google.android.exoplayer2.util.a.e(this.f68755b)).endTracks();
        this.f68755b.d(new b0.b(C.TIME_UNSET));
        this.f68756c = 6;
    }

    private static MotionPhotoMetadata f(String str, long j11) {
        b bVarA;
        if (j11 == -1 || (bVarA = e.a(str)) == null) {
            return null;
        }
        return bVarA.a(j11);
    }

    private void g(Metadata.Entry... entryArr) {
        ((n) com.google.android.exoplayer2.util.a.e(this.f68755b)).track(1024, 4).e(new o1.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    private int h(m mVar) {
        this.f68754a.L(2);
        mVar.peekFully(this.f68754a.d(), 0, 2);
        return this.f68754a.J();
    }

    private void i(m mVar) {
        this.f68754a.L(2);
        mVar.readFully(this.f68754a.d(), 0, 2);
        int iJ = this.f68754a.J();
        this.f68757d = iJ;
        if (iJ == 65498) {
            if (this.f68759f != -1) {
                this.f68756c = 4;
                return;
            } else {
                e();
                return;
            }
        }
        if ((iJ < 65488 || iJ > 65497) && iJ != 65281) {
            this.f68756c = 1;
        }
    }

    private void j(m mVar) {
        String strX;
        if (this.f68757d == 65505) {
            d0 d0Var = new d0(this.f68758e);
            mVar.readFully(d0Var.d(), 0, this.f68758e);
            if (this.f68760g == null && "http://ns.adobe.com/xap/1.0/".equals(d0Var.x()) && (strX = d0Var.x()) != null) {
                MotionPhotoMetadata motionPhotoMetadataF = f(strX, mVar.getLength());
                this.f68760g = motionPhotoMetadataF;
                if (motionPhotoMetadataF != null) {
                    this.f68759f = motionPhotoMetadataF.videoStartPosition;
                }
            }
        } else {
            mVar.skipFully(this.f68758e);
        }
        this.f68756c = 0;
    }

    private void k(m mVar) {
        this.f68754a.L(2);
        mVar.readFully(this.f68754a.d(), 0, 2);
        this.f68758e = this.f68754a.J() - 2;
        this.f68756c = 2;
    }

    private void l(m mVar) {
        if (!mVar.peekFully(this.f68754a.d(), 0, 1, true)) {
            e();
            return;
        }
        mVar.resetPeekPosition();
        if (this.f68763j == null) {
            this.f68763j = new k();
        }
        c cVar = new c(mVar, this.f68759f);
        this.f68762i = cVar;
        if (!this.f68763j.d(cVar)) {
            e();
        } else {
            this.f68763j.b(new d(this.f68759f, (n) com.google.android.exoplayer2.util.a.e(this.f68755b)));
            m();
        }
    }

    private void m() {
        g((Metadata.Entry) com.google.android.exoplayer2.util.a.e(this.f68760g));
        this.f68756c = 5;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f68755b = nVar;
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) {
        int i11 = this.f68756c;
        if (i11 == 0) {
            i(mVar);
            return 0;
        }
        if (i11 == 1) {
            k(mVar);
            return 0;
        }
        if (i11 == 2) {
            j(mVar);
            return 0;
        }
        if (i11 == 4) {
            long position = mVar.getPosition();
            long j11 = this.f68759f;
            if (position != j11) {
                a0Var.f63369a = j11;
                return 1;
            }
            l(mVar);
            return 0;
        }
        if (i11 != 5) {
            if (i11 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.f68762i == null || mVar != this.f68761h) {
            this.f68761h = mVar;
            this.f68762i = new c(mVar, this.f68759f);
        }
        int iC = ((k) com.google.android.exoplayer2.util.a.e(this.f68763j)).c(this.f68762i, a0Var);
        if (iC == 1) {
            a0Var.f63369a += this.f68759f;
        }
        return iC;
    }

    @Override // g9.l
    public boolean d(m mVar) {
        if (h(mVar) != 65496) {
            return false;
        }
        int iH = h(mVar);
        this.f68757d = iH;
        if (iH == 65504) {
            a(mVar);
            this.f68757d = h(mVar);
        }
        if (this.f68757d != 65505) {
            return false;
        }
        mVar.advancePeekPosition(2);
        this.f68754a.L(6);
        mVar.peekFully(this.f68754a.d(), 0, 6);
        return this.f68754a.F() == 1165519206 && this.f68754a.J() == 0;
    }

    @Override // g9.l
    public void release() {
        k kVar = this.f68763j;
        if (kVar != null) {
            kVar.release();
        }
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f68756c = 0;
            this.f68763j = null;
        } else if (this.f68756c == 5) {
            ((k) com.google.android.exoplayer2.util.a.e(this.f68763j)).seek(j11, j12);
        }
    }
}
