package e2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.x;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends i implements Handler.Callback {
    private x A;
    private long B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final a f61489r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b f61490s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Handler f61491t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final u2.b f61492u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f61493v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private u2.a f61494w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f61495x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f61496y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f61497z;

    public c(b bVar, Looper looper) {
        this(bVar, looper, a.f61488a);
    }

    public c(b bVar, Looper looper, a aVar) {
        this(bVar, looper, aVar, false);
    }

    public c(b bVar, Looper looper, a aVar, boolean z10) {
        super(5);
        this.f61490s = (b) androidx.media3.common.util.a.e(bVar);
        this.f61491t = looper == null ? null : a1.z(looper, this);
        this.f61489r = (a) androidx.media3.common.util.a.e(aVar);
        this.f61493v = z10;
        this.f61492u = new u2.b();
        this.B = C.TIME_UNSET;
    }

    private void Q(x xVar, List list) {
        for (int i11 = 0; i11 < xVar.e(); i11++) {
            r wrappedMetadataFormat = xVar.d(i11).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f61489r.a(wrappedMetadataFormat)) {
                list.add(xVar.d(i11));
            } else {
                u2.a aVarB = this.f61489r.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) androidx.media3.common.util.a.e(xVar.d(i11).getWrappedMetadataBytes());
                this.f61492u.clear();
                this.f61492u.b(bArr.length);
                ((ByteBuffer) a1.i(this.f61492u.f10918c)).put(bArr);
                this.f61492u.d();
                x xVarA = aVarB.a(this.f61492u);
                if (xVarA != null) {
                    Q(xVarA, list);
                }
            }
        }
    }

    private long R(long j11) {
        androidx.media3.common.util.a.g(j11 != C.TIME_UNSET);
        androidx.media3.common.util.a.g(this.B != C.TIME_UNSET);
        return j11 - this.B;
    }

    private void S(x xVar) {
        Handler handler = this.f61491t;
        if (handler != null) {
            handler.obtainMessage(1, xVar).sendToTarget();
        } else {
            T(xVar);
        }
    }

    private void T(x xVar) {
        this.f61490s.onMetadata(xVar);
    }

    private boolean U(long j11) {
        boolean z10;
        x xVar = this.A;
        if (xVar == null || (!this.f61493v && xVar.f10558b > R(j11))) {
            z10 = false;
        } else {
            S(this.A);
            this.A = null;
            z10 = true;
        }
        if (this.f61495x && this.A == null) {
            this.f61496y = true;
        }
        return z10;
    }

    private void V() {
        if (this.f61495x || this.A != null) {
            return;
        }
        this.f61492u.clear();
        s2 s2VarU = u();
        int iN = N(s2VarU, this.f61492u, 0);
        if (iN != -4) {
            if (iN == -5) {
                this.f61497z = ((r) androidx.media3.common.util.a.e(s2VarU.f12570b)).f10166t;
                return;
            }
            return;
        }
        if (this.f61492u.isEndOfStream()) {
            this.f61495x = true;
            return;
        }
        if (this.f61492u.f10920e >= w()) {
            u2.b bVar = this.f61492u;
            bVar.f76614i = this.f61497z;
            bVar.d();
            x xVarA = ((u2.a) a1.i(this.f61494w)).a(this.f61492u);
            if (xVarA != null) {
                ArrayList arrayList = new ArrayList(xVarA.e());
                Q(xVarA, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.A = new x(R(this.f61492u.f10920e), arrayList);
            }
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.A = null;
        this.f61494w = null;
        this.B = C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) {
        this.A = null;
        this.f61495x = false;
        this.f61496y = false;
    }

    @Override // androidx.media3.exoplayer.i
    protected void L(r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        this.f61494w = this.f61489r.b(rVarArr[0]);
        x xVar = this.A;
        if (xVar != null) {
            this.A = xVar.c((xVar.f10558b + this.B) - j12);
        }
        this.B = j12;
    }

    @Override // androidx.media3.exoplayer.y3
    public int a(r rVar) {
        if (this.f61489r.a(rVar)) {
            return x3.a(rVar.N == 0 ? 4 : 2);
        }
        return x3.a(0);
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        T((x) message.obj);
        return true;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.f61496y;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) {
        boolean zU = true;
        while (zU) {
            V();
            zU = U(j11);
        }
    }
}
