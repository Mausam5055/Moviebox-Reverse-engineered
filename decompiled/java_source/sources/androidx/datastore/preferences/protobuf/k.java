package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class k implements Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CodedOutputStream f8845a;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8846a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8846a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8846a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8846a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8846a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8846a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8846a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8846a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8846a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8846a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8846a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8846a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8846a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private k(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) w.b(codedOutputStream, "output");
        this.f8845a = codedOutputStream2;
        codedOutputStream2.f8675a = this;
    }

    private void A(int i11, f0 f0Var, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < f0Var.size()) {
                this.f8845a.D0(i11, f0Var.getLong(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iZ = 0;
        for (int i13 = 0; i13 < f0Var.size(); i13++) {
            iZ += CodedOutputStream.z(f0Var.getLong(i13));
        }
        this.f8845a.V0(iZ);
        while (i12 < f0Var.size()) {
            this.f8845a.E0(f0Var.getLong(i12));
            i12++;
        }
    }

    private void B(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.D0(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iZ = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iZ += CodedOutputStream.z(((Long) list.get(i13)).longValue());
        }
        this.f8845a.V0(iZ);
        while (i12 < list.size()) {
            this.f8845a.E0(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    private void C(int i11, Object obj) {
        if (obj instanceof String) {
            this.f8845a.R0(i11, (String) obj);
        } else {
            this.f8845a.l0(i11, (ByteString) obj);
        }
    }

    private void D(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.J0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iJ = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iJ += CodedOutputStream.J(vVar.getInt(i13));
        }
        this.f8845a.V0(iJ);
        while (i12 < vVar.size()) {
            this.f8845a.K0(vVar.getInt(i12));
            i12++;
        }
    }

    private void E(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.J0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iJ = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iJ += CodedOutputStream.J(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iJ);
        while (i12 < list.size()) {
            this.f8845a.K0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    private void F(int i11, f0 f0Var, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < f0Var.size()) {
                this.f8845a.L0(i11, f0Var.getLong(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iL = 0;
        for (int i13 = 0; i13 < f0Var.size(); i13++) {
            iL += CodedOutputStream.L(f0Var.getLong(i13));
        }
        this.f8845a.V0(iL);
        while (i12 < f0Var.size()) {
            this.f8845a.M0(f0Var.getLong(i12));
            i12++;
        }
    }

    private void G(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.L0(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iL = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iL += CodedOutputStream.L(((Long) list.get(i13)).longValue());
        }
        this.f8845a.V0(iL);
        while (i12 < list.size()) {
            this.f8845a.M0(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    private void H(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.N0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iN = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iN += CodedOutputStream.N(vVar.getInt(i13));
        }
        this.f8845a.V0(iN);
        while (i12 < vVar.size()) {
            this.f8845a.O0(vVar.getInt(i12));
            i12++;
        }
    }

    private void J(int i11, f0 f0Var, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < f0Var.size()) {
                this.f8845a.P0(i11, f0Var.getLong(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iP = 0;
        for (int i13 = 0; i13 < f0Var.size(); i13++) {
            iP += CodedOutputStream.P(f0Var.getLong(i13));
        }
        this.f8845a.V0(iP);
        while (i12 < f0Var.size()) {
            this.f8845a.Q0(f0Var.getLong(i12));
            i12++;
        }
    }

    private void K(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.P0(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iP = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iP += CodedOutputStream.P(((Long) list.get(i13)).longValue());
        }
        this.f8845a.V0(iP);
        while (i12 < list.size()) {
            this.f8845a.Q0(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    private void L(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.U0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iU = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iU += CodedOutputStream.U(vVar.getInt(i13));
        }
        this.f8845a.V0(iU);
        while (i12 < vVar.size()) {
            this.f8845a.V0(vVar.getInt(i12));
            i12++;
        }
    }

    private void N(int i11, f0 f0Var, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < f0Var.size()) {
                this.f8845a.W0(i11, f0Var.getLong(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iW = 0;
        for (int i13 = 0; i13 < f0Var.size(); i13++) {
            iW += CodedOutputStream.W(f0Var.getLong(i13));
        }
        this.f8845a.V0(iW);
        while (i12 < f0Var.size()) {
            this.f8845a.X0(f0Var.getLong(i12));
            i12++;
        }
    }

    private void O(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.W0(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iW = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iW += CodedOutputStream.W(((Long) list.get(i13)).longValue());
        }
        this.f8845a.V0(iW);
        while (i12 < list.size()) {
            this.f8845a.X0(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    public static k g(CodedOutputStream codedOutputStream) {
        k kVar = codedOutputStream.f8675a;
        return kVar != null ? kVar : new k(codedOutputStream);
    }

    private void h(int i11, f fVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < fVar.size()) {
                this.f8845a.h0(i11, fVar.getBoolean(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iF = 0;
        for (int i13 = 0; i13 < fVar.size(); i13++) {
            iF += CodedOutputStream.f(fVar.getBoolean(i13));
        }
        this.f8845a.V0(iF);
        while (i12 < fVar.size()) {
            this.f8845a.i0(fVar.getBoolean(i12));
            i12++;
        }
    }

    private void i(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.h0(i11, ((Boolean) list.get(i12)).booleanValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iF = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iF += CodedOutputStream.f(((Boolean) list.get(i13)).booleanValue());
        }
        this.f8845a.V0(iF);
        while (i12 < list.size()) {
            this.f8845a.i0(((Boolean) list.get(i12)).booleanValue());
            i12++;
        }
    }

    private void j(int i11, boolean z10, Object obj, h0.a aVar) {
        this.f8845a.T0(i11, 2);
        this.f8845a.V0(h0.b(aVar, Boolean.valueOf(z10), obj));
        h0.e(this.f8845a, aVar, Boolean.valueOf(z10), obj);
    }

    private void k(int i11, h0.a aVar, Map map) {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            iArr[i12] = ((Integer) it.next()).intValue();
            i12++;
        }
        Arrays.sort(iArr);
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = iArr[i13];
            Object obj = map.get(Integer.valueOf(i14));
            this.f8845a.T0(i11, 2);
            this.f8845a.V0(h0.b(aVar, Integer.valueOf(i14), obj));
            h0.e(this.f8845a, aVar, Integer.valueOf(i14), obj);
        }
    }

    private void l(int i11, h0.a aVar, Map map) {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            jArr[i12] = ((Long) it.next()).longValue();
            i12++;
        }
        Arrays.sort(jArr);
        for (int i13 = 0; i13 < size; i13++) {
            long j11 = jArr[i13];
            Object obj = map.get(Long.valueOf(j11));
            this.f8845a.T0(i11, 2);
            this.f8845a.V0(h0.b(aVar, Long.valueOf(j11), obj));
            h0.e(this.f8845a, aVar, Long.valueOf(j11), obj);
        }
    }

    private void m(int i11, h0.a aVar, Map map) {
        switch (a.f8846a[aVar.f8781a.ordinal()]) {
            case 1:
                Object obj = map.get(Boolean.FALSE);
                if (obj != null) {
                    j(i11, false, obj, aVar);
                }
                Object obj2 = map.get(Boolean.TRUE);
                if (obj2 != null) {
                    j(i11, true, obj2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                k(i11, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                l(i11, aVar, map);
                return;
            case 12:
                n(i11, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f8781a);
        }
    }

    private void n(int i11, h0.a aVar, Map map) {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator it = map.keySet().iterator();
        int i12 = 0;
        while (it.hasNext()) {
            strArr[i12] = (String) it.next();
            i12++;
        }
        Arrays.sort(strArr);
        for (int i13 = 0; i13 < size; i13++) {
            String str = strArr[i13];
            Object obj = map.get(str);
            this.f8845a.T0(i11, 2);
            this.f8845a.V0(h0.b(aVar, str, obj));
            h0.e(this.f8845a, aVar, str, obj);
        }
    }

    private void o(int i11, l lVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < lVar.size()) {
                this.f8845a.n0(i11, lVar.getDouble(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iK = 0;
        for (int i13 = 0; i13 < lVar.size(); i13++) {
            iK += CodedOutputStream.k(lVar.getDouble(i13));
        }
        this.f8845a.V0(iK);
        while (i12 < lVar.size()) {
            this.f8845a.o0(lVar.getDouble(i12));
            i12++;
        }
    }

    private void p(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.n0(i11, ((Double) list.get(i12)).doubleValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iK = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iK += CodedOutputStream.k(((Double) list.get(i13)).doubleValue());
        }
        this.f8845a.V0(iK);
        while (i12 < list.size()) {
            this.f8845a.o0(((Double) list.get(i12)).doubleValue());
            i12++;
        }
    }

    private void q(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.p0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iM = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iM += CodedOutputStream.m(vVar.getInt(i13));
        }
        this.f8845a.V0(iM);
        while (i12 < vVar.size()) {
            this.f8845a.q0(vVar.getInt(i12));
            i12++;
        }
    }

    private void r(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.p0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iM = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iM += CodedOutputStream.m(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iM);
        while (i12 < list.size()) {
            this.f8845a.q0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    private void s(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.r0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iO = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iO += CodedOutputStream.o(vVar.getInt(i13));
        }
        this.f8845a.V0(iO);
        while (i12 < vVar.size()) {
            this.f8845a.s0(vVar.getInt(i12));
            i12++;
        }
    }

    private void t(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.r0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iO = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iO += CodedOutputStream.o(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iO);
        while (i12 < list.size()) {
            this.f8845a.s0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    private void u(int i11, f0 f0Var, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < f0Var.size()) {
                this.f8845a.t0(i11, f0Var.getLong(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iQ = 0;
        for (int i13 = 0; i13 < f0Var.size(); i13++) {
            iQ += CodedOutputStream.q(f0Var.getLong(i13));
        }
        this.f8845a.V0(iQ);
        while (i12 < f0Var.size()) {
            this.f8845a.u0(f0Var.getLong(i12));
            i12++;
        }
    }

    private void v(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.t0(i11, ((Long) list.get(i12)).longValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iQ = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iQ += CodedOutputStream.q(((Long) list.get(i13)).longValue());
        }
        this.f8845a.V0(iQ);
        while (i12 < list.size()) {
            this.f8845a.u0(((Long) list.get(i12)).longValue());
            i12++;
        }
    }

    private void w(int i11, t tVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < tVar.size()) {
                this.f8845a.v0(i11, tVar.getFloat(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iS = 0;
        for (int i13 = 0; i13 < tVar.size(); i13++) {
            iS += CodedOutputStream.s(tVar.getFloat(i13));
        }
        this.f8845a.V0(iS);
        while (i12 < tVar.size()) {
            this.f8845a.w0(tVar.getFloat(i12));
            i12++;
        }
    }

    private void x(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.v0(i11, ((Float) list.get(i12)).floatValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iS = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iS += CodedOutputStream.s(((Float) list.get(i13)).floatValue());
        }
        this.f8845a.V0(iS);
        while (i12 < list.size()) {
            this.f8845a.w0(((Float) list.get(i12)).floatValue());
            i12++;
        }
    }

    private void y(int i11, v vVar, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < vVar.size()) {
                this.f8845a.B0(i11, vVar.getInt(i12));
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iX = 0;
        for (int i13 = 0; i13 < vVar.size(); i13++) {
            iX += CodedOutputStream.x(vVar.getInt(i13));
        }
        this.f8845a.V0(iX);
        while (i12 < vVar.size()) {
            this.f8845a.C0(vVar.getInt(i12));
            i12++;
        }
    }

    private void z(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.B0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iX = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iX += CodedOutputStream.x(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iX);
        while (i12 < list.size()) {
            this.f8845a.C0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public void I(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.N0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iN = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iN += CodedOutputStream.N(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iN);
        while (i12 < list.size()) {
            this.f8845a.O0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    public void M(int i11, List list, boolean z10) {
        int i12 = 0;
        if (!z10) {
            while (i12 < list.size()) {
                this.f8845a.U0(i11, ((Integer) list.get(i12)).intValue());
                i12++;
            }
            return;
        }
        this.f8845a.T0(i11, 2);
        int iU = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            iU += CodedOutputStream.U(((Integer) list.get(i13)).intValue());
        }
        this.f8845a.V0(iU);
        while (i12 < list.size()) {
            this.f8845a.V0(((Integer) list.get(i12)).intValue());
            i12++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void a(int i11, List list, b1 b1Var) {
        for (int i12 = 0; i12 < list.size(); i12++) {
            e(i11, list.get(i12), b1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void b(int i11, ByteString byteString) {
        this.f8845a.l0(i11, byteString);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void c(int i11, Object obj, b1 b1Var) {
        this.f8845a.F0(i11, (n0) obj, b1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void d(int i11, h0.a aVar, Map map) {
        if (this.f8845a.b0()) {
            m(i11, aVar, map);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f8845a.T0(i11, 2);
            this.f8845a.V0(h0.b(aVar, entry.getKey(), entry.getValue()));
            h0.e(this.f8845a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void e(int i11, Object obj, b1 b1Var) {
        this.f8845a.y0(i11, (n0) obj, b1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void f(int i11, List list, b1 b1Var) {
        for (int i12 = 0; i12 < list.size(); i12++) {
            c(i11, list.get(i12), b1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBool(int i11, boolean z10) {
        this.f8845a.h0(i11, z10);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBoolList(int i11, List list, boolean z10) {
        if (list instanceof f) {
            h(i11, (f) list, z10);
        } else {
            i(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBytesList(int i11, List list) {
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f8845a.l0(i11, (ByteString) list.get(i12));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDouble(int i11, double d11) {
        this.f8845a.n0(i11, d11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDoubleList(int i11, List list, boolean z10) {
        if (list instanceof l) {
            o(i11, (l) list, z10);
        } else {
            p(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEndGroup(int i11) {
        this.f8845a.T0(i11, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnum(int i11, int i12) {
        this.f8845a.p0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnumList(int i11, List list, boolean z10) {
        if (list instanceof v) {
            q(i11, (v) list, z10);
        } else {
            r(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32(int i11, int i12) {
        this.f8845a.r0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32List(int i11, List list, boolean z10) {
        if (list instanceof v) {
            s(i11, (v) list, z10);
        } else {
            t(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64(int i11, long j11) {
        this.f8845a.t0(i11, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64List(int i11, List list, boolean z10) {
        if (list instanceof f0) {
            u(i11, (f0) list, z10);
        } else {
            v(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloat(int i11, float f11) {
        this.f8845a.v0(i11, f11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloatList(int i11, List list, boolean z10) {
        if (list instanceof t) {
            w(i11, (t) list, z10);
        } else {
            x(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32(int i11, int i12) {
        this.f8845a.B0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32List(int i11, List list, boolean z10) {
        if (list instanceof v) {
            y(i11, (v) list, z10);
        } else {
            z(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64(int i11, long j11) {
        this.f8845a.D0(i11, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64List(int i11, List list, boolean z10) {
        if (list instanceof f0) {
            A(i11, (f0) list, z10);
        } else {
            B(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeMessageSetItem(int i11, Object obj) {
        if (obj instanceof ByteString) {
            this.f8845a.I0(i11, (ByteString) obj);
        } else {
            this.f8845a.H0(i11, (n0) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32(int i11, int i12) {
        this.f8845a.J0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32List(int i11, List list, boolean z10) {
        if (list instanceof v) {
            D(i11, (v) list, z10);
        } else {
            E(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64(int i11, long j11) {
        this.f8845a.L0(i11, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64List(int i11, List list, boolean z10) {
        if (list instanceof f0) {
            F(i11, (f0) list, z10);
        } else {
            G(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32(int i11, int i12) {
        this.f8845a.N0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32List(int i11, List list, boolean z10) {
        if (list instanceof v) {
            H(i11, (v) list, z10);
        } else {
            I(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64(int i11, long j11) {
        this.f8845a.P0(i11, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64List(int i11, List list, boolean z10) {
        if (list instanceof f0) {
            J(i11, (f0) list, z10);
        } else {
            K(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStartGroup(int i11) {
        this.f8845a.T0(i11, 3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeString(int i11, String str) {
        this.f8845a.R0(i11, str);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStringList(int i11, List list) {
        int i12 = 0;
        if (!(list instanceof b0)) {
            while (i12 < list.size()) {
                this.f8845a.R0(i11, (String) list.get(i12));
                i12++;
            }
        } else {
            b0 b0Var = (b0) list;
            while (i12 < list.size()) {
                C(i11, b0Var.getRaw(i12));
                i12++;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32(int i11, int i12) {
        this.f8845a.U0(i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32List(int i11, List list, boolean z10) {
        if (list instanceof v) {
            L(i11, (v) list, z10);
        } else {
            M(i11, list, z10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64(int i11, long j11) {
        this.f8845a.W0(i11, j11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64List(int i11, List list, boolean z10) {
        if (list instanceof f0) {
            N(i11, (f0) list, z10);
        } else {
            O(i11, list, z10);
        }
    }
}
