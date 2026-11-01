package ba;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class n extends com.google.android.exoplayer2.decoder.f implements i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f16311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f16312e;

    @Override // com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        this.f16311d = null;
    }

    @Override // ba.i
    public List getCues(long j11) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f16311d)).getCues(j11 - this.f16312e);
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f16311d)).getEventTime(i11) + this.f16312e;
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f16311d)).getEventTimeCount();
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f16311d)).getNextEventTimeIndex(j11 - this.f16312e);
    }

    public void m(long j11, i iVar, long j12) {
        this.f24887b = j11;
        this.f16311d = iVar;
        if (j12 != Long.MAX_VALUE) {
            j11 = j12;
        }
        this.f16312e = j11;
    }
}
