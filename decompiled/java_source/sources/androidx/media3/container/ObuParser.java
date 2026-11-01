package androidx.media3.container;

import androidx.media3.common.util.i0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ObuParser {

    private static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f10569a;

        private b(d dVar, c cVar) throws NotYetImplementedException {
            int i11 = cVar.f10570a;
            androidx.media3.common.util.a.a(i11 == 6 || i11 == 3);
            byte[] bArr = new byte[Math.min(4, cVar.f10571b.remaining())];
            cVar.f10571b.asReadOnlyBuffer().get(bArr);
            i0 i0Var = new i0(bArr);
            ObuParser.f(dVar.f10572a);
            if (i0Var.g()) {
                this.f10569a = false;
                return;
            }
            int iH = i0Var.h(2);
            boolean zG = i0Var.g();
            ObuParser.f(dVar.f10573b);
            if (!zG) {
                this.f10569a = true;
                return;
            }
            boolean zG2 = (iH == 3 || iH == 0) ? true : i0Var.g();
            i0Var.q();
            ObuParser.f(!dVar.f10575d);
            if (i0Var.g()) {
                ObuParser.f(!dVar.f10576e);
                i0Var.q();
            }
            ObuParser.f(dVar.f10574c);
            if (iH != 3) {
                i0Var.q();
            }
            i0Var.r(dVar.f10577f);
            if (iH != 2 && iH != 0 && !zG2) {
                i0Var.r(3);
            }
            this.f10569a = ((iH == 3 || iH == 0) ? 255 : i0Var.h(8)) != 0;
        }

        public static b b(d dVar, c cVar) {
            try {
                return new b(dVar, cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public boolean a() {
            return this.f10569a;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteBuffer f10571b;

        private c(int i11, ByteBuffer byteBuffer) {
            this.f10570a = i11;
            this.f10571b = byteBuffer;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f10572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f10573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10574c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f10575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f10576e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10577f;

        private d(c cVar) throws NotYetImplementedException {
            androidx.media3.common.util.a.a(cVar.f10570a == 1);
            byte[] bArr = new byte[cVar.f10571b.remaining()];
            cVar.f10571b.asReadOnlyBuffer().get(bArr);
            i0 i0Var = new i0(bArr);
            i0Var.r(4);
            boolean zG = i0Var.g();
            this.f10572a = zG;
            ObuParser.f(zG);
            if (i0Var.g()) {
                b(i0Var);
                boolean zG2 = i0Var.g();
                this.f10573b = zG2;
                if (zG2) {
                    i0Var.r(47);
                }
            } else {
                this.f10573b = false;
            }
            boolean zG3 = i0Var.g();
            int iH = i0Var.h(5);
            for (int i11 = 0; i11 <= iH; i11++) {
                i0Var.r(12);
                if (i0Var.h(5) > 7) {
                    i0Var.q();
                }
                ObuParser.f(this.f10573b);
                if (zG3 && i0Var.g()) {
                    i0Var.r(4);
                }
            }
            int iH2 = i0Var.h(4);
            int iH3 = i0Var.h(4);
            i0Var.r(iH2 + 1);
            i0Var.r(iH3 + 1);
            boolean zG4 = i0Var.g();
            this.f10574c = zG4;
            ObuParser.f(zG4);
            i0Var.r(3);
            i0Var.r(4);
            boolean zG5 = i0Var.g();
            if (zG5) {
                i0Var.r(2);
            }
            if (i0Var.g()) {
                this.f10575d = true;
            } else {
                this.f10575d = i0Var.g();
            }
            if (!this.f10575d || i0Var.g()) {
                this.f10576e = true;
            } else {
                this.f10576e = i0Var.g();
            }
            if (zG5) {
                this.f10577f = i0Var.h(3) + 1;
            } else {
                this.f10577f = 0;
            }
        }

        public static d a(c cVar) {
            try {
                return new d(cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private static void b(i0 i0Var) {
            i0Var.r(64);
            if (i0Var.g()) {
                ObuParser.d(i0Var);
            }
        }
    }

    private static int c(ByteBuffer byteBuffer) {
        int i11 = 0;
        for (int i12 = 0; i12 < 8; i12++) {
            byte b11 = byteBuffer.get();
            i11 |= (b11 & 127) << (i12 * 7);
            if ((b11 & 128) == 0) {
                break;
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(i0 i0Var) {
        int i11 = 0;
        while (!i0Var.g()) {
            i11++;
        }
        if (i11 < 32) {
            i0Var.r(i11);
        }
    }

    public static List e(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b11 = byteBufferAsReadOnlyBuffer.get();
            int i11 = (b11 >> 3) & 15;
            if (((b11 >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            int iC = ((b11 >> 1) & 1) != 0 ? c(byteBufferAsReadOnlyBuffer) : byteBufferAsReadOnlyBuffer.remaining();
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iC);
            arrayList.add(new c(i11, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iC);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(boolean z10) throws NotYetImplementedException {
        if (z10) {
            throw new NotYetImplementedException();
        }
    }
}
