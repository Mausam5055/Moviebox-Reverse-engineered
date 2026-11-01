package androidx.media3.extractor.flv;

import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.container.g;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class d extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f13426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f13427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f13430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13431g;

    public d(s0 s0Var) {
        super(s0Var);
        this.f13426b = new j0(g.f10593a);
        this.f13427c = new j0(4);
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(j0 j0Var) throws TagPayloadReader.UnsupportedFormatException {
        int iH = j0Var.H();
        int i11 = (iH >> 4) & 15;
        int i12 = iH & 15;
        if (i12 == 7) {
            this.f13431g = i11;
            return i11 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i12);
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(j0 j0Var, long j11) throws ParserException {
        int iH = j0Var.H();
        long jR = j11 + (((long) j0Var.r()) * 1000);
        if (iH == 0 && !this.f13429e) {
            j0 j0Var2 = new j0(new byte[j0Var.a()]);
            j0Var.l(j0Var2.e(), 0, j0Var.a());
            l2.d dVarB = l2.d.b(j0Var2);
            this.f13428d = dVarB.f68529b;
            this.f13401a.c(new r.b().U("video/x-flv").u0(MimeTypes.VIDEO_H264).S(dVarB.f68539l).B0(dVarB.f68530c).d0(dVarB.f68531d).q0(dVarB.f68538k).g0(dVarB.f68528a).N());
            this.f13429e = true;
            return false;
        }
        if (iH != 1 || !this.f13429e) {
            return false;
        }
        int i11 = this.f13431g == 1 ? 1 : 0;
        if (!this.f13430f && i11 == 0) {
            return false;
        }
        byte[] bArrE = this.f13427c.e();
        bArrE[0] = 0;
        bArrE[1] = 0;
        bArrE[2] = 0;
        int i12 = 4 - this.f13428d;
        int i13 = 0;
        while (j0Var.a() > 0) {
            j0Var.l(this.f13427c.e(), i12, this.f13428d);
            this.f13427c.W(0);
            int iL = this.f13427c.L();
            this.f13426b.W(0);
            this.f13401a.b(this.f13426b, 4);
            this.f13401a.b(j0Var, iL);
            i13 = i13 + 4 + iL;
        }
        this.f13401a.d(jR, i11, i13, 0, null);
        this.f13430f = true;
        return true;
    }
}
