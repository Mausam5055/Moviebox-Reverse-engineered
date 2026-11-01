package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f40128a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final o f40129b;

        public a(long j11, o oVar) {
            this.f40128a = j11;
            this.f40129b = oVar;
        }

        public o a() {
            return this.f40129b;
        }

        public long b() {
            return this.f40128a;
        }
    }

    public static a a(o oVar, r rVar) throws b, IOException {
        long jA = rVar.a();
        long jC = rVar.c() + jA;
        long jE = rVar.e();
        if (jC != jE) {
            throw new b("ZIP Central Directory is not immediately followed by End of Central Directory. CD end: " + jC + ", EoCD start: " + jE);
        }
        if (jA < 32) {
            throw new b("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(jA)));
        }
        ByteBuffer byteBufferA = oVar.a(jA - 24, 24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferA.order(byteOrder);
        if (byteBufferA.getLong(8) != 2334950737559900225L || byteBufferA.getLong(16) != 3617552046287187010L) {
            throw new b("No APK Signing Block before ZIP Central Directory");
        }
        long j11 = byteBufferA.getLong(0);
        if (j11 < byteBufferA.capacity() || j11 > 2147483639) {
            throw new b("APK Signing Block size out of range: ".concat(String.valueOf(j11)));
        }
        long j12 = (int) (8 + j11);
        long j13 = jA - j12;
        if (j13 < 0) {
            throw new b("APK Signing Block offset out of range: ".concat(String.valueOf(j13)));
        }
        ByteBuffer byteBufferA2 = oVar.a(j13, 8);
        byteBufferA2.order(byteOrder);
        long j14 = byteBufferA2.getLong(0);
        if (j14 == j11) {
            return new a(j13, oVar.a(j13, j12));
        }
        throw new b("APK Signing Block sizes in header and footer do not match: " + j14 + " vs " + j11);
    }

    public static r a(o oVar) throws q, IOException {
        m<ByteBuffer, Long> mVarA = n.a(oVar);
        if (mVarA == null) {
            throw new q("ZIP End of Central Directory record not found");
        }
        ByteBuffer byteBufferA = mVarA.a();
        long jLongValue = mVarA.b().longValue();
        byteBufferA.order(ByteOrder.LITTLE_ENDIAN);
        long jC = n.c(byteBufferA);
        if (jC > jLongValue) {
            throw new q("ZIP Central Directory start offset out of range: " + jC + ". ZIP End of Central Directory offset: " + jLongValue);
        }
        long jD = n.d(byteBufferA);
        long j11 = jC + jD;
        if (j11 <= jLongValue) {
            return new r(jC, jD, n.e(byteBufferA), jLongValue, byteBufferA);
        }
        throw new q("ZIP Central Directory overlaps with End of Central Directory. CD end: " + j11 + ", EoCD start: " + jLongValue);
    }
}
