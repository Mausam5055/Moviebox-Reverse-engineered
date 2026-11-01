package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.e0;

/* JADX INFO: loaded from: classes3.dex */
final class d extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f25066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f25067c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25070f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25071g;

    public d(e0 e0Var) {
        super(e0Var);
        this.f25066b = new d0(x.f27664a);
        this.f25067c = new d0(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(d0 d0Var) throws TagPayloadReader.UnsupportedFormatException {
        int iD = d0Var.D();
        int i11 = (iD >> 4) & 15;
        int i12 = iD & 15;
        if (i12 == 7) {
            this.f25071g = i11;
            return i11 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i12);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(d0 d0Var, long j11) throws ParserException {
        int iD = d0Var.D();
        long jO = j11 + (((long) d0Var.o()) * 1000);
        if (iD == 0 && !this.f25069e) {
            d0 d0Var2 = new d0(new byte[d0Var.a()]);
            d0Var.j(d0Var2.d(), 0, d0Var.a());
            com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(d0Var2);
            this.f25068d = aVarB.f27820b;
            this.f25041a.e(new o1.b().e0(MimeTypes.VIDEO_H264).I(aVarB.f27824f).j0(aVarB.f27821c).Q(aVarB.f27822d).a0(aVarB.f27823e).T(aVarB.f27819a).E());
            this.f25069e = true;
            return false;
        }
        if (iD != 1 || !this.f25069e) {
            return false;
        }
        int i11 = this.f25071g == 1 ? 1 : 0;
        if (!this.f25070f && i11 == 0) {
            return false;
        }
        byte[] bArrD = this.f25067c.d();
        bArrD[0] = 0;
        bArrD[1] = 0;
        bArrD[2] = 0;
        int i12 = 4 - this.f25068d;
        int i13 = 0;
        while (d0Var.a() > 0) {
            d0Var.j(this.f25067c.d(), i12, this.f25068d);
            this.f25067c.P(0);
            int iH = this.f25067c.H();
            this.f25066b.P(0);
            this.f25041a.c(this.f25066b, 4);
            this.f25041a.c(d0Var, iH);
            i13 = i13 + 4 + iH;
        }
        this.f25041a.d(jO, i11, i13, 0, null);
        this.f25070f = true;
        return true;
    }
}
