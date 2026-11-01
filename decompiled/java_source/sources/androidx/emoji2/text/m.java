package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
abstract class m {

    private static class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f9127a;

        a(ByteBuffer byteBuffer) {
            this.f9127a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.m.c
        public int a() {
            return this.f9127a.getInt();
        }

        @Override // androidx.emoji2.text.m.c
        public long b() {
            return m.c(this.f9127a.getInt());
        }

        @Override // androidx.emoji2.text.m.c
        public long getPosition() {
            return this.f9127a.position();
        }

        @Override // androidx.emoji2.text.m.c
        public int readUnsignedShort() {
            return m.d(this.f9127a.getShort());
        }

        @Override // androidx.emoji2.text.m.c
        public void skip(int i11) {
            ByteBuffer byteBuffer = this.f9127a;
            byteBuffer.position(byteBuffer.position() + i11);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f9128a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f9129b;

        b(long j11, long j12) {
            this.f9128a = j11;
            this.f9129b = j12;
        }

        long a() {
            return this.f9128a;
        }
    }

    private interface c {
        int a();

        long b();

        long getPosition();

        int readUnsignedShort();

        void skip(int i11);
    }

    private static b a(c cVar) throws IOException {
        long jB;
        cVar.skip(4);
        int unsignedShort = cVar.readUnsignedShort();
        if (unsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        cVar.skip(6);
        int i11 = 0;
        while (true) {
            if (i11 >= unsignedShort) {
                jB = -1;
                break;
            }
            int iA = cVar.a();
            cVar.skip(4);
            jB = cVar.b();
            cVar.skip(4);
            if (1835365473 == iA) {
                break;
            }
            i11++;
        }
        if (jB != -1) {
            cVar.skip((int) (jB - cVar.getPosition()));
            cVar.skip(12);
            long jB2 = cVar.b();
            for (int i12 = 0; i12 < jB2; i12++) {
                int iA2 = cVar.a();
                long jB3 = cVar.b();
                long jB4 = cVar.b();
                if (1164798569 == iA2 || 1701669481 == iA2) {
                    return new b(jB3 + jB, jB4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    static androidx.emoji2.text.flatbuffer.c b(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) a(new a(byteBufferDuplicate)).a());
        return androidx.emoji2.text.flatbuffer.c.i(byteBufferDuplicate);
    }

    static long c(int i11) {
        return ((long) i11) & 4294967295L;
    }

    static int d(short s11) {
        return s11 & 65535;
    }
}
