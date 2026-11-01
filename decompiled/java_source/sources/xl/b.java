package xl;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class b implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f78312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f78313b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f78314c = new i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f78315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f78316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f78317f;

    protected b(File file, long j11, long j12) {
        this.f78315d = file;
        this.f78316e = j11;
        this.f78317f = j12;
    }

    private f d() {
        if (this.f78312a == null) {
            synchronized (b.class) {
                try {
                    if (this.f78312a == null) {
                        File fileA = this.f78315d;
                        if (fileA == null) {
                            fileA = cm.i.a(qk.a.a());
                        }
                        File file = fileA;
                        this.f78315d = file;
                        this.f78312a = f.k(file, 1, 1, this.f78316e, this.f78317f);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f78312a;
    }

    public File a(wl.e eVar) {
        try {
            f.e eVarQ = d().q(this.f78314c.a(eVar));
            if (eVarQ != null) {
                return eVarQ.a(0);
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        return null;
    }

    public void b() {
        try {
            d().close();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    public void c(wl.e eVar, h.a aVar) {
        this.f78313b.a(eVar);
        String strA = this.f78314c.a(eVar);
        try {
            try {
                if (d().q(strA) != null) {
                    this.f78313b.b(eVar);
                    return;
                }
                f.c cVarH = this.f78312a.h(strA);
                if (cVarH == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Had two simultaneous puts for: ");
                    sb2.append(strA);
                    throw new IllegalStateException(sb2.toString());
                }
                try {
                    if (((j) aVar).a(cVarH.a(0))) {
                        cVarH.f();
                    }
                    cVarH.d();
                    this.f78313b.b(eVar);
                } catch (Throwable th2) {
                    cVarH.d();
                    throw th2;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                this.f78313b.b(eVar);
            }
        } catch (Throwable th3) {
            this.f78313b.b(eVar);
            throw th3;
        }
    }
}
