package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes6.dex */
public class w implements bv.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static Hashtable f55572n = new Hashtable();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    p f55581i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f55573a = new a(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f55574b = new b(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l f55575c = new c(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f55576d = new d(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l f55577e = new e(8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private j f55578f = new f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private j f55579g = new g();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private j f55580h = new h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinkedList f55582j = new LinkedList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList f55583k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ByteOrder f55584l = ByteOrder.BIG_ENDIAN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ByteBufferList f55585m = new ByteBufferList();

    class a extends l {
        a(int i11) {
            super(i11);
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f55583k.add(null);
            return null;
        }
    }

    class b extends l {
        b(int i11) {
            super(i11);
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f55583k.add(Byte.valueOf(byteBufferList.e()));
            return null;
        }
    }

    class c extends l {
        c(int i11) {
            super(i11);
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f55583k.add(Short.valueOf(byteBufferList.q()));
            return null;
        }
    }

    class d extends l {
        d(int i11) {
            super(i11);
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f55583k.add(Integer.valueOf(byteBufferList.n()));
            return null;
        }
    }

    class e extends l {
        e(int i11) {
            super(i11);
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f55583k.add(Long.valueOf(byteBufferList.o()));
            return null;
        }
    }

    class f implements j {
        f() {
        }

        @Override // com.transsion.transfer.androidasync.w.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(byte[] bArr) {
            w.this.f55583k.add(bArr);
        }
    }

    class g implements j {
        g() {
        }

        @Override // com.transsion.transfer.androidasync.w.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ByteBufferList byteBufferList) {
            w.this.f55583k.add(byteBufferList);
        }
    }

    class h implements j {
        h() {
        }

        @Override // com.transsion.transfer.androidasync.w.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(byte[] bArr) {
            w.this.f55583k.add(new String(bArr));
        }
    }

    static class i extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        j f55594b;

        public i(int i11, j jVar) {
            super(i11);
            if (i11 <= 0) {
                throw new IllegalArgumentException("length should be > 0");
            }
            this.f55594b = jVar;
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[this.f55597a];
            byteBufferList.h(bArr);
            this.f55594b.a(bArr);
            return null;
        }
    }

    public interface j {
        void a(Object obj);
    }

    static class k extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        byte f55595b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        bv.d f55596c;

        public k(byte b11, bv.d dVar) {
            super(1);
            this.f55595b = b11;
            this.f55596c = dVar;
        }

        @Override // com.transsion.transfer.androidasync.w.l
        public l a(p pVar, ByteBufferList byteBufferList) {
            ByteBufferList byteBufferList2 = new ByteBufferList();
            boolean z10 = true;
            while (byteBufferList.E() > 0) {
                ByteBuffer byteBufferD = byteBufferList.D();
                byteBufferD.mark();
                int i11 = 0;
                while (byteBufferD.remaining() > 0) {
                    z10 = byteBufferD.get() == this.f55595b;
                    if (z10) {
                        break;
                    }
                    i11++;
                }
                byteBufferD.reset();
                if (z10) {
                    byteBufferList.c(byteBufferD);
                    byteBufferList.g(byteBufferList2, i11);
                    byteBufferList.e();
                    break;
                }
                byteBufferList2.a(byteBufferD);
            }
            this.f55596c.F(pVar, byteBufferList2);
            if (z10) {
                return null;
            }
            return this;
        }
    }

    static abstract class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55597a;

        public l(int i11) {
            this.f55597a = i11;
        }

        public abstract l a(p pVar, ByteBufferList byteBufferList);
    }

    public w(p pVar) {
        this.f55581i = pVar;
        pVar.t(this);
    }

    @Override // bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        byteBufferList.f(this.f55585m);
        while (this.f55582j.size() > 0 && this.f55585m.C() >= ((l) this.f55582j.peek()).f55597a) {
            this.f55585m.u(this.f55584l);
            l lVarA = ((l) this.f55582j.poll()).a(pVar, this.f55585m);
            if (lVarA != null) {
                this.f55582j.addFirst(lVarA);
            }
        }
        if (this.f55582j.size() == 0) {
            this.f55585m.f(byteBufferList);
        }
    }

    public w b(int i11, j jVar) {
        this.f55582j.add(new i(i11, jVar));
        return this;
    }

    public w c(byte b11, bv.d dVar) {
        this.f55582j.add(new k(b11, dVar));
        return this;
    }
}
