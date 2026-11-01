package ev;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.s;
import com.transsion.transfer.androidasync.u;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public class a extends u {
    public a(s sVar) {
        super(sVar);
    }

    @Override // com.transsion.transfer.androidasync.n, com.transsion.transfer.androidasync.s
    public void d() {
        q(Integer.MAX_VALUE);
        l(new ByteBufferList());
        q(0);
    }

    @Override // com.transsion.transfer.androidasync.u
    public ByteBufferList s(ByteBufferList byteBufferList) {
        byteBufferList.c(ByteBuffer.wrap((Integer.toString(byteBufferList.C(), 16) + "\r\n").getBytes()));
        byteBufferList.a(ByteBuffer.wrap("\r\n".getBytes()));
        return byteBufferList;
    }
}
