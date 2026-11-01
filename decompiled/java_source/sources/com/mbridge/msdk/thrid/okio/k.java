package com.mbridge.msdk.thrid.okio;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f38447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f38448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f38450d;

    k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f38447a = eVar;
        this.f38448b = inflater;
    }

    private void h() throws IOException {
        int i11 = this.f38449c;
        if (i11 == 0) {
            return;
        }
        int remaining = i11 - this.f38448b.getRemaining();
        this.f38449c -= remaining;
        this.f38447a.skip(remaining);
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j11) throws IOException {
        boolean zD;
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (this.f38450d) {
            throw new IllegalStateException("closed");
        }
        if (j11 == 0) {
            return 0L;
        }
        do {
            zD = d();
            try {
                o oVarB = cVar.b(1);
                int iInflate = this.f38448b.inflate(oVarB.f38464a, oVarB.f38466c, (int) Math.min(j11, 8192 - oVarB.f38466c));
                if (iInflate > 0) {
                    oVarB.f38466c += iInflate;
                    long j12 = iInflate;
                    cVar.f38432b += j12;
                    return j12;
                }
                if (!this.f38448b.finished() && !this.f38448b.needsDictionary()) {
                }
                h();
                if (oVarB.f38465b != oVarB.f38466c) {
                    return -1L;
                }
                cVar.f38431a = oVarB.b();
                p.a(oVarB);
                return -1L;
            } catch (DataFormatException e11) {
                throw new IOException(e11);
            }
        } while (!zD);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f38447a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f38450d) {
            return;
        }
        this.f38448b.end();
        this.f38450d = true;
        this.f38447a.close();
    }

    public final boolean d() throws IOException {
        if (!this.f38448b.needsInput()) {
            return false;
        }
        h();
        if (this.f38448b.getRemaining() != 0) {
            throw new IllegalStateException(UrlUtils.QUESTION_MARK);
        }
        if (this.f38447a.f()) {
            return true;
        }
        o oVar = this.f38447a.a().f38431a;
        int i11 = oVar.f38466c;
        int i12 = oVar.f38465b;
        int i13 = i11 - i12;
        this.f38449c = i13;
        this.f38448b.setInput(oVar.f38464a, i12, i13);
        return false;
    }
}
