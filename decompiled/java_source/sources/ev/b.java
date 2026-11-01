package ev;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.http.filter.PrematureDataEndException;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;

/* JADX INFO: loaded from: classes7.dex */
public class b extends t {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f62016g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f62017h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ByteBufferList f62018i = new ByteBufferList();

    public b(long j11) {
        this.f62016g = j11;
    }

    @Override // com.transsion.transfer.androidasync.t, bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        byteBufferList.g(this.f62018i, (int) Math.min(this.f62016g - this.f62017h, byteBufferList.C()));
        int iC = this.f62018i.C();
        super.F(pVar, this.f62018i);
        this.f62017h += (long) (iC - this.f62018i.C());
        this.f62018i.f(byteBufferList);
        if (this.f62017h == this.f62016g) {
            M(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.transsion.transfer.androidasync.q
    public void M(Exception exc) {
        if (exc == null && this.f62017h != this.f62016g) {
            exc = new PrematureDataEndException("End of data reached before content length was read: " + this.f62017h + "/" + this.f62016g + " Paused: " + isPaused());
        }
        super.M(exc);
    }
}
