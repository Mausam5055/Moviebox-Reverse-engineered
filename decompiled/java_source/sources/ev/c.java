package ev;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.w;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes7.dex */
public class c extends d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f62019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected CRC32 f62020j;

    class a implements w.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f62021a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f62022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ p f62023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ w f62024d;

        /* JADX INFO: renamed from: ev.c$a$a, reason: collision with other inner class name */
        class C0748a implements w.j {

            /* JADX INFO: renamed from: ev.c$a$a$a, reason: collision with other inner class name */
            class C0749a implements w.j {
                C0749a() {
                }

                @Override // com.transsion.transfer.androidasync.w.j
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public void a(byte[] bArr) {
                    a aVar = a.this;
                    if (aVar.f62022b) {
                        c.this.f62020j.update(bArr, 0, bArr.length);
                    }
                    a.this.e();
                }
            }

            C0748a() {
            }

            @Override // com.transsion.transfer.androidasync.w.j
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void a(byte[] bArr) {
                a aVar = a.this;
                if (aVar.f62022b) {
                    c.this.f62020j.update(bArr, 0, 2);
                }
                a.this.f62024d.b(c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN) & 65535, new C0749a());
            }
        }

        class b implements bv.d {
            b() {
            }

            @Override // bv.d
            public void F(p pVar, ByteBufferList byteBufferList) {
                if (a.this.f62022b) {
                    while (byteBufferList.E() > 0) {
                        ByteBuffer byteBufferD = byteBufferList.D();
                        c.this.f62020j.update(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                        ByteBufferList.A(byteBufferD);
                    }
                }
                byteBufferList.B();
                a.this.d();
            }
        }

        /* JADX INFO: renamed from: ev.c$a$c, reason: collision with other inner class name */
        class C0750c implements w.j {
            C0750c() {
            }

            @Override // com.transsion.transfer.androidasync.w.j
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void a(byte[] bArr) {
                if (((short) c.this.f62020j.getValue()) != c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN)) {
                    c.this.M(new IOException("CRC mismatch"));
                    return;
                }
                c.this.f62020j.reset();
                a aVar = a.this;
                c cVar = c.this;
                cVar.f62019i = false;
                cVar.N(aVar.f62023c);
            }
        }

        a(p pVar, w wVar) {
            this.f62023c = pVar;
            this.f62024d = wVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            if (this.f62022b) {
                this.f62024d.b(2, new C0750c());
                return;
            }
            c cVar = c.this;
            cVar.f62019i = false;
            cVar.N(this.f62023c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            w wVar = new w(this.f62023c);
            b bVar = new b();
            int i11 = this.f62021a;
            if ((i11 & 8) != 0) {
                wVar.c((byte) 0, bVar);
            } else if ((i11 & 16) != 0) {
                wVar.c((byte) 0, bVar);
            } else {
                d();
            }
        }

        @Override // com.transsion.transfer.androidasync.w.j
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(byte[] bArr) {
            short sO = c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN);
            if (sO != -29921) {
                c.this.M(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", Short.valueOf(sO))));
                this.f62023c.t(new bv.d.a());
                return;
            }
            byte b11 = bArr[3];
            this.f62021a = b11;
            boolean z10 = (b11 & 2) != 0;
            this.f62022b = z10;
            if (z10) {
                c.this.f62020j.update(bArr, 0, bArr.length);
            }
            if ((this.f62021a & 4) != 0) {
                this.f62024d.b(2, new C0748a());
            } else {
                e();
            }
        }
    }

    public c() {
        super(new Inflater(true));
        this.f62019i = true;
        this.f62020j = new CRC32();
    }

    static short O(byte[] bArr, int i11, ByteOrder byteOrder) {
        int i12;
        byte b11;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i12 = bArr[i11] << 8;
            b11 = bArr[i11 + 1];
        } else {
            i12 = bArr[i11 + 1] << 8;
            b11 = bArr[i11];
        }
        return (short) ((b11 & 255) | i12);
    }

    @Override // ev.d, com.transsion.transfer.androidasync.t, bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        if (!this.f62019i) {
            super.F(pVar, byteBufferList);
        } else {
            w wVar = new w(pVar);
            wVar.b(10, new a(pVar, wVar));
        }
    }
}
