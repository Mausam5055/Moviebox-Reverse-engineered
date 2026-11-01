package t2;

import l2.c0;
import l2.s;

/* JADX INFO: loaded from: classes2.dex */
final class d extends c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f76007b;

    public d(s sVar, long j11) {
        super(sVar);
        androidx.media3.common.util.a.a(sVar.getPosition() >= j11);
        this.f76007b = j11;
    }

    @Override // l2.c0, l2.s
    public long getLength() {
        return super.getLength() - this.f76007b;
    }

    @Override // l2.c0, l2.s
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f76007b;
    }

    @Override // l2.c0, l2.s
    public long getPosition() {
        return super.getPosition() - this.f76007b;
    }
}
