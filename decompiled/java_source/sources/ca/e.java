package ca;

import ba.i;
import ba.j;
import ba.m;
import ba.n;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes3.dex */
abstract class e implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayDeque f17098a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f17099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityQueue f17100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f17101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f17102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f17103f;

    private static final class b extends m implements Comparable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f17104j;

        private b() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            if (h() != bVar.h()) {
                return h() ? 1 : -1;
            }
            long j11 = this.f24845e - bVar.f24845e;
            if (j11 == 0) {
                j11 = this.f17104j - bVar.f17104j;
                if (j11 == 0) {
                    return 0;
                }
            }
            return j11 > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends n {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.android.exoplayer2.decoder.f.a f17105f;

        public c(com.google.android.exoplayer2.decoder.f.a aVar) {
            this.f17105f = aVar;
        }

        @Override // com.google.android.exoplayer2.decoder.f
        public final void l() {
            this.f17105f.a(this);
        }
    }

    public e() {
        for (int i11 = 0; i11 < 10; i11++) {
            this.f17098a.add(new b());
        }
        this.f17099b = new ArrayDeque();
        for (int i12 = 0; i12 < 2; i12++) {
            this.f17099b.add(new c(new com.google.android.exoplayer2.decoder.f.a() { // from class: ca.d
                @Override // com.google.android.exoplayer2.decoder.f.a
                public final void a(com.google.android.exoplayer2.decoder.f fVar) {
                    this.f17097a.j((e.c) fVar);
                }
            }));
        }
        this.f17100c = new PriorityQueue();
    }

    private void i(b bVar) {
        bVar.b();
        this.f17098a.add(bVar);
    }

    protected abstract i a();

    protected abstract void b(m mVar);

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public m dequeueInputBuffer() {
        com.google.android.exoplayer2.util.a.g(this.f17101d == null);
        if (this.f17098a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.f17098a.pollFirst();
        this.f17101d = bVar;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public n dequeueOutputBuffer() {
        if (this.f17099b.isEmpty()) {
            return null;
        }
        while (!this.f17100c.isEmpty() && ((b) p0.j((b) this.f17100c.peek())).f24845e <= this.f17102e) {
            b bVar = (b) p0.j((b) this.f17100c.poll());
            if (bVar.h()) {
                n nVar = (n) p0.j((n) this.f17099b.pollFirst());
                nVar.a(4);
                i(bVar);
                return nVar;
            }
            b(bVar);
            if (g()) {
                i iVarA = a();
                n nVar2 = (n) p0.j((n) this.f17099b.pollFirst());
                nVar2.m(bVar.f24845e, iVarA, Long.MAX_VALUE);
                i(bVar);
                return nVar2;
            }
            i(bVar);
        }
        return null;
    }

    protected final n e() {
        return (n) this.f17099b.pollFirst();
    }

    protected final long f() {
        return this.f17102e;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void flush() {
        this.f17103f = 0L;
        this.f17102e = 0L;
        while (!this.f17100c.isEmpty()) {
            i((b) p0.j((b) this.f17100c.poll()));
        }
        b bVar = this.f17101d;
        if (bVar != null) {
            i(bVar);
            this.f17101d = null;
        }
    }

    protected abstract boolean g();

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(m mVar) {
        com.google.android.exoplayer2.util.a.a(mVar == this.f17101d);
        b bVar = (b) mVar;
        if (bVar.g()) {
            i(bVar);
        } else {
            long j11 = this.f17103f;
            this.f17103f = 1 + j11;
            bVar.f17104j = j11;
            this.f17100c.add(bVar);
        }
        this.f17101d = null;
    }

    protected void j(n nVar) {
        nVar.b();
        this.f17099b.add(nVar);
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void release() {
    }

    @Override // ba.j
    public void setPositionUs(long j11) {
        this.f17102e = j11;
    }
}
