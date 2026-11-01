package f3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.List;
import l2.l0;

/* JADX INFO: loaded from: classes2.dex */
final class q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final com.google.common.base.o f62282d = com.google.common.base.o.f(':');

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.google.common.base.o f62283e = com.google.common.base.o.f('*');

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f62284a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f62285b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f62286c;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f62288b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f62289c;

        public a(int i11, long j11, int i12) {
            this.f62287a = i11;
            this.f62288b = j11;
            this.f62289c = i12;
        }
    }

    private void a(l2.s sVar, l0 l0Var) {
        j0 j0Var = new j0(8);
        sVar.readFully(j0Var.e(), 0, 8);
        this.f62286c = j0Var.u() + 8;
        if (j0Var.q() != 1397048916) {
            l0Var.f68620a = 0L;
        } else {
            l0Var.f68620a = sVar.getPosition() - ((long) (this.f62286c - 12));
            this.f62285b = 2;
        }
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return 2192;
            case "Super_SlowMotion_Edit_Data":
                return 2819;
            case "Super_SlowMotion_Data":
                return 2816;
            case "Super_SlowMotion_Deflickering_On":
                return 2820;
            case "Super_SlowMotion_BGM":
                return 2817;
            default:
                throw ParserException.createForMalformedContainer("Invalid SEF name", null);
        }
    }

    private void d(l2.s sVar, l0 l0Var) {
        long length = sVar.getLength();
        int i11 = this.f62286c - 20;
        j0 j0Var = new j0(i11);
        sVar.readFully(j0Var.e(), 0, i11);
        for (int i12 = 0; i12 < i11 / 12; i12++) {
            j0Var.X(2);
            short sW = j0Var.w();
            if (sW == 2192 || sW == 2816 || sW == 2817 || sW == 2819 || sW == 2820) {
                this.f62284a.add(new a(sW, (length - ((long) this.f62286c)) - ((long) j0Var.u()), j0Var.u()));
            } else {
                j0Var.X(8);
            }
        }
        if (this.f62284a.isEmpty()) {
            l0Var.f68620a = 0L;
        } else {
            this.f62285b = 3;
            l0Var.f68620a = ((a) this.f62284a.get(0)).f62288b;
        }
    }

    private void e(l2.s sVar, List list) throws ParserException {
        long position = sVar.getPosition();
        int length = (int) ((sVar.getLength() - sVar.getPosition()) - ((long) this.f62286c));
        j0 j0Var = new j0(length);
        sVar.readFully(j0Var.e(), 0, length);
        for (int i11 = 0; i11 < this.f62284a.size(); i11++) {
            a aVar = (a) this.f62284a.get(i11);
            j0Var.W((int) (aVar.f62288b - position));
            j0Var.X(4);
            int iU = j0Var.u();
            int iB = b(j0Var.E(iU));
            int i12 = aVar.f62289c - (iU + 8);
            if (iB == 2192) {
                list.add(f(j0Var, i12));
            } else if (iB != 2816 && iB != 2817 && iB != 2819 && iB != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static a3.c f(j0 j0Var, int i11) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List listI = f62283e.i(j0Var.E(i11));
        for (int i12 = 0; i12 < listI.size(); i12++) {
            List listI2 = f62282d.i((CharSequence) listI.get(i12));
            if (listI2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new a3.c.a(Long.parseLong((String) listI2.get(0)), Long.parseLong((String) listI2.get(1)), 1 << (Integer.parseInt((String) listI2.get(2)) - 1)));
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedContainer(null, e11);
            }
        }
        return new a3.c(arrayList);
    }

    public int c(l2.s sVar, l0 l0Var, List list) throws ParserException {
        int i11 = this.f62285b;
        long j11 = 0;
        if (i11 == 0) {
            long length = sVar.getLength();
            if (length != -1 && length >= 8) {
                j11 = length - 8;
            }
            l0Var.f68620a = j11;
            this.f62285b = 1;
        } else if (i11 == 1) {
            a(sVar, l0Var);
        } else if (i11 == 2) {
            d(sVar, l0Var);
        } else {
            if (i11 != 3) {
                throw new IllegalStateException();
            }
            e(sVar, list);
            l0Var.f68620a = 0L;
        }
        return 1;
    }

    public void g() {
        this.f62284a.clear();
        this.f62285b = 0;
    }
}
