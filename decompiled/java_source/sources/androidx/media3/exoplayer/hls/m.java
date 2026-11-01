package androidx.media3.exoplayer.hls;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

/* JADX INFO: loaded from: classes2.dex */
final class m implements g2.u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f11786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f11787c = -1;

    public m(r rVar, int i11) {
        this.f11786b = rVar;
        this.f11785a = i11;
    }

    private boolean b() {
        int i11 = this.f11787c;
        return (i11 == -1 || i11 == -3 || i11 == -2) ? false : true;
    }

    public void a() {
        androidx.media3.common.util.a.a(this.f11787c == -1);
        this.f11787c = this.f11786b.l(this.f11785a);
    }

    @Override // g2.u
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (this.f11787c == -3) {
            decoderInputBuffer.addFlag(4);
            return -4;
        }
        if (b()) {
            return this.f11786b.W(this.f11787c, s2Var, decoderInputBuffer, i11);
        }
        return -3;
    }

    public void d() {
        if (this.f11787c != -1) {
            this.f11786b.h0(this.f11785a);
            this.f11787c = -1;
        }
    }

    @Override // g2.u
    public boolean isReady() {
        return this.f11787c == -3 || (b() && this.f11786b.G(this.f11787c));
    }

    @Override // g2.u
    public void maybeThrowError() throws SampleQueueMappingException {
        int i11 = this.f11787c;
        if (i11 == -2) {
            throw new SampleQueueMappingException(this.f11786b.getTrackGroups().b(this.f11785a).a(0).f10161o);
        }
        if (i11 == -1) {
            this.f11786b.L();
        } else if (i11 != -3) {
            this.f11786b.M(i11);
        }
    }

    @Override // g2.u
    public int skipData(long j11) {
        if (b()) {
            return this.f11786b.g0(this.f11787c, j11);
        }
        return 0;
    }
}
