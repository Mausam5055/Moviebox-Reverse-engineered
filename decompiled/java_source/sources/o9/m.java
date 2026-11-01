package o9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.d0;
import g9.a0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final com.google.common.base.o f70867d = com.google.common.base.o.f(':');

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.google.common.base.o f70868e = com.google.common.base.o.f('*');

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f70869a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70870b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70871c;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f70872a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f70873b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70874c;

        public a(int i11, long j11, int i12) {
            this.f70872a = i11;
            this.f70873b = j11;
            this.f70874c = i12;
        }
    }

    private void a(g9.m mVar, a0 a0Var) {
        d0 d0Var = new d0(8);
        mVar.readFully(d0Var.d(), 0, 8);
        this.f70871c = d0Var.q() + 8;
        if (d0Var.n() != 1397048916) {
            a0Var.f63369a = 0L;
        } else {
            a0Var.f63369a = mVar.getPosition() - ((long) (this.f70871c - 12));
            this.f70870b = 2;
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

    private void d(g9.m mVar, a0 a0Var) {
        long length = mVar.getLength();
        int i11 = this.f70871c - 20;
        d0 d0Var = new d0(i11);
        mVar.readFully(d0Var.d(), 0, i11);
        for (int i12 = 0; i12 < i11 / 12; i12++) {
            d0Var.Q(2);
            short s11 = d0Var.s();
            if (s11 == 2192 || s11 == 2816 || s11 == 2817 || s11 == 2819 || s11 == 2820) {
                this.f70869a.add(new a(s11, (length - ((long) this.f70871c)) - ((long) d0Var.q()), d0Var.q()));
            } else {
                d0Var.Q(8);
            }
        }
        if (this.f70869a.isEmpty()) {
            a0Var.f63369a = 0L;
        } else {
            this.f70870b = 3;
            a0Var.f63369a = ((a) this.f70869a.get(0)).f70873b;
        }
    }

    private void e(g9.m mVar, List list) throws ParserException {
        long position = mVar.getPosition();
        int length = (int) ((mVar.getLength() - mVar.getPosition()) - ((long) this.f70871c));
        d0 d0Var = new d0(length);
        mVar.readFully(d0Var.d(), 0, length);
        for (int i11 = 0; i11 < this.f70869a.size(); i11++) {
            a aVar = (a) this.f70869a.get(i11);
            d0Var.P((int) (aVar.f70873b - position));
            d0Var.Q(4);
            int iQ = d0Var.q();
            int iB = b(d0Var.A(iQ));
            int i12 = aVar.f70874c - (iQ + 8);
            if (iB == 2192) {
                list.add(f(d0Var, i12));
            } else if (iB != 2816 && iB != 2817 && iB != 2819 && iB != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static SlowMotionData f(d0 d0Var, int i11) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List listI = f70868e.i(d0Var.A(i11));
        for (int i12 = 0; i12 < listI.size(); i12++) {
            List listI2 = f70867d.i((CharSequence) listI.get(i12));
            if (listI2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong((String) listI2.get(0)), Long.parseLong((String) listI2.get(1)), 1 << (Integer.parseInt((String) listI2.get(2)) - 1)));
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedContainer(null, e11);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(g9.m mVar, a0 a0Var, List list) throws ParserException {
        int i11 = this.f70870b;
        long j11 = 0;
        if (i11 == 0) {
            long length = mVar.getLength();
            if (length != -1 && length >= 8) {
                j11 = length - 8;
            }
            a0Var.f63369a = j11;
            this.f70870b = 1;
        } else if (i11 == 1) {
            a(mVar, a0Var);
        } else if (i11 == 2) {
            d(mVar, a0Var);
        } else {
            if (i11 != 3) {
                throw new IllegalStateException();
            }
            e(mVar, list);
            a0Var.f63369a = 0L;
        }
        return 1;
    }

    public void g() {
        this.f70869a.clear();
        this.f70870b = 0;
    }
}
