package fv;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.future.w;
import com.transsion.transfer.androidasync.p;

/* JADX INFO: loaded from: classes7.dex */
public class b implements fv.a {

    class a extends w {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ p f62561f;

        a(p pVar) {
            this.f62561f = pVar;
        }

        @Override // com.transsion.transfer.androidasync.future.n
        protected void cancelCleanup() {
            this.f62561f.close();
        }
    }

    /* JADX INFO: renamed from: fv.b$b, reason: collision with other inner class name */
    class C0763b implements bv.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteBufferList f62563a;

        C0763b(ByteBufferList byteBufferList) {
            this.f62563a = byteBufferList;
        }

        @Override // bv.d
        public void F(p pVar, ByteBufferList byteBufferList) {
            byteBufferList.f(this.f62563a);
        }
    }

    class c implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f62565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ByteBufferList f62566b;

        c(w wVar, ByteBufferList byteBufferList) {
            this.f62565a = wVar;
            this.f62566b = byteBufferList;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (exc != null) {
                this.f62565a.G(exc);
                return;
            }
            try {
                this.f62565a.J(this.f62566b);
            } catch (Exception e11) {
                this.f62565a.G(e11);
            }
        }
    }

    @Override // fv.a
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        ByteBufferList byteBufferList = new ByteBufferList();
        a aVar = new a(pVar);
        pVar.t(new C0763b(byteBufferList));
        pVar.s(new c(aVar, byteBufferList));
        return aVar;
    }
}
