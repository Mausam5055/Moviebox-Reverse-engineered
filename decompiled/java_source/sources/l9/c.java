package l9;

import g9.m;
import g9.w;

/* JADX INFO: loaded from: classes4.dex */
final class c extends w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f68770b;

    public c(m mVar, long j11) {
        super(mVar);
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() >= j11);
        this.f68770b = j11;
    }

    @Override // g9.w, g9.m
    public long getLength() {
        return super.getLength() - this.f68770b;
    }

    @Override // g9.w, g9.m
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f68770b;
    }

    @Override // g9.w, g9.m
    public long getPosition() {
        return super.getPosition() - this.f68770b;
    }
}
