package ev;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.filter.DataRemainingException;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes7.dex */
public class d extends t {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Inflater f62030g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ByteBufferList f62031h;

    public d() {
        this(new Inflater());
    }

    public d(Inflater inflater) {
        this.f62031h = new ByteBufferList();
        this.f62030g = inflater;
    }

    @Override // com.transsion.transfer.androidasync.t, bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        try {
            ByteBuffer byteBufferT = ByteBufferList.t(byteBufferList.C() * 2);
            while (byteBufferList.E() > 0) {
                ByteBuffer byteBufferD = byteBufferList.D();
                if (byteBufferD.hasRemaining()) {
                    byteBufferD.remaining();
                    this.f62030g.setInput(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                    do {
                        byteBufferT.position(byteBufferT.position() + this.f62030g.inflate(byteBufferT.array(), byteBufferT.arrayOffset() + byteBufferT.position(), byteBufferT.remaining()));
                        if (!byteBufferT.hasRemaining()) {
                            byteBufferT.flip();
                            this.f62031h.a(byteBufferT);
                            byteBufferT = ByteBufferList.t(byteBufferT.capacity() * 2);
                        }
                        if (this.f62030g.needsInput()) {
                            break;
                        }
                    } while (!this.f62030g.finished());
                }
                ByteBufferList.A(byteBufferD);
            }
            byteBufferT.flip();
            this.f62031h.a(byteBufferT);
            a0.a(this, this.f62031h);
        } catch (Exception e11) {
            M(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.transsion.transfer.androidasync.q
    public void M(Exception exc) {
        this.f62030g.end();
        if (exc != null && this.f62030g.getRemaining() > 0) {
            exc = new DataRemainingException("data still remaining in inflater", exc);
        }
        super.M(exc);
    }
}
