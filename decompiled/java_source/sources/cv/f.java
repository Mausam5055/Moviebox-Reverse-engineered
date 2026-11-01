package cv;

import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;

/* JADX INFO: loaded from: classes7.dex */
public class f implements cv.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f60919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f60920b;

    class a implements com.transsion.transfer.androidasync.future.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.a f60921a;

        a(bv.a aVar) {
            this.f60921a = aVar;
        }

        @Override // com.transsion.transfer.androidasync.future.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Exception exc, String str) {
            f.this.f60920b = str;
            this.f60921a.g(exc);
        }
    }

    public f() {
    }

    public f(String str) {
        this();
        this.f60920b = str;
    }

    @Override // cv.a
    public void C(j jVar, s sVar, bv.a aVar) {
        if (this.f60919a == null) {
            this.f60919a = this.f60920b.getBytes();
        }
        a0.h(sVar, this.f60919a, aVar);
    }

    @Override // cv.a
    public boolean K() {
        return true;
    }

    public String a() {
        return toString();
    }

    @Override // cv.a
    public String j() {
        return ShareConstant.SHARE_TYPE_TEXT;
    }

    @Override // cv.a
    public int length() {
        if (this.f60919a == null) {
            this.f60919a = this.f60920b.getBytes();
        }
        return this.f60919a.length;
    }

    @Override // cv.a
    public void r(p pVar, bv.a aVar) {
        new fv.f().a(pVar).f(new a(aVar));
    }

    public String toString() {
        return this.f60920b;
    }
}
