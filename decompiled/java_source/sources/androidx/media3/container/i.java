package androidx.media3.container;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f10677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f10678b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f10679c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityQueue f10680d = new PriorityQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10681e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f10682f;

    private static final class a implements Comparable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f10684b = C.TIME_UNSET;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f10683a = new ArrayList();

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            return Long.compare(this.f10684b, aVar.f10684b);
        }

        public void b(long j11, j0 j0Var) {
            androidx.media3.common.util.a.a(j11 != C.TIME_UNSET);
            androidx.media3.common.util.a.g(this.f10683a.isEmpty());
            this.f10684b = j11;
            this.f10683a.add(j0Var);
        }
    }

    public interface b {
        void a(long j11, j0 j0Var);
    }

    public i(b bVar) {
        this.f10677a = bVar;
    }

    private j0 c(j0 j0Var) {
        j0 j0Var2 = this.f10678b.isEmpty() ? new j0() : (j0) this.f10678b.pop();
        j0Var2.S(j0Var.a());
        System.arraycopy(j0Var.e(), j0Var.f(), j0Var2.e(), 0, j0Var2.a());
        return j0Var2;
    }

    private void e(int i11) {
        while (this.f10680d.size() > i11) {
            a aVar = (a) a1.i((a) this.f10680d.poll());
            for (int i12 = 0; i12 < aVar.f10683a.size(); i12++) {
                this.f10677a.a(aVar.f10684b, (j0) aVar.f10683a.get(i12));
                this.f10678b.push((j0) aVar.f10683a.get(i12));
            }
            aVar.f10683a.clear();
            a aVar2 = this.f10682f;
            if (aVar2 != null && aVar2.f10684b == aVar.f10684b) {
                this.f10682f = null;
            }
            this.f10679c.push(aVar);
        }
    }

    public void a(long j11, j0 j0Var) {
        int i11 = this.f10681e;
        if (i11 == 0 || (i11 != -1 && this.f10680d.size() >= this.f10681e && j11 < ((a) a1.i((a) this.f10680d.peek())).f10684b)) {
            this.f10677a.a(j11, j0Var);
            return;
        }
        j0 j0VarC = c(j0Var);
        a aVar = this.f10682f;
        if (aVar != null && j11 == aVar.f10684b) {
            aVar.f10683a.add(j0VarC);
            return;
        }
        a aVar2 = this.f10679c.isEmpty() ? new a() : (a) this.f10679c.pop();
        aVar2.b(j11, j0VarC);
        this.f10680d.add(aVar2);
        this.f10682f = aVar2;
        int i12 = this.f10681e;
        if (i12 != -1) {
            e(i12);
        }
    }

    public void b() {
        this.f10680d.clear();
    }

    public void d() {
        e(0);
    }

    public int f() {
        return this.f10681e;
    }

    public void g(int i11) {
        androidx.media3.common.util.a.g(i11 >= 0);
        this.f10681e = i11;
        e(i11);
    }
}
