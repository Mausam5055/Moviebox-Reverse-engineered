package ba;

import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class g implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f16288a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f16289b = new m();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Deque f16290c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f16292e;

    class a extends n {
        a() {
        }

        @Override // com.google.android.exoplayer2.decoder.f
        public void l() {
            g.this.e(this);
        }
    }

    private static final class b implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f16294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImmutableList f16295b;

        public b(long j11, ImmutableList immutableList) {
            this.f16294a = j11;
            this.f16295b = immutableList;
        }

        @Override // ba.i
        public List getCues(long j11) {
            return j11 >= this.f16294a ? this.f16295b : ImmutableList.of();
        }

        @Override // ba.i
        public long getEventTime(int i11) {
            com.google.android.exoplayer2.util.a.a(i11 == 0);
            return this.f16294a;
        }

        @Override // ba.i
        public int getEventTimeCount() {
            return 1;
        }

        @Override // ba.i
        public int getNextEventTimeIndex(long j11) {
            return this.f16294a > j11 ? 0 : -1;
        }
    }

    public g() {
        for (int i11 = 0; i11 < 2; i11++) {
            this.f16290c.addFirst(new a());
        }
        this.f16291d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f16290c.size() < 2);
        com.google.android.exoplayer2.util.a.a(!this.f16290c.contains(nVar));
        nVar.b();
        this.f16290c.addFirst(nVar);
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m dequeueInputBuffer() {
        com.google.android.exoplayer2.util.a.g(!this.f16292e);
        if (this.f16291d != 0) {
            return null;
        }
        this.f16291d = 1;
        return this.f16289b;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n dequeueOutputBuffer() {
        com.google.android.exoplayer2.util.a.g(!this.f16292e);
        if (this.f16291d != 2 || this.f16290c.isEmpty()) {
            return null;
        }
        n nVar = (n) this.f16290c.removeFirst();
        if (this.f16289b.h()) {
            nVar.a(4);
        } else {
            m mVar = this.f16289b;
            nVar.m(this.f16289b.f24845e, new b(mVar.f24845e, this.f16288a.a(((ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24843c)).array())), 0L);
        }
        this.f16289b.b();
        this.f16291d = 0;
        return nVar;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(m mVar) {
        com.google.android.exoplayer2.util.a.g(!this.f16292e);
        com.google.android.exoplayer2.util.a.g(this.f16291d == 1);
        com.google.android.exoplayer2.util.a.a(this.f16289b == mVar);
        this.f16291d = 2;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void flush() {
        com.google.android.exoplayer2.util.a.g(!this.f16292e);
        this.f16289b.b();
        this.f16291d = 0;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void release() {
        this.f16292e = true;
    }

    @Override // ba.j
    public void setPositionUs(long j11) {
    }
}
