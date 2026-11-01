package fv;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.future.y;
import com.transsion.transfer.androidasync.p;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes7.dex */
public class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Charset f62570a;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String c(String str, ByteBufferList byteBufferList) {
        Charset charsetForName = this.f62570a;
        if (charsetForName == null && str != null) {
            charsetForName = Charset.forName(str);
        }
        return byteBufferList.z(charsetForName);
    }

    @Override // fv.a
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        final String strV = pVar.v();
        return new b().a(pVar).h(new y() { // from class: fv.e
            @Override // com.transsion.transfer.androidasync.future.y
            public final Object then(Object obj) {
                return this.f62568a.c(strV, (ByteBufferList) obj);
            }
        });
    }
}
