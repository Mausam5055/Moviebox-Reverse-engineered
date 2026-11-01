package cv;

import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class b implements cv.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f60889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JSONObject f60890b;

    class a implements com.transsion.transfer.androidasync.future.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.a f60891a;

        a(bv.a aVar) {
            this.f60891a = aVar;
        }

        @Override // com.transsion.transfer.androidasync.future.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Exception exc, JSONObject jSONObject) {
            b.this.f60890b = jSONObject;
            this.f60891a.g(exc);
        }
    }

    @Override // cv.a
    public void C(j jVar, s sVar, bv.a aVar) {
        a0.h(sVar, this.f60889a, aVar);
    }

    @Override // cv.a
    public boolean K() {
        return true;
    }

    @Override // cv.a
    public String j() {
        return "application/json";
    }

    @Override // cv.a
    public int length() {
        byte[] bytes = this.f60890b.toString().getBytes();
        this.f60889a = bytes;
        return bytes.length;
    }

    @Override // cv.a
    public void r(p pVar, bv.a aVar) {
        new fv.d().a(pVar).f(new a(aVar));
    }
}
