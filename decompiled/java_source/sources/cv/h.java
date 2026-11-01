package cv;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.http.w;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes7.dex */
public class h implements cv.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Multimap f60924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f60925b;

    class a implements bv.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBufferList f60926a;

        a(ByteBufferList byteBufferList) {
            this.f60926a = byteBufferList;
        }

        @Override // bv.d
        public void F(p pVar, ByteBufferList byteBufferList) {
            byteBufferList.f(this.f60926a);
        }
    }

    class b implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBufferList f60928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bv.a f60929b;

        b(ByteBufferList byteBufferList, bv.a aVar) {
            this.f60928a = byteBufferList;
            this.f60929b = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            try {
                if (exc != null) {
                    throw exc;
                }
                h.this.f60924a = Multimap.parseUrlEncoded(this.f60928a.y());
                this.f60929b.g(null);
            } catch (Exception e11) {
                this.f60929b.g(e11);
            }
        }
    }

    private void b() {
        StringBuilder sb2 = new StringBuilder();
        try {
            boolean z10 = true;
            for (w wVar : this.f60924a) {
                if (wVar.getValue() != null) {
                    if (!z10) {
                        sb2.append('&');
                    }
                    sb2.append(URLEncoder.encode(wVar.getName(), "UTF-8"));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(wVar.getValue(), "UTF-8"));
                    z10 = false;
                }
            }
            this.f60925b = sb2.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e11) {
            throw new AssertionError(e11);
        }
    }

    @Override // cv.a
    public void C(j jVar, s sVar, bv.a aVar) {
        if (this.f60925b == null) {
            b();
        }
        a0.h(sVar, this.f60925b, aVar);
    }

    @Override // cv.a
    public boolean K() {
        return true;
    }

    @Override // cv.a
    public String j() {
        return "application/x-www-form-urlencoded; charset=utf-8";
    }

    @Override // cv.a
    public int length() {
        if (this.f60925b == null) {
            b();
        }
        return this.f60925b.length;
    }

    @Override // cv.a
    public void r(p pVar, bv.a aVar) {
        ByteBufferList byteBufferList = new ByteBufferList();
        pVar.t(new a(byteBufferList));
        pVar.s(new b(byteBufferList, aVar));
    }
}
