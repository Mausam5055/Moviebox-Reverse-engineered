package com.tencent.tinker.android.dex;

import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.RandomAccess;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes5.dex */
public final class j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final short[] f40612n = new short[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f40613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f40614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final C0582j f40615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f40616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f40617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f40618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f f40619g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f40620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final e f40621i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c f40622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ByteBuffer f40623k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f40624l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f40625m;

    private final class b extends AbstractList implements RandomAccess {
        private b() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.tencent.tinker.android.dex.e get(int i11) {
            j.d(i11, j.this.f40613a.f40661h.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40661h.f40683d + (i11 * 4)).m();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40661h.f40682c;
        }
    }

    private final class c extends AbstractList implements RandomAccess {
        private c() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.tencent.tinker.android.dex.g get(int i11) {
            j.d(i11, j.this.f40613a.f40660g.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40660g.f40683d + (i11 * 32)).q();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40660g.f40682c;
        }
    }

    private final class d extends AbstractList implements RandomAccess {
        private d() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public o get(int i11) {
            j.d(i11, j.this.f40613a.f40658e.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40658e.f40683d + (i11 * 8)).u();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40658e.f40682c;
        }
    }

    private final class e extends AbstractList implements RandomAccess {
        private e() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MethodHandle get(int i11) {
            j.d(i11, j.this.f40613a.f40662i.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40662i.f40683d + (i11 * 8)).x();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40662i.f40682c;
        }
    }

    private final class f extends AbstractList implements RandomAccess {
        private f() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q get(int i11) {
            j.d(i11, j.this.f40613a.f40659f.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40659f.f40683d + (i11 * 8)).y();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40659f.f40682c;
        }
    }

    private final class g extends AbstractList implements RandomAccess {
        private g() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s get(int i11) {
            j.d(i11, j.this.f40613a.f40657d.f40682c);
            j jVar = j.this;
            return jVar.l(jVar.f40613a.f40657d.f40683d + (i11 * 12)).A();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40657d.f40682c;
        }
    }

    public final class h extends ff.a {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f40632g;

        private h(String str, ByteBuffer byteBuffer) {
            super(byteBuffer);
            this.f40632g = str;
        }

        private void p0(v.a aVar, boolean z10) {
            if (aVar.f40681b) {
                if (z10) {
                    b();
                } else {
                    a();
                }
            }
        }

        @Override // ff.a
        public s A() {
            p0(j.this.f40613a.f40657d, false);
            return super.A();
        }

        @Override // ff.a
        public u E() {
            p0(j.this.f40613a.f40669p, false);
            return super.E();
        }

        @Override // ff.a
        public w G() {
            p0(j.this.f40613a.f40664k, false);
            return super.G();
        }

        @Override // ff.a
        public int O(com.tencent.tinker.android.dex.a aVar) {
            p0(j.this.f40613a.f40671r, true);
            return super.O(aVar);
        }

        @Override // ff.a
        public int P(com.tencent.tinker.android.dex.b bVar) {
            p0(j.this.f40613a.f40666m, true);
            return super.P(bVar);
        }

        @Override // ff.a
        public int Q(com.tencent.tinker.android.dex.c cVar) {
            p0(j.this.f40613a.f40665l, true);
            return super.Q(cVar);
        }

        @Override // ff.a
        public int R(com.tencent.tinker.android.dex.d dVar) {
            p0(j.this.f40613a.f40673t, true);
            return super.R(dVar);
        }

        @Override // ff.a
        public int V(com.tencent.tinker.android.dex.f fVar) {
            p0(j.this.f40613a.f40667n, true);
            return super.V(fVar);
        }

        @Override // ff.a
        public int W(com.tencent.tinker.android.dex.g gVar) {
            p0(j.this.f40613a.f40660g, true);
            return super.W(gVar);
        }

        @Override // ff.a
        public int X(com.tencent.tinker.android.dex.h hVar) {
            p0(j.this.f40613a.f40668o, true);
            return super.X(hVar);
        }

        @Override // ff.a
        public int Y(com.tencent.tinker.android.dex.i iVar) {
            p0(j.this.f40613a.f40670q, true);
            return super.Y(iVar);
        }

        @Override // ff.a
        public int Z(l lVar) {
            p0(j.this.f40613a.f40672s, true);
            return super.Z(lVar);
        }

        @Override // ff.a
        public int a0(o oVar) {
            p0(j.this.f40613a.f40658e, true);
            return super.a0(oVar);
        }

        @Override // ff.a
        public int e0(q qVar) {
            p0(j.this.f40613a.f40659f, true);
            return super.e0(qVar);
        }

        @Override // ff.a
        public int g0(s sVar) {
            p0(j.this.f40613a.f40657d, true);
            return super.g0(sVar);
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.a h() {
            p0(j.this.f40613a.f40671r, false);
            return super.h();
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.b i() {
            p0(j.this.f40613a.f40666m, false);
            return super.i();
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.c j() {
            p0(j.this.f40613a.f40665l, false);
            return super.j();
        }

        @Override // ff.a
        public int j0(u uVar) {
            p0(j.this.f40613a.f40669p, true);
            return super.j0(uVar);
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.d k() {
            p0(j.this.f40613a.f40673t, false);
            return super.k();
        }

        @Override // ff.a
        public int l0(w wVar) {
            p0(j.this.f40613a.f40664k, true);
            return super.l0(wVar);
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.f p() {
            p0(j.this.f40613a.f40667n, false);
            return super.p();
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.g q() {
            p0(j.this.f40613a.f40660g, false);
            return super.q();
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.h r() {
            p0(j.this.f40613a.f40668o, false);
            return super.r();
        }

        @Override // ff.a
        public com.tencent.tinker.android.dex.i s() {
            p0(j.this.f40613a.f40670q, false);
            return super.s();
        }

        @Override // ff.a
        public l t() {
            p0(j.this.f40613a.f40672s, false);
            return super.t();
        }

        @Override // ff.a
        public o u() {
            p0(j.this.f40613a.f40658e, false);
            return super.u();
        }

        @Override // ff.a
        public q y() {
            p0(j.this.f40613a.f40659f, false);
            return super.y();
        }
    }

    private final class i extends AbstractList implements RandomAccess {
        private i() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String get(int i11) {
            j.d(i11, j.this.f40613a.f40655b.f40682c);
            j jVar = j.this;
            return j.this.l(jVar.l(jVar.f40613a.f40655b.f40683d + (i11 * 4)).w()).E().f40653b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40655b.f40682c;
        }
    }

    /* JADX INFO: renamed from: com.tencent.tinker.android.dex.j$j, reason: collision with other inner class name */
    private final class C0582j extends AbstractList implements RandomAccess {
        private C0582j() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(int i11) {
            return Integer.valueOf(j.this.g(i11));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40656c.f40682c;
        }
    }

    private final class k extends AbstractList implements RandomAccess {
        private k() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String get(int i11) {
            return j.this.f40614b.get(j.this.g(i11));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return j.this.f40613a.f40656c.f40682c;
        }
    }

    public j(int i11) {
        v vVar = new v();
        this.f40613a = vVar;
        this.f40614b = new i();
        this.f40615c = new C0582j();
        this.f40616d = new k();
        this.f40617e = new g();
        this.f40618f = new d();
        this.f40619g = new f();
        this.f40620h = new b();
        this.f40621i = new e();
        this.f40622j = new c();
        this.f40624l = 0;
        this.f40625m = null;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[i11]);
        this.f40623k = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        vVar.f40678y = i11;
    }

    public j(InputStream inputStream) {
        this.f40613a = new v();
        this.f40614b = new i();
        this.f40615c = new C0582j();
        this.f40616d = new k();
        this.f40617e = new g();
        this.f40618f = new d();
        this.f40619g = new f();
        this.f40620h = new b();
        this.f40621i = new e();
        this.f40622j = new c();
        this.f40624l = 0;
        this.f40625m = null;
        j(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(int i11, int i12) {
        if (i11 < 0 || i11 >= i12) {
            throw new IndexOutOfBoundsException("index:" + i11 + ", length=" + i12);
        }
    }

    private void j(InputStream inputStream) {
        k(inputStream, 0);
    }

    private void k(InputStream inputStream, int i11) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(gf.d.b(inputStream, i11));
        this.f40623k = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        this.f40613a.c(this);
    }

    public int e() {
        Adler32 adler32 = new Adler32();
        byte[] bArr = new byte[8192];
        ByteBuffer byteBufferDuplicate = this.f40623k.duplicate();
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            adler32.update(bArr, 0, iMin);
        }
        return (int) adler32.getValue();
    }

    public byte[] f(boolean z10) {
        byte[] bArr = this.f40625m;
        if (bArr != null && !z10) {
            return bArr;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1);
            byte[] bArr2 = new byte[8192];
            ByteBuffer byteBufferDuplicate = this.f40623k.duplicate();
            while (byteBufferDuplicate.hasRemaining()) {
                int iMin = Math.min(8192, byteBufferDuplicate.remaining());
                byteBufferDuplicate.get(bArr2, 0, iMin);
                messageDigest.update(bArr2, 0, iMin);
            }
            byte[] bArrDigest = messageDigest.digest();
            this.f40625m = bArrDigest;
            return bArrDigest;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public int g(int i11) {
        d(i11, this.f40613a.f40656c.f40682c);
        return this.f40623k.getInt(this.f40613a.f40656c.f40683d + (i11 * 4));
    }

    public v h() {
        return this.f40613a;
    }

    public short[] i(com.tencent.tinker.android.dex.g gVar) {
        int i11 = gVar.f40590e;
        if (i11 == 0) {
            return f40612n;
        }
        int i12 = this.f40623k.getInt(i11);
        if (i12 <= 0) {
            throw new AssertionError("Unexpected interfaces list size: " + i12);
        }
        int i13 = i11 + 4;
        short[] sArr = new short[i12];
        for (int i14 = 0; i14 < i12; i14++) {
            sArr[i14] = this.f40623k.getShort(i13);
            i13 += 2;
        }
        return sArr;
    }

    public h l(int i11) {
        if (i11 >= 0 && i11 < this.f40623k.capacity()) {
            ByteBuffer byteBufferDuplicate = this.f40623k.duplicate();
            byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
            return new h("temp-section", byteBufferDuplicate);
        }
        throw new IllegalArgumentException("position=" + i11 + " length=" + this.f40623k.capacity());
    }

    public h m(v.a aVar) {
        int i11 = aVar.f40683d;
        if (i11 >= 0 && i11 < this.f40623k.capacity()) {
            ByteBuffer byteBufferDuplicate = this.f40623k.duplicate();
            byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
            return new h("section", byteBufferDuplicate);
        }
        throw new IllegalArgumentException("position=" + i11 + " length=" + this.f40623k.capacity());
    }

    public void n() {
        l(12).M(f(true));
        l(8).c0(e());
    }

    public void o(OutputStream outputStream) throws IOException {
        outputStream.write(this.f40623k.array());
        outputStream.flush();
    }
}
