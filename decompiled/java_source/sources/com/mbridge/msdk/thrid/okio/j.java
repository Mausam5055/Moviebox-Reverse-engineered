package com.mbridge.msdk.thrid.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f38443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f38444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f38445d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38442a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f38446e = new CRC32();

    public j(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f38444c = inflater;
        e eVarA = l.a(sVar);
        this.f38443b = eVarA;
        this.f38445d = new k(eVarA, inflater);
    }

    private void a(c cVar, long j11, long j12) {
        o oVar = cVar.f38431a;
        while (true) {
            long j13 = oVar.f38466c - oVar.f38465b;
            if (j11 < j13) {
                break;
            }
            j11 -= j13;
            oVar = oVar.f38469f;
        }
        while (j12 > 0) {
            int i11 = (int) (((long) oVar.f38465b) + j11);
            int iMin = (int) Math.min(oVar.f38466c - i11, j12);
            this.f38446e.update(oVar.f38464a, i11, iMin);
            j12 -= (long) iMin;
            oVar = oVar.f38469f;
            j11 = 0;
        }
    }

    private void a(String str, int i11, int i12) throws IOException {
        if (i12 != i11) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i12), Integer.valueOf(i11)));
        }
    }

    private void d() throws IOException {
        this.f38443b.e(10L);
        byte bF = this.f38443b.a().f(3L);
        boolean z10 = ((bF >> 1) & 1) == 1;
        if (z10) {
            a(this.f38443b.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f38443b.readShort());
        this.f38443b.skip(8L);
        if (((bF >> 2) & 1) == 1) {
            this.f38443b.e(2L);
            if (z10) {
                a(this.f38443b.a(), 0L, 2L);
            }
            long jG = this.f38443b.a().g();
            this.f38443b.e(jG);
            if (z10) {
                a(this.f38443b.a(), 0L, jG);
            }
            this.f38443b.skip(jG);
        }
        if (((bF >> 3) & 1) == 1) {
            long jA = this.f38443b.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f38443b.a(), 0L, jA + 1);
            }
            this.f38443b.skip(jA + 1);
        }
        if (((bF >> 4) & 1) == 1) {
            long jA2 = this.f38443b.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f38443b.a(), 0L, jA2 + 1);
            }
            this.f38443b.skip(jA2 + 1);
        }
        if (z10) {
            a("FHCRC", this.f38443b.g(), (short) this.f38446e.getValue());
            this.f38446e.reset();
        }
    }

    private void h() throws IOException {
        a("CRC", this.f38443b.e(), (int) this.f38446e.getValue());
        a("ISIZE", this.f38443b.e(), (int) this.f38444c.getBytesWritten());
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j11) throws IOException {
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (j11 == 0) {
            return 0L;
        }
        if (this.f38442a == 0) {
            d();
            this.f38442a = 1;
        }
        if (this.f38442a == 1) {
            long j12 = cVar.f38432b;
            long jB = this.f38445d.b(cVar, j11);
            if (jB != -1) {
                a(cVar, j12, jB);
                return jB;
            }
            this.f38442a = 2;
        }
        if (this.f38442a == 2) {
            h();
            this.f38442a = 3;
            if (!this.f38443b.f()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f38443b.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38445d.close();
    }
}
