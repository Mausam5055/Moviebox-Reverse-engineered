package wl;

import am.f;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.transsion.http.impl.r;
import xl.h;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zl.a f77700a = new zl.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f77701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final am.e f77702c;

    public b(am.c cVar) {
        this.f77702c = cVar.c();
    }

    public void a(r rVar) {
        this.f77700a.a(this, rVar);
    }

    public h b() {
        if (this.f77702c.e() != null) {
            xl.c cVar = new xl.c(this.f77702c.e());
            int i11 = a.f77699b;
            long j11 = i11 <= 0 ? 104857600L : i11 * 1048576;
            int i12 = a.f77698a;
            this.f77701b = cVar.a(j11, i12 <= 0 ? 864000000L : i12 * TimeConstants.HOUR);
        }
        return this.f77701b;
    }

    public am.e c() {
        return this.f77702c;
    }

    public f d() {
        return new f(this.f77702c);
    }
}
