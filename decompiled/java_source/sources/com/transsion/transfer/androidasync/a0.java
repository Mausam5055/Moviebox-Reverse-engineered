package com.transsion.transfer.androidasync;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f55174a;

    class a implements bv.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f55175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ByteBufferList f55176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bv.a f55177c;

        a(s sVar, ByteBufferList byteBufferList, bv.a aVar) {
            this.f55175a = sVar;
            this.f55176b = byteBufferList;
            this.f55177c = aVar;
        }

        @Override // bv.j
        public void a() {
            this.f55175a.l(this.f55176b);
            if (this.f55176b.C() != 0 || this.f55177c == null) {
                return;
            }
            this.f55175a.o(null);
            this.f55177c.g(null);
        }
    }

    class b implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f55178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bv.a f55179b;

        b(bv.a aVar) {
            this.f55179b = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (this.f55178a) {
                return;
            }
            this.f55178a = true;
            this.f55179b.g(exc);
        }
    }

    class c implements bv.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55180a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ByteBufferList f55181b = new ByteBufferList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.transsion.transfer.androidasync.util.a f55182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ s f55183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ InputStream f55184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f55185f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ bv.a f55186g;

        c(s sVar, InputStream inputStream, long j11, bv.a aVar) {
            this.f55183d = sVar;
            this.f55184e = inputStream;
            this.f55185f = j11;
            this.f55186g = aVar;
            this.f55182c = new com.transsion.transfer.androidasync.util.a().d((int) Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, j11));
        }

        private void b() {
            this.f55183d.p(null);
            this.f55183d.o(null);
            this.f55181b.B();
            com.transsion.transfer.androidasync.util.d.a(this.f55184e);
        }

        @Override // bv.j
        public void a() {
            do {
                try {
                    if (!this.f55181b.r()) {
                        ByteBuffer byteBufferA = this.f55182c.a();
                        int i11 = this.f55184e.read(byteBufferA.array(), 0, (int) Math.min(this.f55185f - ((long) this.f55180a), byteBufferA.capacity()));
                        if (i11 != -1 && this.f55180a != this.f55185f) {
                            this.f55182c.e(i11);
                            this.f55180a += i11;
                            byteBufferA.position(0);
                            byteBufferA.limit(i11);
                            this.f55181b.a(byteBufferA);
                        }
                        b();
                        this.f55186g.g(null);
                        return;
                    }
                    this.f55183d.l(this.f55181b);
                } catch (Exception e11) {
                    b();
                    this.f55186g.g(e11);
                    return;
                }
            } while (!this.f55181b.r());
        }
    }

    class d implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f55187a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bv.a f55188b;

        d(bv.a aVar) {
            this.f55188b = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (this.f55187a) {
                return;
            }
            this.f55187a = true;
            this.f55188b.g(exc);
        }
    }

    class e implements bv.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55189a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ByteBufferList f55190b = new ByteBufferList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.transsion.transfer.androidasync.util.a f55191c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ s f55192d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ InputStream f55193e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f55194f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ bv.a f55195g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ bv.e f55196h;

        e(s sVar, InputStream inputStream, long j11, bv.a aVar, bv.e eVar) {
            this.f55192d = sVar;
            this.f55193e = inputStream;
            this.f55194f = j11;
            this.f55195g = aVar;
            this.f55196h = eVar;
            this.f55191c = new com.transsion.transfer.androidasync.util.a().d((int) Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, j11));
        }

        private void b() {
            this.f55192d.p(null);
            this.f55192d.o(null);
            this.f55190b.B();
            com.transsion.transfer.androidasync.util.d.a(this.f55193e);
        }

        @Override // bv.j
        public void a() {
            do {
                try {
                    if (!this.f55190b.r()) {
                        ByteBuffer byteBufferA = this.f55191c.a();
                        int i11 = this.f55193e.read(byteBufferA.array(), 0, (int) Math.min(this.f55194f - ((long) this.f55189a), byteBufferA.capacity()));
                        if (i11 != -1 && this.f55189a != this.f55194f) {
                            this.f55191c.e(i11);
                            int i12 = this.f55189a + i11;
                            this.f55189a = i12;
                            bv.e eVar = this.f55196h;
                            if (eVar != null) {
                                eVar.a(i12, this.f55194f);
                            }
                            byteBufferA.position(0);
                            byteBufferA.limit(i11);
                            this.f55190b.a(byteBufferA);
                        }
                        b();
                        this.f55195g.g(null);
                        bv.e eVar2 = this.f55196h;
                        if (eVar2 != null) {
                            eVar2.b(null);
                            return;
                        }
                        return;
                    }
                    this.f55192d.l(this.f55190b);
                } catch (Exception e11) {
                    b();
                    this.f55195g.g(e11);
                    bv.e eVar3 = this.f55196h;
                    if (eVar3 != null) {
                        eVar3.b(e11);
                        return;
                    }
                    return;
                }
            } while (!this.f55190b.r());
        }
    }

    class f implements bv.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f55197a;

        f(s sVar) {
            this.f55197a = sVar;
        }

        @Override // bv.d
        public void F(p pVar, ByteBufferList byteBufferList) {
            this.f55197a.l(byteBufferList);
            if (byteBufferList.C() > 0) {
                pVar.pause();
            }
        }
    }

    class g implements bv.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f55198a;

        g(p pVar) {
            this.f55198a = pVar;
        }

        @Override // bv.j
        public void a() {
            this.f55198a.resume();
        }
    }

    class h implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f55199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f55200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ s f55201c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ bv.a f55202d;

        h(p pVar, s sVar, bv.a aVar) {
            this.f55200b = pVar;
            this.f55201c = sVar;
            this.f55202d = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (this.f55199a) {
                return;
            }
            this.f55199a = true;
            this.f55200b.t(null);
            this.f55200b.s(null);
            this.f55201c.p(null);
            this.f55201c.o(null);
            this.f55202d.g(exc);
        }
    }

    class i implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.a f55203a;

        i(bv.a aVar) {
            this.f55203a = aVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (exc == null) {
                exc = new IOException("sink was closed before emitter ended");
            }
            this.f55203a.g(exc);
        }
    }

    public static void a(p pVar, ByteBufferList byteBufferList) {
        int iC;
        bv.d dVarI = null;
        while (!pVar.isPaused() && (dVarI = pVar.I()) != null && (iC = byteBufferList.C()) > 0) {
            dVarI.F(pVar, byteBufferList);
            if (iC == byteBufferList.C() && dVarI == pVar.I() && !pVar.isPaused()) {
                System.out.println("handler: " + dVarI);
                byteBufferList.B();
                if (!f55174a) {
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                }
                return;
            }
        }
        if (byteBufferList.C() == 0 || pVar.isPaused()) {
            return;
        }
        PrintStream printStream = System.out;
        printStream.println("handler: " + dVarI);
        printStream.println("emitter: " + pVar);
        byteBufferList.B();
    }

    public static void b(bv.a aVar, Exception exc) {
        if (aVar != null) {
            aVar.g(exc);
        }
    }

    public static void c(p pVar, s sVar, bv.a aVar) {
        pVar.t(new f(sVar));
        sVar.o(new g(pVar));
        h hVar = new h(pVar, sVar, aVar);
        pVar.s(hVar);
        sVar.p(new i(hVar));
    }

    public static void d(InputStream inputStream, long j11, s sVar, bv.a aVar) {
        b bVar = new b(aVar);
        c cVar = new c(sVar, inputStream, j11, bVar);
        sVar.o(cVar);
        sVar.p(bVar);
        cVar.a();
    }

    public static void e(InputStream inputStream, long j11, s sVar, bv.a aVar, bv.e eVar) {
        d dVar = new d(aVar);
        e eVar2 = new e(sVar, inputStream, j11, dVar, eVar);
        sVar.o(eVar2);
        sVar.p(dVar);
        eVar2.a();
    }

    public static void f(InputStream inputStream, s sVar, bv.a aVar) {
        d(inputStream, 2147483647L, sVar, aVar);
    }

    public static void g(s sVar, ByteBufferList byteBufferList, bv.a aVar) {
        a aVar2 = new a(sVar, byteBufferList, aVar);
        sVar.o(aVar2);
        aVar2.a();
    }

    public static void h(s sVar, byte[] bArr, bv.a aVar) {
        ByteBuffer byteBufferT = ByteBufferList.t(bArr.length);
        byteBufferT.put(bArr);
        byteBufferT.flip();
        ByteBufferList byteBufferList = new ByteBufferList();
        byteBufferList.a(byteBufferT);
        g(sVar, byteBufferList, aVar);
    }
}
