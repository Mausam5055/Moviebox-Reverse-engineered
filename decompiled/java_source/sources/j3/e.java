package j3;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.h;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.k;
import i3.l;
import i3.o;
import i3.p;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
abstract class e implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayDeque f65930a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f65931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f65932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f65933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f65934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f65935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f65936g;

    private static final class b extends o implements Comparable {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f65937j;

        private b() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            if (isEndOfStream() != bVar.isEndOfStream()) {
                return isEndOfStream() ? 1 : -1;
            }
            long j11 = this.f10920e - bVar.f10920e;
            if (j11 == 0) {
                j11 = this.f65937j - bVar.f65937j;
                if (j11 == 0) {
                    return 0;
                }
            }
            return j11 > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends p {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private h.a f65938c;

        public c(h.a aVar) {
            this.f65938c = aVar;
        }

        @Override // androidx.media3.decoder.h
        public final void release() {
            this.f65938c.a(this);
        }
    }

    public e() {
        for (int i11 = 0; i11 < 10; i11++) {
            this.f65930a.add(new b());
        }
        this.f65931b = new ArrayDeque();
        for (int i12 = 0; i12 < 2; i12++) {
            this.f65931b.add(new c(new h.a() { // from class: j3.d
                @Override // androidx.media3.decoder.h.a
                public final void a(h hVar) {
                    this.f65929a.l((e.c) hVar);
                }
            }));
        }
        this.f65932c = new ArrayDeque();
        this.f65936g = C.TIME_UNSET;
    }

    private void k(b bVar) {
        bVar.clear();
        this.f65930a.add(bVar);
    }

    @Override // androidx.media3.decoder.g
    public final void a(long j11) {
        this.f65936g = j11;
    }

    protected abstract k c();

    protected abstract void d(o oVar);

    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public o dequeueInputBuffer() {
        androidx.media3.common.util.a.g(this.f65933d == null);
        if (this.f65930a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.f65930a.pollFirst();
        this.f65933d = bVar;
        return bVar;
    }

    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public p dequeueOutputBuffer() {
        if (this.f65931b.isEmpty()) {
            return null;
        }
        while (!this.f65932c.isEmpty() && ((b) a1.i((b) this.f65932c.peek())).f10920e <= this.f65934e) {
            b bVar = (b) a1.i((b) this.f65932c.poll());
            if (bVar.isEndOfStream()) {
                p pVar = (p) a1.i((p) this.f65931b.pollFirst());
                pVar.addFlag(4);
                k(bVar);
                return pVar;
            }
            d(bVar);
            if (i()) {
                k kVarC = c();
                p pVar2 = (p) a1.i((p) this.f65931b.pollFirst());
                pVar2.a(bVar.f10920e, kVarC, Long.MAX_VALUE);
                k(bVar);
                return pVar2;
            }
            k(bVar);
        }
        return null;
    }

    @Override // androidx.media3.decoder.g
    public void flush() {
        this.f65935f = 0L;
        this.f65934e = 0L;
        while (!this.f65932c.isEmpty()) {
            k((b) a1.i((b) this.f65932c.poll()));
        }
        b bVar = this.f65933d;
        if (bVar != null) {
            k(bVar);
            this.f65933d = null;
        }
    }

    protected final p g() {
        return (p) this.f65931b.pollFirst();
    }

    protected final long h() {
        return this.f65934e;
    }

    protected abstract boolean i();

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(o oVar) {
        androidx.media3.common.util.a.a(oVar == this.f65933d);
        b bVar = (b) oVar;
        if (bVar.isEndOfStream()) {
            long j11 = this.f65935f;
            this.f65935f = 1 + j11;
            bVar.f65937j = j11;
            this.f65932c.add(bVar);
        } else {
            long j12 = bVar.f10920e;
            if (j12 != Long.MIN_VALUE) {
                long j13 = this.f65936g;
                if (j13 == C.TIME_UNSET || j12 >= j13) {
                    long j14 = this.f65935f;
                    this.f65935f = 1 + j14;
                    bVar.f65937j = j14;
                    this.f65932c.add(bVar);
                } else {
                    k(bVar);
                }
            } else {
                long j15 = this.f65935f;
                this.f65935f = 1 + j15;
                bVar.f65937j = j15;
                this.f65932c.add(bVar);
            }
        }
        this.f65933d = null;
    }

    protected void l(p pVar) {
        pVar.clear();
        this.f65931b.add(pVar);
    }

    @Override // androidx.media3.decoder.g
    public void release() {
    }

    @Override // i3.l
    public void setPositionUs(long j11) {
        this.f65934e = j11;
    }
}
