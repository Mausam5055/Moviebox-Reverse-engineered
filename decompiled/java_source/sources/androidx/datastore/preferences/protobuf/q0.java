package androidx.datastore.preferences.protobuf;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class q0 implements b1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f8880r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Unsafe f8881s = k1.H();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f8882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f8883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f8885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n0 f8886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f8887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f8888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ProtoSyntax f8889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f8890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f8891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f8892k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f8893l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final s0 f8894m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c0 f8895n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final h1 f8896o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p f8897p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final i0 f8898q;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8899a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8899a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8899a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8899a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8899a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8899a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8899a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8899a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8899a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8899a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8899a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8899a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8899a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8899a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8899a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8899a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8899a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8899a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private q0(int[] iArr, Object[] objArr, int i11, int i12, n0 n0Var, ProtoSyntax protoSyntax, boolean z10, int[] iArr2, int i13, int i14, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        this.f8882a = iArr;
        this.f8883b = objArr;
        this.f8884c = i11;
        this.f8885d = i12;
        this.f8888g = n0Var instanceof GeneratedMessageLite;
        this.f8889h = protoSyntax;
        this.f8887f = pVar != null && pVar.e(n0Var);
        this.f8890i = z10;
        this.f8891j = iArr2;
        this.f8892k = i13;
        this.f8893l = i14;
        this.f8894m = s0Var;
        this.f8895n = c0Var;
        this.f8896o = h1Var;
        this.f8897p = pVar;
        this.f8886e = n0Var;
        this.f8898q = i0Var;
    }

    private static boolean A(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).z();
        }
        return true;
    }

    private boolean B(Object obj, Object obj2, int i11) {
        long jC0 = c0(i11) & 1048575;
        return k1.C(obj, jC0) == k1.C(obj2, jC0);
    }

    private boolean C(Object obj, int i11, int i12) {
        return k1.C(obj, (long) (c0(i12) & 1048575)) == i11;
    }

    private static boolean D(int i11) {
        return (i11 & ASTNode.DEOP) != 0;
    }

    private static long E(Object obj, long j11) {
        return k1.E(obj, j11);
    }

    /* JADX WARN: Code duplicated, block: B:170:0x064b A[Catch: all -> 0x0671, TRY_LEAVE, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0658 A[LOOP:2: B:173:0x0654->B:175:0x0658, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x066d  */
    /* JADX WARN: Code duplicated, block: B:181:0x0673 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x0675 A[Catch: all -> 0x0671, TRY_ENTER, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0687 A[LOOP:3: B:186:0x0683->B:188:0x0687, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x069c  */
    /* JADX WARN: Code duplicated, block: B:198:0x06b1 A[LOOP:4: B:196:0x06ad->B:198:0x06b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:227:0x0651 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0680 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:? A[RETURN, SYNTHETIC] */
    private void F(h1 h1Var, p pVar, Object obj, a1 a1Var, o oVar) throws Throwable {
        Object obj2;
        h1 h1Var2;
        int i11;
        Object objK;
        Object obj3;
        o oVar2;
        int i12;
        Object objK2;
        int i13;
        Object objK3;
        Object obj4;
        h1 h1Var3 = h1Var;
        Object obj5 = obj;
        o oVar3 = oVar;
        Object objF = null;
        s sVar = null;
        while (true) {
            try {
                int fieldNumber = a1Var.getFieldNumber();
                int iA0 = a0(fieldNumber);
                if (iA0 >= 0) {
                    obj2 = obj5;
                    try {
                        int iO0 = o0(iA0);
                        try {
                            switch (n0(iO0)) {
                                case 0:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.S(obj2, Q(iO0), a1Var.readDouble());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 1:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.T(obj2, Q(iO0), a1Var.readFloat());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 2:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 3:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readUInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 4:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 5:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readFixed64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 6:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readFixed32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 7:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.M(obj2, Q(iO0), a1Var.readBool());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 8:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    f0(obj2, iO0, a1Var);
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 9:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    n0 n0Var = (n0) K(obj2, iA0);
                                    a1Var.a(n0Var, p(iA0), oVar2);
                                    l0(obj2, iA0, n0Var);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 10:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.W(obj2, Q(iO0), a1Var.readBytes());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 11:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readUInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 12:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    int i14 = a1Var.readEnum();
                                    w.c cVarN = n(iA0);
                                    if (cVarN == null || cVarN.isInRange(i14)) {
                                        k1.U(obj2, Q(iO0), i14);
                                        i0(obj2, iA0);
                                        objF = obj4;
                                    } else {
                                        objF = d1.I(obj2, fieldNumber, i14, obj4, h1Var2);
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 13:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readSFixed32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 14:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readSFixed64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 15:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readSInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 16:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readSInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 17:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    n0 n0Var2 = (n0) K(obj2, iA0);
                                    a1Var.d(n0Var2, p(iA0), oVar2);
                                    l0(obj2, iA0, n0Var2);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 18:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readDoubleList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 19:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFloatList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 20:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 21:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 22:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 23:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 24:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 25:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBoolList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 26:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    g0(obj2, iO0, a1Var);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 27:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    e0(obj, iO0, a1Var, p(iA0), oVar);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 28:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBytesList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case NOTIFICATION_REDIRECT_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 30:
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    List listC = this.f8895n.c(obj2, Q(iO0));
                                    a1Var.readEnumList(listC);
                                    objF = d1.z(obj, fieldNumber, listC, n(iA0), objF, h1Var);
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case TEMPLATE_HTML_SIZE_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 32:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 33:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 34:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 35:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readDoubleList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 36:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFloatList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 37:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 38:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 39:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 40:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 41:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 42:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBoolList(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 43:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 44:
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    List listC2 = this.f8895n.c(obj2, Q(iO0));
                                    a1Var.readEnumList(listC2);
                                    objF = d1.z(obj, fieldNumber, listC2, n(iA0), objF, h1Var);
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 45:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 46:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 47:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt32List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt64List(this.f8895n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    try {
                                        d0(obj, Q(iO0), a1Var, p(iA0), oVar);
                                        objF = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        objF = obj4;
                                        try {
                                            if (!h1Var2.q(a1Var)) {
                                                if (objF == null) {
                                                    objF = h1Var2.f(obj2);
                                                }
                                                if (!h1Var2.m(objF, a1Var, 0)) {
                                                    objK2 = objF;
                                                    for (i12 = this.f8892k; i12 < this.f8893l; i12++) {
                                                        objK2 = k(obj, this.f8891j[i12], objK2, h1Var, obj);
                                                    }
                                                    if (objK2 != null) {
                                                        h1Var2.o(obj2, objK2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!a1Var.skipField()) {
                                                objK3 = objF;
                                                for (i13 = this.f8892k; i13 < this.f8893l; i13++) {
                                                    objK3 = k(obj, this.f8891j[i13], objK3, h1Var, obj);
                                                }
                                                if (objK3 != null) {
                                                    h1Var2.o(obj2, objK3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        objF = obj4;
                                        objK = objF;
                                        for (i11 = this.f8892k; i11 < this.f8893l; i11++) {
                                            objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
                                        }
                                        if (objK != null) {
                                            h1Var2.o(obj2, objK);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 50:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    try {
                                        G(obj, iA0, o(iA0), oVar, a1Var);
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                        if (!h1Var2.q(a1Var)) {
                                            if (objF == null) {
                                                objF = h1Var2.f(obj2);
                                            }
                                            if (!h1Var2.m(objF, a1Var, 0)) {
                                                objK2 = objF;
                                                while (i12 < this.f8893l) {
                                                    objK2 = k(obj, this.f8891j[i12], objK2, h1Var, obj);
                                                }
                                                if (objK2 != null) {
                                                    h1Var2.o(obj2, objK2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!a1Var.skipField()) {
                                            objK3 = objF;
                                            while (i13 < this.f8893l) {
                                                objK3 = k(obj, this.f8891j[i13], objK3, h1Var, obj);
                                            }
                                            if (objK3 != null) {
                                                h1Var2.o(obj2, objK3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                        objK = objF;
                                        while (i11 < this.f8893l) {
                                            objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
                                        }
                                        if (objK != null) {
                                            h1Var2.o(obj2, objK);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REWARD_USER_VALUE:
                                    k1.W(obj2, Q(iO0), Double.valueOf(a1Var.readDouble()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Float.valueOf(a1Var.readFloat()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readUInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VISIBILITY_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readFixed64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 57:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readFixed32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Boolean.valueOf(a1Var.readBool()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 59:
                                    f0(obj2, iO0, a1Var);
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 60:
                                    n0 n0Var3 = (n0) L(obj2, fieldNumber, iA0);
                                    a1Var.a(n0Var3, p(iA0), oVar3);
                                    m0(obj2, fieldNumber, iA0, n0Var3);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 61:
                                    k1.W(obj2, Q(iO0), a1Var.readBytes());
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 62:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readUInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 63:
                                    int i15 = a1Var.readEnum();
                                    w.c cVarN2 = n(iA0);
                                    if (cVarN2 != null && !cVarN2.isInRange(i15)) {
                                        objF = d1.I(obj2, fieldNumber, i15, objF, h1Var3);
                                        oVar2 = oVar3;
                                        h1Var2 = h1Var3;
                                        oVar3 = oVar2;
                                        h1Var3 = h1Var2;
                                        obj5 = obj2;
                                    }
                                    k1.W(obj2, Q(iO0), Integer.valueOf(i15));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 64:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readSFixed32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readSFixed64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 66:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readSInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 67:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readSInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 68:
                                    n0 n0Var4 = (n0) L(obj2, fieldNumber, iA0);
                                    a1Var.d(n0Var4, p(iA0), oVar3);
                                    m0(obj2, fieldNumber, iA0, n0Var4);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                default:
                                    if (objF == null) {
                                        try {
                                            objF = h1Var3.f(obj2);
                                            break;
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            oVar2 = oVar3;
                                            h1Var2 = h1Var3;
                                            if (!h1Var2.q(a1Var)) {
                                                if (objF == null) {
                                                    objF = h1Var2.f(obj2);
                                                }
                                                if (!h1Var2.m(objF, a1Var, 0)) {
                                                    objK2 = objF;
                                                    while (i12 < this.f8893l) {
                                                        objK2 = k(obj, this.f8891j[i12], objK2, h1Var, obj);
                                                    }
                                                    if (objK2 != null) {
                                                        h1Var2.o(obj2, objK2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!a1Var.skipField()) {
                                                objK3 = objF;
                                                while (i13 < this.f8893l) {
                                                    objK3 = k(obj, this.f8891j[i13], objK3, h1Var, obj);
                                                }
                                                if (objK3 != null) {
                                                    h1Var2.o(obj2, objK3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            h1Var2 = h1Var3;
                                            objK = objF;
                                            while (i11 < this.f8893l) {
                                                objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
                                            }
                                            if (objK != null) {
                                                h1Var2.o(obj2, objK);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (!h1Var3.m(objF, a1Var, 0)) {
                                        Object objK4 = objF;
                                        for (int i16 = this.f8892k; i16 < this.f8893l; i16++) {
                                            objK4 = k(obj, this.f8891j[i16], objK4, h1Var, obj);
                                        }
                                        if (objK4 != null) {
                                            h1Var3.o(obj2, objK4);
                                            return;
                                        }
                                        return;
                                    }
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objK5 = objF;
                        for (int i17 = this.f8892k; i17 < this.f8893l; i17++) {
                            objK5 = k(obj, this.f8891j[i17], objK5, h1Var, obj);
                        }
                        if (objK5 != null) {
                            h1Var3.o(obj5, objK5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objB = !this.f8887f ? null : pVar.b(oVar3, this.f8886e, fieldNumber);
                        if (objB != null) {
                            s sVarD = sVar == null ? pVar.d(obj) : sVar;
                            obj3 = obj5;
                            try {
                                objF = pVar.g(obj, a1Var, objB, oVar, sVarD, objF, h1Var);
                                sVar = sVarD;
                            } catch (Throwable th7) {
                                th = th7;
                                obj2 = obj3;
                                h1Var2 = h1Var3;
                                objK = objF;
                                while (i11 < this.f8893l) {
                                    objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
                                }
                                if (objK != null) {
                                    h1Var2.o(obj2, objK);
                                }
                                throw th;
                            }
                        } else {
                            obj3 = obj5;
                            if (!h1Var3.q(a1Var)) {
                                if (objF == null) {
                                    objF = h1Var3.f(obj3);
                                }
                                if (!h1Var3.m(objF, a1Var, 0)) {
                                }
                            } else if (!a1Var.skipField()) {
                            }
                        }
                        obj5 = obj3;
                    } catch (Throwable th8) {
                        th = th8;
                        obj2 = obj5;
                        h1Var2 = h1Var3;
                        objK = objF;
                        while (i11 < this.f8893l) {
                            objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
                        }
                        if (objK != null) {
                            h1Var2.o(obj2, objK);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objK = objF;
            while (i11 < this.f8893l) {
                objK = k(obj, this.f8891j[i11], objK, h1Var, obj);
            }
            if (objK != null) {
                h1Var2.o(obj2, objK);
            }
            throw th;
        }
        int i18 = this.f8892k;
        Object objK6 = objF;
        while (i18 < this.f8893l) {
            objK6 = k(obj, this.f8891j[i18], objK6, h1Var, obj);
            i18++;
            obj3 = obj3;
        }
        Object obj6 = obj3;
        if (objK6 != null) {
            h1Var3.o(obj6, objK6);
        }
    }

    private final void G(Object obj, int i11, Object obj2, o oVar, a1 a1Var) {
        long jQ = Q(o0(i11));
        Object objG = k1.G(obj, jQ);
        if (objG == null) {
            objG = this.f8898q.newMapField(obj2);
            k1.W(obj, jQ, objG);
        } else if (this.f8898q.isImmutable(objG)) {
            Object objNewMapField = this.f8898q.newMapField(obj2);
            this.f8898q.mergeFrom(objNewMapField, objG);
            k1.W(obj, jQ, objNewMapField);
            objG = objNewMapField;
        }
        a1Var.c(this.f8898q.forMutableMapData(objG), this.f8898q.forMapMetadata(obj2), oVar);
    }

    private void H(Object obj, Object obj2, int i11) {
        if (u(obj2, i11)) {
            long jQ = Q(o0(i11));
            Unsafe unsafe = f8881s;
            Object object = unsafe.getObject(obj2, jQ);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + P(i11) + " is present but null: " + obj2);
            }
            b1 b1VarP = p(i11);
            if (!u(obj, i11)) {
                if (A(object)) {
                    Object objNewInstance = b1VarP.newInstance();
                    b1VarP.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jQ, objNewInstance);
                } else {
                    unsafe.putObject(obj, jQ, object);
                }
                i0(obj, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, jQ);
            if (!A(object2)) {
                Object objNewInstance2 = b1VarP.newInstance();
                b1VarP.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jQ, objNewInstance2);
                object2 = objNewInstance2;
            }
            b1VarP.mergeFrom(object2, object);
        }
    }

    private void I(Object obj, Object obj2, int i11) {
        int iP = P(i11);
        if (C(obj2, iP, i11)) {
            long jQ = Q(o0(i11));
            Unsafe unsafe = f8881s;
            Object object = unsafe.getObject(obj2, jQ);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + P(i11) + " is present but null: " + obj2);
            }
            b1 b1VarP = p(i11);
            if (!C(obj, iP, i11)) {
                if (A(object)) {
                    Object objNewInstance = b1VarP.newInstance();
                    b1VarP.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jQ, objNewInstance);
                } else {
                    unsafe.putObject(obj, jQ, object);
                }
                j0(obj, iP, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, jQ);
            if (!A(object2)) {
                Object objNewInstance2 = b1VarP.newInstance();
                b1VarP.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jQ, objNewInstance2);
                object2 = objNewInstance2;
            }
            b1VarP.mergeFrom(object2, object);
        }
    }

    private void J(Object obj, Object obj2, int i11) {
        int iO0 = o0(i11);
        long jQ = Q(iO0);
        int iP = P(i11);
        switch (n0(iO0)) {
            case 0:
                if (u(obj2, i11)) {
                    k1.S(obj, jQ, k1.A(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 1:
                if (u(obj2, i11)) {
                    k1.T(obj, jQ, k1.B(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 2:
                if (u(obj2, i11)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 3:
                if (u(obj2, i11)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 4:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 5:
                if (u(obj2, i11)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 6:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 7:
                if (u(obj2, i11)) {
                    k1.M(obj, jQ, k1.t(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 8:
                if (u(obj2, i11)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 9:
                H(obj, obj2, i11);
                break;
            case 10:
                if (u(obj2, i11)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 11:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 12:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 13:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 14:
                if (u(obj2, i11)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 15:
                if (u(obj2, i11)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 16:
                if (u(obj2, i11)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i11);
                }
                break;
            case 17:
                H(obj, obj2, i11);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f8895n.b(obj, obj2, jQ);
                break;
            case 50:
                d1.E(this.f8898q, obj, obj2, jQ);
                break;
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
                if (C(obj2, iP, i11)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    j0(obj, iP, i11);
                }
                break;
            case 60:
                I(obj, obj2, i11);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
            case 66:
            case 67:
                if (C(obj2, iP, i11)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    j0(obj, iP, i11);
                }
                break;
            case 68:
                I(obj, obj2, i11);
                break;
        }
    }

    private Object K(Object obj, int i11) {
        b1 b1VarP = p(i11);
        long jQ = Q(o0(i11));
        if (!u(obj, i11)) {
            return b1VarP.newInstance();
        }
        Object object = f8881s.getObject(obj, jQ);
        if (A(object)) {
            return object;
        }
        Object objNewInstance = b1VarP.newInstance();
        if (object != null) {
            b1VarP.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private Object L(Object obj, int i11, int i12) {
        b1 b1VarP = p(i12);
        if (!C(obj, i11, i12)) {
            return b1VarP.newInstance();
        }
        Object object = f8881s.getObject(obj, Q(o0(i12)));
        if (A(object)) {
            return object;
        }
        Object objNewInstance = b1VarP.newInstance();
        if (object != null) {
            b1VarP.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    static q0 M(Class cls, l0 l0Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        if (l0Var instanceof z0) {
            return O((z0) l0Var, s0Var, c0Var, h1Var, pVar, i0Var);
        }
        android.support.v4.media.session.c.a(l0Var);
        return N(null, s0Var, c0Var, h1Var, pVar, i0Var);
    }

    static q0 N(f1 f1Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0249  */
    /* JADX WARN: Code duplicated, block: B:123:0x024e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0264  */
    /* JADX WARN: Code duplicated, block: B:127:0x0267  */
    static q0 O(z0 z0Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        int i11;
        int iCharAt;
        int iCharAt2;
        int i12;
        int i13;
        int[] iArr;
        int i14;
        int i15;
        int i16;
        int i17;
        char cCharAt;
        int i18;
        char cCharAt2;
        int i19;
        char cCharAt3;
        int i20;
        char cCharAt4;
        int i21;
        char cCharAt5;
        int i22;
        char cCharAt6;
        int i23;
        char cCharAt7;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset;
        int i29;
        int i30;
        int iObjectFieldOffset2;
        Field fieldH0;
        int i31;
        char cCharAt9;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldH1;
        int i35;
        Object obj2;
        Field fieldH2;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        String strB = z0Var.b();
        int length = strB.length();
        char c11 = 55296;
        if (strB.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i11 = i40 + 1;
                if (strB.charAt(i40) < 55296) {
                    break;
                }
                i40 = i11;
            }
        } else {
            i11 = 1;
        }
        int i41 = i11 + 1;
        int iCharAt3 = strB.charAt(i11);
        if (iCharAt3 >= 55296) {
            int i42 = iCharAt3 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt13 = strB.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt3 = i42 | (cCharAt13 << i43);
            i41 = i39;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i15 = 0;
            i16 = 0;
            i12 = 0;
            i14 = 0;
            iArr = f8880r;
            i13 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt4 = strB.charAt(i41);
            if (iCharAt4 >= 55296) {
                int i45 = iCharAt4 & 8191;
                int i46 = 13;
                while (true) {
                    i24 = i44 + 1;
                    cCharAt8 = strB.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i24;
                }
                iCharAt4 = i45 | (cCharAt8 << i46);
                i44 = i24;
            }
            int i47 = i44 + 1;
            int iCharAt5 = strB.charAt(i44);
            if (iCharAt5 >= 55296) {
                int i48 = iCharAt5 & 8191;
                int i49 = 13;
                while (true) {
                    i23 = i47 + 1;
                    cCharAt7 = strB.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i23;
                }
                iCharAt5 = i48 | (cCharAt7 << i49);
                i47 = i23;
            }
            int i50 = i47 + 1;
            int iCharAt6 = strB.charAt(i47);
            if (iCharAt6 >= 55296) {
                int i51 = iCharAt6 & 8191;
                int i52 = 13;
                while (true) {
                    i22 = i50 + 1;
                    cCharAt6 = strB.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i22;
                }
                iCharAt6 = i51 | (cCharAt6 << i52);
                i50 = i22;
            }
            int i53 = i50 + 1;
            int iCharAt7 = strB.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i21 = i53 + 1;
                    cCharAt5 = strB.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i21;
                }
                iCharAt7 = i54 | (cCharAt5 << i55);
                i53 = i21;
            }
            int i56 = i53 + 1;
            iCharAt = strB.charAt(i53);
            if (iCharAt >= 55296) {
                int i57 = iCharAt & 8191;
                int i58 = 13;
                while (true) {
                    i20 = i56 + 1;
                    cCharAt4 = strB.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i20;
                }
                iCharAt = i57 | (cCharAt4 << i58);
                i56 = i20;
            }
            int i59 = i56 + 1;
            iCharAt2 = strB.charAt(i56);
            if (iCharAt2 >= 55296) {
                int i60 = iCharAt2 & 8191;
                int i61 = 13;
                while (true) {
                    i19 = i59 + 1;
                    cCharAt3 = strB.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i19;
                }
                iCharAt2 = i60 | (cCharAt3 << i61);
                i59 = i19;
            }
            int i62 = i59 + 1;
            int iCharAt8 = strB.charAt(i59);
            if (iCharAt8 >= 55296) {
                int i63 = iCharAt8 & 8191;
                int i64 = 13;
                while (true) {
                    i18 = i62 + 1;
                    cCharAt2 = strB.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i18;
                }
                iCharAt8 = i63 | (cCharAt2 << i64);
                i62 = i18;
            }
            int i65 = i62 + 1;
            int iCharAt9 = strB.charAt(i62);
            if (iCharAt9 >= 55296) {
                int i66 = iCharAt9 & 8191;
                int i67 = 13;
                while (true) {
                    i17 = i65 + 1;
                    cCharAt = strB.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i17;
                }
                iCharAt9 = i66 | (cCharAt << i67);
                i65 = i17;
            }
            i12 = (iCharAt4 * 2) + iCharAt5;
            i13 = iCharAt4;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i14 = iCharAt9;
            i41 = i65;
            i15 = iCharAt6;
            i16 = iCharAt7;
        }
        Unsafe unsafe = f8881s;
        Object[] objArrA = z0Var.a();
        Class<?> cls = z0Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i68 = i14 + iCharAt2;
        int i69 = i14;
        int i70 = i68;
        int i71 = 0;
        int i72 = 0;
        while (i41 < length) {
            int i73 = i41 + 1;
            int iCharAt10 = strB.charAt(i41);
            if (iCharAt10 >= c11) {
                int i74 = iCharAt10 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i38 = i75 + 1;
                    cCharAt12 = strB.charAt(i75);
                    if (cCharAt12 < c11) {
                        break;
                    }
                    i74 |= (cCharAt12 & 8191) << i76;
                    i76 += 13;
                    i75 = i38;
                }
                iCharAt10 = i74 | (cCharAt12 << i76);
                i25 = i38;
            } else {
                i25 = i73;
            }
            int i77 = i25 + 1;
            int iCharAt11 = strB.charAt(i25);
            if (iCharAt11 >= c11) {
                int i78 = iCharAt11 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i37 = i79 + 1;
                    cCharAt11 = strB.charAt(i79);
                    if (cCharAt11 < c11) {
                        break;
                    }
                    i78 |= (cCharAt11 & 8191) << i80;
                    i80 += 13;
                    i79 = i37;
                }
                iCharAt11 = i78 | (cCharAt11 << i80);
                i26 = i37;
            } else {
                i26 = i77;
            }
            int i81 = iCharAt11 & 255;
            int i82 = length;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i71] = i72;
                i71++;
            }
            int i83 = i71;
            if (i81 >= 51) {
                int i84 = i26 + 1;
                int iCharAt12 = strB.charAt(i26);
                char c12 = 55296;
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = 13;
                    while (true) {
                        i36 = i84 + 1;
                        cCharAt10 = strB.charAt(i84);
                        if (cCharAt10 < c12) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i86;
                        i86 += 13;
                        i84 = i36;
                        c12 = 55296;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i86);
                    i84 = i36;
                }
                int i87 = i81 - 51;
                int i88 = i84;
                if (i87 == 9 || i87 == 17) {
                    i33 = i12 + 1;
                    objArr[((i72 / 3) * 2) + 1] = objArrA[i12];
                } else {
                    if (i87 == 12 && (z0Var.getSyntax().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i33 = i12 + 1;
                        objArr[((i72 / 3) * 2) + 1] = objArrA[i12];
                    }
                    i34 = iCharAt12 * 2;
                    obj = objArrA[i34];
                    if (obj instanceof Field) {
                        fieldH1 = (Field) obj;
                    } else {
                        fieldH1 = h0(cls, (String) obj);
                        objArrA[i34] = fieldH1;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldH1);
                    i35 = i34 + 1;
                    obj2 = objArrA[i35];
                    if (obj2 instanceof Field) {
                        fieldH2 = (Field) obj2;
                    } else {
                        fieldH2 = h0(cls, (String) obj2);
                        objArrA[i35] = fieldH2;
                    }
                    i28 = i16;
                    i27 = i12;
                    i29 = i88;
                    strB = strB;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH2);
                    i30 = 0;
                }
                i12 = i33;
                i34 = iCharAt12 * 2;
                obj = objArrA[i34];
                if (obj instanceof Field) {
                    fieldH1 = (Field) obj;
                } else {
                    fieldH1 = h0(cls, (String) obj);
                    objArrA[i34] = fieldH1;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldH1);
                i35 = i34 + 1;
                obj2 = objArrA[i35];
                if (obj2 instanceof Field) {
                    fieldH2 = (Field) obj2;
                } else {
                    fieldH2 = h0(cls, (String) obj2);
                    objArrA[i35] = fieldH2;
                }
                i28 = i16;
                i27 = i12;
                i29 = i88;
                strB = strB;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH2);
                i30 = 0;
            } else {
                i27 = i12 + 1;
                Field fieldH3 = h0(cls, (String) objArrA[i12]);
                if (i81 == 9 || i81 == 17) {
                    i28 = i16;
                    objArr[((i72 / 3) * 2) + 1] = fieldH3.getType();
                } else {
                    if (i81 == 27 || i81 == 49) {
                        i28 = i16;
                        i32 = i12 + 2;
                        objArr[((i72 / 3) * 2) + 1] = objArrA[i27];
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        i28 = i16;
                        if (z0Var.getSyntax() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i32 = i12 + 2;
                            objArr[((i72 / 3) * 2) + 1] = objArrA[i27];
                        }
                    } else {
                        if (i81 == 50) {
                            int i89 = i69 + 1;
                            iArr[i69] = i72;
                            int i90 = (i72 / 3) * 2;
                            int i91 = i12 + 2;
                            objArr[i90] = objArrA[i27];
                            if ((iCharAt11 & 2048) != 0) {
                                i27 = i12 + 3;
                                objArr[i90 + 1] = objArrA[i91];
                                i69 = i89;
                            } else {
                                i69 = i89;
                                i27 = i91;
                            }
                        }
                        i28 = i16;
                    }
                    i27 = i32;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldH3);
                if ((iCharAt11 & 4096) == 0 || i81 > 17) {
                    iObjectFieldOffset = 1048575;
                    i29 = i26;
                    i30 = 0;
                } else {
                    i29 = i26 + 1;
                    int iCharAt13 = strB.charAt(i26);
                    if (iCharAt13 >= 55296) {
                        int i92 = iCharAt13 & 8191;
                        int i93 = 13;
                        while (true) {
                            i31 = i29 + 1;
                            cCharAt9 = strB.charAt(i29);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i92 |= (cCharAt9 & 8191) << i93;
                            i93 += 13;
                            i29 = i31;
                        }
                        iCharAt13 = i92 | (cCharAt9 << i93);
                        i29 = i31;
                    }
                    int i94 = (i13 * 2) + (iCharAt13 / 32);
                    Object obj3 = objArrA[i94];
                    if (obj3 instanceof Field) {
                        fieldH0 = (Field) obj3;
                    } else {
                        fieldH0 = h0(cls, (String) obj3);
                        objArrA[i94] = fieldH0;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH0);
                    i30 = iCharAt13 % 32;
                }
                if (i81 >= 18 && i81 <= 49) {
                    iArr[i70] = iObjectFieldOffset3;
                    i70++;
                }
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i95 = i72 + 1;
            iArr2[i72] = iCharAt10;
            int i96 = i72 + 2;
            int i97 = i13;
            iArr2[i95] = iObjectFieldOffset2 | (i81 << 20) | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0);
            i72 += 3;
            iArr2[i96] = iObjectFieldOffset | (i30 << 20);
            i41 = i29;
            strB = strB;
            i12 = i27;
            length = i82;
            i16 = i28;
            i71 = i83;
            i13 = i97;
            i15 = i15;
            c11 = 55296;
        }
        return new q0(iArr2, objArr, i15, i16, z0Var.getDefaultInstance(), z0Var.getSyntax(), false, iArr, i14, i68, s0Var, c0Var, h1Var, pVar, i0Var);
    }

    private int P(int i11) {
        return this.f8882a[i11];
    }

    private static long Q(int i11) {
        return i11 & 1048575;
    }

    private static boolean R(Object obj, long j11) {
        return ((Boolean) k1.G(obj, j11)).booleanValue();
    }

    private static double S(Object obj, long j11) {
        return ((Double) k1.G(obj, j11)).doubleValue();
    }

    private static float T(Object obj, long j11) {
        return ((Float) k1.G(obj, j11)).floatValue();
    }

    private static int U(Object obj, long j11) {
        return ((Integer) k1.G(obj, j11)).intValue();
    }

    private static long V(Object obj, long j11) {
        return ((Long) k1.G(obj, j11)).longValue();
    }

    private int W(Object obj, byte[] bArr, int i11, int i12, int i13, long j11, e.a aVar) {
        Unsafe unsafe = f8881s;
        Object objO = o(i13);
        Object object = unsafe.getObject(obj, j11);
        if (this.f8898q.isImmutable(object)) {
            Object objNewMapField = this.f8898q.newMapField(objO);
            this.f8898q.mergeFrom(objNewMapField, object);
            unsafe.putObject(obj, j11, objNewMapField);
            object = objNewMapField;
        }
        return g(bArr, i11, i12, this.f8898q.forMapMetadata(objO), this.f8898q.forMutableMapData(object), aVar);
    }

    private int Y(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11, int i18, e.a aVar) throws InvalidProtocolBufferException {
        Unsafe unsafe = f8881s;
        long j12 = this.f8882a[i18 + 2] & 1048575;
        switch (i17) {
            case AD_REWARD_USER_VALUE:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Double.valueOf(e.e(bArr, i11)));
                int i19 = i11 + 8;
                unsafe.putInt(obj, j12, i14);
                return i19;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Float.valueOf(e.l(bArr, i11)));
                int i20 = i11 + 4;
                unsafe.putInt(obj, j12, i14);
                return i20;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iL = e.L(bArr, i11, aVar);
                unsafe.putObject(obj, j11, Long.valueOf(aVar.f8746b));
                unsafe.putInt(obj, j12, i14);
                return iL;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i15 != 0) {
                    return i11;
                }
                int I = e.I(bArr, i11, aVar);
                unsafe.putObject(obj, j11, Integer.valueOf(aVar.f8745a));
                unsafe.putInt(obj, j12, i14);
                return I;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Long.valueOf(e.j(bArr, i11)));
                int i21 = i11 + 8;
                unsafe.putInt(obj, j12, i14);
                return i21;
            case 57:
            case 64:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Integer.valueOf(e.h(bArr, i11)));
                int i22 = i11 + 4;
                unsafe.putInt(obj, j12, i14);
                return i22;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iL2 = e.L(bArr, i11, aVar);
                unsafe.putObject(obj, j11, Boolean.valueOf(aVar.f8746b != 0));
                unsafe.putInt(obj, j12, i14);
                return iL2;
            case 59:
                if (i15 != 2) {
                    return i11;
                }
                int I2 = e.I(bArr, i11, aVar);
                int i23 = aVar.f8745a;
                if (i23 == 0) {
                    unsafe.putObject(obj, j11, "");
                } else {
                    if ((i16 & ASTNode.DISCARD) != 0 && !Utf8.s(bArr, I2, I2 + i23)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(obj, j11, new String(bArr, I2, i23, w.f8916b));
                    I2 += i23;
                }
                unsafe.putInt(obj, j12, i14);
                return I2;
            case 60:
                if (i15 != 2) {
                    return i11;
                }
                Object objL = L(obj, i14, i18);
                int iO = e.O(objL, p(i18), bArr, i11, i12, aVar);
                m0(obj, i14, i18, objL);
                return iO;
            case 61:
                if (i15 != 2) {
                    return i11;
                }
                int iC = e.c(bArr, i11, aVar);
                unsafe.putObject(obj, j11, aVar.f8747c);
                unsafe.putInt(obj, j12, i14);
                return iC;
            case 63:
                if (i15 != 0) {
                    return i11;
                }
                int I3 = e.I(bArr, i11, aVar);
                int i24 = aVar.f8745a;
                w.c cVarN = n(i18);
                if (cVarN == null || cVarN.isInRange(i24)) {
                    unsafe.putObject(obj, j11, Integer.valueOf(i24));
                    unsafe.putInt(obj, j12, i14);
                } else {
                    q(obj).n(i13, Long.valueOf(i24));
                }
                return I3;
            case 66:
                if (i15 != 0) {
                    return i11;
                }
                int I4 = e.I(bArr, i11, aVar);
                unsafe.putObject(obj, j11, Integer.valueOf(i.c(aVar.f8745a)));
                unsafe.putInt(obj, j12, i14);
                return I4;
            case 67:
                if (i15 != 0) {
                    return i11;
                }
                int iL3 = e.L(bArr, i11, aVar);
                unsafe.putObject(obj, j11, Long.valueOf(i.d(aVar.f8746b)));
                unsafe.putInt(obj, j12, i14);
                return iL3;
            case 68:
                if (i15 != 3) {
                    return i11;
                }
                Object objL2 = L(obj, i14, i18);
                int iN = e.N(objL2, p(i18), bArr, i11, i12, (i13 & (-8)) | 4, aVar);
                m0(obj, i14, i18, objL2);
                return iN;
            default:
                return i11;
        }
    }

    private int Z(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, long j12, e.a aVar) throws InvalidProtocolBufferException {
        int iJ;
        Unsafe unsafe = f8881s;
        w.d dVarMutableCopyWithCapacity = (w.d) unsafe.getObject(obj, j12);
        if (!dVarMutableCopyWithCapacity.isModifiable()) {
            int size = dVarMutableCopyWithCapacity.size();
            dVarMutableCopyWithCapacity = dVarMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j12, dVarMutableCopyWithCapacity);
        }
        switch (i17) {
            case 18:
            case 35:
                if (i15 == 2) {
                    return e.s(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 1 ? e.f(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 19:
            case 36:
                if (i15 == 2) {
                    return e.v(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 5 ? e.m(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i15 == 2) {
                    return e.z(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 0 ? e.M(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i15 == 2) {
                    return e.y(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 0 ? e.J(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i15 == 2) {
                    return e.u(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 1 ? e.k(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i15 == 2) {
                    return e.t(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 5 ? e.i(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 25:
            case 42:
                if (i15 == 2) {
                    return e.r(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 0 ? e.b(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 26:
                if (i15 == 2) {
                    return (j11 & 536870912) == 0 ? e.D(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : e.E(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar);
                }
                return i11;
            case 27:
                return i15 == 2 ? e.q(p(i16), i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 28:
                return i15 == 2 ? e.d(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 30:
            case 44:
                if (i15 == 2) {
                    iJ = e.y(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                } else {
                    if (i15 != 0) {
                        return i11;
                    }
                    iJ = e.J(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar);
                }
                d1.z(obj, i14, dVarMutableCopyWithCapacity, n(i16), null, this.f8896o);
                return iJ;
            case 33:
            case 47:
                if (i15 == 2) {
                    return e.w(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 0 ? e.A(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i15 == 2) {
                    return e.x(bArr, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i15 == 0 ? e.B(i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return i15 == 3 ? e.o(p(i16), i13, bArr, i11, i12, dVarMutableCopyWithCapacity, aVar) : i11;
            default:
                return i11;
        }
    }

    private int a0(int i11) {
        if (i11 < this.f8884c || i11 > this.f8885d) {
            return -1;
        }
        return k0(i11, 0);
    }

    private int b0(int i11, int i12) {
        if (i11 < this.f8884c || i11 > this.f8885d) {
            return -1;
        }
        return k0(i11, i12);
    }

    private int c0(int i11) {
        return this.f8882a[i11 + 2];
    }

    private boolean d(Object obj, Object obj2, int i11) {
        return u(obj, i11) == u(obj2, i11);
    }

    private void d0(Object obj, long j11, a1 a1Var, b1 b1Var, o oVar) {
        a1Var.e(this.f8895n.c(obj, j11), b1Var, oVar);
    }

    private static boolean e(Object obj, long j11) {
        return k1.t(obj, j11);
    }

    private void e0(Object obj, int i11, a1 a1Var, b1 b1Var, o oVar) {
        a1Var.b(this.f8895n.c(obj, Q(i11)), b1Var, oVar);
    }

    private static void f(Object obj) {
        if (A(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    private void f0(Object obj, int i11, a1 a1Var) {
        if (t(i11)) {
            k1.W(obj, Q(i11), a1Var.readStringRequireUtf8());
        } else if (this.f8888g) {
            k1.W(obj, Q(i11), a1Var.readString());
        } else {
            k1.W(obj, Q(i11), a1Var.readBytes());
        }
    }

    private int g(byte[] bArr, int i11, int i12, h0.a aVar, Map map, e.a aVar2) throws InvalidProtocolBufferException {
        int iH;
        int I = e.I(bArr, i11, aVar2);
        int i13 = aVar2.f8745a;
        if (i13 < 0 || i13 > i12 - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i14 = I + i13;
        Object obj = aVar.f8782b;
        Object obj2 = aVar.f8784d;
        while (I < i14) {
            int i15 = I + 1;
            int i16 = bArr[I];
            if (i16 < 0) {
                iH = e.H(i16, bArr, i15, aVar2);
                i16 = aVar2.f8745a;
            } else {
                iH = i15;
            }
            int i17 = i16 >>> 3;
            int i18 = i16 & 7;
            if (i17 != 1) {
                if (i17 == 2 && i18 == aVar.f8783c.getWireType()) {
                    I = h(bArr, iH, i12, aVar.f8783c, aVar.f8784d.getClass(), aVar2);
                    obj2 = aVar2.f8747c;
                } else {
                    I = e.P(i16, bArr, iH, i12, aVar2);
                }
            } else if (i18 == aVar.f8781a.getWireType()) {
                I = h(bArr, iH, i12, aVar.f8781a, null, aVar2);
                obj = aVar2.f8747c;
            } else {
                I = e.P(i16, bArr, iH, i12, aVar2);
            }
        }
        if (I != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i14;
    }

    private void g0(Object obj, int i11, a1 a1Var) {
        if (t(i11)) {
            a1Var.readStringListRequireUtf8(this.f8895n.c(obj, Q(i11)));
        } else {
            a1Var.readStringList(this.f8895n.c(obj, Q(i11)));
        }
    }

    private int h(byte[] bArr, int i11, int i12, WireFormat.FieldType fieldType, Class cls, e.a aVar) {
        switch (a.f8899a[fieldType.ordinal()]) {
            case 1:
                int iL = e.L(bArr, i11, aVar);
                aVar.f8747c = Boolean.valueOf(aVar.f8746b != 0);
                return iL;
            case 2:
                return e.c(bArr, i11, aVar);
            case 3:
                aVar.f8747c = Double.valueOf(e.e(bArr, i11));
                return i11 + 8;
            case 4:
            case 5:
                aVar.f8747c = Integer.valueOf(e.h(bArr, i11));
                return i11 + 4;
            case 6:
            case 7:
                aVar.f8747c = Long.valueOf(e.j(bArr, i11));
                return i11 + 8;
            case 8:
                aVar.f8747c = Float.valueOf(e.l(bArr, i11));
                return i11 + 4;
            case 9:
            case 10:
            case 11:
                int I = e.I(bArr, i11, aVar);
                aVar.f8747c = Integer.valueOf(aVar.f8745a);
                return I;
            case 12:
            case 13:
                int iL2 = e.L(bArr, i11, aVar);
                aVar.f8747c = Long.valueOf(aVar.f8746b);
                return iL2;
            case 14:
                return e.p(x0.a().c(cls), bArr, i11, i12, aVar);
            case 15:
                int I2 = e.I(bArr, i11, aVar);
                aVar.f8747c = Integer.valueOf(i.c(aVar.f8745a));
                return I2;
            case 16:
                int iL3 = e.L(bArr, i11, aVar);
                aVar.f8747c = Long.valueOf(i.d(aVar.f8746b));
                return iL3;
            case 17:
                return e.F(bArr, i11, aVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static Field h0(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static double i(Object obj, long j11) {
        return k1.A(obj, j11);
    }

    private void i0(Object obj, int i11) {
        int iC0 = c0(i11);
        long j11 = 1048575 & iC0;
        if (j11 == 1048575) {
            return;
        }
        k1.U(obj, j11, (1 << (iC0 >>> 20)) | k1.C(obj, j11));
    }

    private boolean j(Object obj, Object obj2, int i11) {
        int iO0 = o0(i11);
        long jQ = Q(iO0);
        switch (n0(iO0)) {
            case 0:
                return d(obj, obj2, i11) && Double.doubleToLongBits(k1.A(obj, jQ)) == Double.doubleToLongBits(k1.A(obj2, jQ));
            case 1:
                return d(obj, obj2, i11) && Float.floatToIntBits(k1.B(obj, jQ)) == Float.floatToIntBits(k1.B(obj2, jQ));
            case 2:
                return d(obj, obj2, i11) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 3:
                return d(obj, obj2, i11) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 4:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 5:
                return d(obj, obj2, i11) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 6:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 7:
                return d(obj, obj2, i11) && k1.t(obj, jQ) == k1.t(obj2, jQ);
            case 8:
                return d(obj, obj2, i11) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 9:
                return d(obj, obj2, i11) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 10:
                return d(obj, obj2, i11) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 11:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 12:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 13:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 14:
                return d(obj, obj2, i11) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 15:
                return d(obj, obj2, i11) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 16:
                return d(obj, obj2, i11) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 17:
                return d(obj, obj2, i11) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 50:
                return d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
            case 66:
            case 67:
            case 68:
                return B(obj, obj2, i11) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            default:
                return true;
        }
    }

    private void j0(Object obj, int i11, int i12) {
        k1.U(obj, c0(i12) & 1048575, i11);
    }

    private Object k(Object obj, int i11, Object obj2, h1 h1Var, Object obj3) {
        w.c cVarN;
        int iP = P(i11);
        Object objG = k1.G(obj, Q(o0(i11)));
        return (objG == null || (cVarN = n(i11)) == null) ? obj2 : l(i11, iP, this.f8898q.forMutableMapData(objG), cVarN, obj2, h1Var, obj3);
    }

    private int k0(int i11, int i12) {
        int length = (this.f8882a.length / 3) - 1;
        while (i12 <= length) {
            int i13 = (length + i12) >>> 1;
            int i14 = i13 * 3;
            int iP = P(i14);
            if (i11 == iP) {
                return i14;
            }
            if (i11 < iP) {
                length = i13 - 1;
            } else {
                i12 = i13 + 1;
            }
        }
        return -1;
    }

    private Object l(int i11, int i12, Map map, w.c cVar, Object obj, h1 h1Var, Object obj2) {
        h0.a aVarForMapMetadata = this.f8898q.forMapMetadata(o(i11));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!cVar.isInRange(((Integer) entry.getValue()).intValue())) {
                if (obj == null) {
                    obj = h1Var.f(obj2);
                }
                ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(h0.b(aVarForMapMetadata, entry.getKey(), entry.getValue()));
                try {
                    h0.e(fVarNewCodedBuilder.b(), aVarForMapMetadata, entry.getKey(), entry.getValue());
                    h1Var.d(obj, i12, fVarNewCodedBuilder.a());
                    it.remove();
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            }
        }
        return obj;
    }

    private void l0(Object obj, int i11, Object obj2) {
        f8881s.putObject(obj, Q(o0(i11)), obj2);
        i0(obj, i11);
    }

    private static float m(Object obj, long j11) {
        return k1.B(obj, j11);
    }

    private void m0(Object obj, int i11, int i12, Object obj2) {
        f8881s.putObject(obj, Q(o0(i12)), obj2);
        j0(obj, i11, i12);
    }

    private w.c n(int i11) {
        return (w.c) this.f8883b[((i11 / 3) * 2) + 1];
    }

    private static int n0(int i11) {
        return (i11 & 267386880) >>> 20;
    }

    private Object o(int i11) {
        return this.f8883b[(i11 / 3) * 2];
    }

    private int o0(int i11) {
        return this.f8882a[i11 + 1];
    }

    private b1 p(int i11) {
        int i12 = (i11 / 3) * 2;
        b1 b1Var = (b1) this.f8883b[i12];
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1VarC = x0.a().c((Class) this.f8883b[i12 + 1]);
        this.f8883b[i12] = b1VarC;
        return b1VarC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private void p0(Object obj, Writer writer) {
        Map.Entry entry;
        Iterator it;
        int i11;
        Map.Entry entry2;
        int i12;
        int i13;
        Map.Entry entry3;
        boolean z10;
        if (this.f8887f) {
            s sVarC = this.f8897p.c(obj);
            if (sVarC.k()) {
                entry = null;
                it = null;
            } else {
                Iterator itP = sVarC.p();
                entry = (Map.Entry) itP.next();
                it = itP;
            }
        } else {
            entry = null;
            it = null;
        }
        int length = this.f8882a.length;
        Unsafe unsafe = f8881s;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        while (i17 < length) {
            int iO0 = o0(i17);
            int iP = P(i17);
            int iN0 = n0(iO0);
            if (iN0 <= 17) {
                int i18 = this.f8882a[i17 + 2];
                int i19 = i18 & i14;
                if (i19 != i15) {
                    i16 = i19 == i14 ? 0 : unsafe.getInt(obj, i19);
                    i15 = i19;
                } else {
                    entry = entry;
                }
                int i20 = 1 << (i18 >>> 20);
                i11 = i15;
                i12 = i20;
                entry2 = entry;
            } else {
                i11 = i15;
                entry2 = entry;
                i12 = 0;
            }
            int i21 = i16;
            while (entry2 != null && this.f8897p.a(entry2) <= iP) {
                this.f8897p.j(writer, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jQ = Q(iO0);
            switch (iN0) {
                case 0:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeDouble(iP, i(obj, jQ));
                    }
                    break;
                case 1:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeFloat(iP, m(obj, jQ));
                    }
                    break;
                case 2:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 3:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeUInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 4:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 5:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeFixed64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 6:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeFixed32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 7:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeBool(iP, e(obj, jQ));
                    }
                    break;
                case 8:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        s0(iP, unsafe.getObject(obj, jQ), writer);
                    }
                    break;
                case 9:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.c(iP, unsafe.getObject(obj, jQ), p(i17));
                    }
                    break;
                case 10:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.b(iP, (ByteString) unsafe.getObject(obj, jQ));
                    }
                    break;
                case 11:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeUInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 12:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeEnum(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 13:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeSFixed32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 14:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeSFixed64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 15:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeSInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 16:
                    i13 = length;
                    entry3 = entry2;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.writeSInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 17:
                    entry3 = entry2;
                    i13 = length;
                    if (v(obj, i17, i11, i21, i12)) {
                        writer.e(iP, unsafe.getObject(obj, jQ), p(i17));
                    }
                    break;
                case 18:
                    z10 = false;
                    d1.N(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 19:
                    z10 = false;
                    d1.R(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 20:
                    z10 = false;
                    d1.U(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 21:
                    z10 = false;
                    d1.c0(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 22:
                    z10 = false;
                    d1.T(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 23:
                    z10 = false;
                    d1.Q(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 24:
                    z10 = false;
                    d1.P(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 25:
                    z10 = false;
                    d1.L(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 26:
                    d1.a0(P(i17), (List) unsafe.getObject(obj, jQ), writer);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 27:
                    d1.V(P(i17), (List) unsafe.getObject(obj, jQ), writer, p(i17));
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 28:
                    d1.M(P(i17), (List) unsafe.getObject(obj, jQ), writer);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    d1.b0(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 30:
                    z10 = false;
                    d1.O(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    d1.W(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 32:
                    z10 = false;
                    d1.X(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 33:
                    z10 = false;
                    d1.Y(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 34:
                    z10 = false;
                    d1.Z(P(i17), (List) unsafe.getObject(obj, jQ), writer, false);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 35:
                    d1.N(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 36:
                    d1.R(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 37:
                    d1.U(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 38:
                    d1.c0(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 39:
                    d1.T(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 40:
                    d1.Q(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 41:
                    d1.P(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 42:
                    d1.L(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 43:
                    d1.b0(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 44:
                    d1.O(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 45:
                    d1.W(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 46:
                    d1.X(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 47:
                    d1.Y(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    d1.Z(P(i17), (List) unsafe.getObject(obj, jQ), writer, true);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    d1.S(P(i17), (List) unsafe.getObject(obj, jQ), writer, p(i17));
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 50:
                    r0(writer, iP, unsafe.getObject(obj, jQ), i17);
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeDouble(iP, S(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeFloat(iP, T(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeInt64(iP, V(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeUInt64(iP, V(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeInt32(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeFixed64(iP, V(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 57:
                    if (C(obj, iP, i17)) {
                        writer.writeFixed32(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        writer.writeBool(iP, R(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 59:
                    if (C(obj, iP, i17)) {
                        s0(iP, unsafe.getObject(obj, jQ), writer);
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 60:
                    if (C(obj, iP, i17)) {
                        writer.c(iP, unsafe.getObject(obj, jQ), p(i17));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 61:
                    if (C(obj, iP, i17)) {
                        writer.b(iP, (ByteString) unsafe.getObject(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 62:
                    if (C(obj, iP, i17)) {
                        writer.writeUInt32(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 63:
                    if (C(obj, iP, i17)) {
                        writer.writeEnum(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 64:
                    if (C(obj, iP, i17)) {
                        writer.writeSFixed32(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (C(obj, iP, i17)) {
                        writer.writeSFixed64(iP, V(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 66:
                    if (C(obj, iP, i17)) {
                        writer.writeSInt32(iP, U(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 67:
                    if (C(obj, iP, i17)) {
                        writer.writeSInt64(iP, V(obj, jQ));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                case 68:
                    if (C(obj, iP, i17)) {
                        writer.e(iP, unsafe.getObject(obj, jQ), p(i17));
                    }
                    i13 = length;
                    entry3 = entry2;
                    break;
                default:
                    i13 = length;
                    entry3 = entry2;
                    break;
            }
            i17 += 3;
            i15 = i11;
            entry = entry3;
            i16 = i21;
            length = i13;
            i14 = 1048575;
        }
        while (entry != null) {
            this.f8897p.j(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        t0(this.f8896o, obj, writer);
    }

    static i1 q(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        i1 i1Var = generatedMessageLite.unknownFields;
        if (i1Var != i1.c()) {
            return i1Var;
        }
        i1 i1VarK = i1.k();
        generatedMessageLite.unknownFields = i1VarK;
        return i1VarK;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void q0(Object obj, Writer writer) {
        Iterator itE;
        Map.Entry entry;
        t0(this.f8896o, obj, writer);
        if (this.f8887f) {
            s sVarC = this.f8897p.c(obj);
            if (sVarC.k()) {
                itE = null;
                entry = null;
            } else {
                itE = sVarC.e();
                entry = (Map.Entry) itE.next();
            }
        } else {
            itE = null;
            entry = null;
        }
        for (int length = this.f8882a.length - 3; length >= 0; length -= 3) {
            int iO0 = o0(length);
            int iP = P(length);
            while (entry != null && this.f8897p.a(entry) > iP) {
                this.f8897p.j(writer, entry);
                entry = itE.hasNext() ? (Map.Entry) itE.next() : null;
            }
            switch (n0(iO0)) {
                case 0:
                    if (u(obj, length)) {
                        writer.writeDouble(iP, i(obj, Q(iO0)));
                    }
                    break;
                case 1:
                    if (u(obj, length)) {
                        writer.writeFloat(iP, m(obj, Q(iO0)));
                    }
                    break;
                case 2:
                    if (u(obj, length)) {
                        writer.writeInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 3:
                    if (u(obj, length)) {
                        writer.writeUInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 4:
                    if (u(obj, length)) {
                        writer.writeInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 5:
                    if (u(obj, length)) {
                        writer.writeFixed64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 6:
                    if (u(obj, length)) {
                        writer.writeFixed32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 7:
                    if (u(obj, length)) {
                        writer.writeBool(iP, e(obj, Q(iO0)));
                    }
                    break;
                case 8:
                    if (u(obj, length)) {
                        s0(iP, k1.G(obj, Q(iO0)), writer);
                    }
                    break;
                case 9:
                    if (u(obj, length)) {
                        writer.c(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 10:
                    if (u(obj, length)) {
                        writer.b(iP, (ByteString) k1.G(obj, Q(iO0)));
                    }
                    break;
                case 11:
                    if (u(obj, length)) {
                        writer.writeUInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 12:
                    if (u(obj, length)) {
                        writer.writeEnum(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 13:
                    if (u(obj, length)) {
                        writer.writeSFixed32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 14:
                    if (u(obj, length)) {
                        writer.writeSFixed64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 15:
                    if (u(obj, length)) {
                        writer.writeSInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 16:
                    if (u(obj, length)) {
                        writer.writeSInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 17:
                    if (u(obj, length)) {
                        writer.e(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 18:
                    d1.N(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 19:
                    d1.R(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 20:
                    d1.U(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 21:
                    d1.c0(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 22:
                    d1.T(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 23:
                    d1.Q(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 24:
                    d1.P(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 25:
                    d1.L(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 26:
                    d1.a0(P(length), (List) k1.G(obj, Q(iO0)), writer);
                    break;
                case 27:
                    d1.V(P(length), (List) k1.G(obj, Q(iO0)), writer, p(length));
                    break;
                case 28:
                    d1.M(P(length), (List) k1.G(obj, Q(iO0)), writer);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    d1.b0(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 30:
                    d1.O(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    d1.W(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 32:
                    d1.X(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 33:
                    d1.Y(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 34:
                    d1.Z(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 35:
                    d1.N(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 36:
                    d1.R(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 37:
                    d1.U(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 38:
                    d1.c0(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 39:
                    d1.T(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 40:
                    d1.Q(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 41:
                    d1.P(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 42:
                    d1.L(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 43:
                    d1.b0(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 44:
                    d1.O(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 45:
                    d1.W(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 46:
                    d1.X(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 47:
                    d1.Y(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    d1.Z(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    d1.S(P(length), (List) k1.G(obj, Q(iO0)), writer, p(length));
                    break;
                case 50:
                    r0(writer, iP, k1.G(obj, Q(iO0)), length);
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeDouble(iP, S(obj, Q(iO0)));
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeFloat(iP, T(obj, Q(iO0)));
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeUInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeFixed64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 57:
                    if (C(obj, iP, length)) {
                        writer.writeFixed32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeBool(iP, R(obj, Q(iO0)));
                    }
                    break;
                case 59:
                    if (C(obj, iP, length)) {
                        s0(iP, k1.G(obj, Q(iO0)), writer);
                    }
                    break;
                case 60:
                    if (C(obj, iP, length)) {
                        writer.c(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 61:
                    if (C(obj, iP, length)) {
                        writer.b(iP, (ByteString) k1.G(obj, Q(iO0)));
                    }
                    break;
                case 62:
                    if (C(obj, iP, length)) {
                        writer.writeUInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 63:
                    if (C(obj, iP, length)) {
                        writer.writeEnum(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 64:
                    if (C(obj, iP, length)) {
                        writer.writeSFixed32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (C(obj, iP, length)) {
                        writer.writeSFixed64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 66:
                    if (C(obj, iP, length)) {
                        writer.writeSInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 67:
                    if (C(obj, iP, length)) {
                        writer.writeSInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 68:
                    if (C(obj, iP, length)) {
                        writer.e(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.f8897p.j(writer, entry);
            entry = itE.hasNext() ? (Map.Entry) itE.next() : null;
        }
    }

    private int r(h1 h1Var, Object obj) {
        return h1Var.h(h1Var.g(obj));
    }

    private void r0(Writer writer, int i11, Object obj, int i12) {
        if (obj != null) {
            writer.d(i11, this.f8898q.forMapMetadata(o(i12)), this.f8898q.forMapData(obj));
        }
    }

    private static int s(Object obj, long j11) {
        return k1.C(obj, j11);
    }

    private void s0(int i11, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.writeString(i11, (String) obj);
        } else {
            writer.b(i11, (ByteString) obj);
        }
    }

    private static boolean t(int i11) {
        return (i11 & ASTNode.DISCARD) != 0;
    }

    private void t0(h1 h1Var, Object obj, Writer writer) {
        h1Var.t(h1Var.g(obj), writer);
    }

    private boolean u(Object obj, int i11) {
        int iC0 = c0(i11);
        long j11 = 1048575 & iC0;
        if (j11 != 1048575) {
            return (k1.C(obj, j11) & (1 << (iC0 >>> 20))) != 0;
        }
        int iO0 = o0(i11);
        long jQ = Q(iO0);
        switch (n0(iO0)) {
            case 0:
                return Double.doubleToRawLongBits(k1.A(obj, jQ)) != 0;
            case 1:
                return Float.floatToRawIntBits(k1.B(obj, jQ)) != 0;
            case 2:
                return k1.E(obj, jQ) != 0;
            case 3:
                return k1.E(obj, jQ) != 0;
            case 4:
                return k1.C(obj, jQ) != 0;
            case 5:
                return k1.E(obj, jQ) != 0;
            case 6:
                return k1.C(obj, jQ) != 0;
            case 7:
                return k1.t(obj, jQ);
            case 8:
                Object objG = k1.G(obj, jQ);
                if (objG instanceof String) {
                    return !((String) objG).isEmpty();
                }
                if (objG instanceof ByteString) {
                    return !ByteString.EMPTY.equals(objG);
                }
                throw new IllegalArgumentException();
            case 9:
                return k1.G(obj, jQ) != null;
            case 10:
                return !ByteString.EMPTY.equals(k1.G(obj, jQ));
            case 11:
                return k1.C(obj, jQ) != 0;
            case 12:
                return k1.C(obj, jQ) != 0;
            case 13:
                return k1.C(obj, jQ) != 0;
            case 14:
                return k1.E(obj, jQ) != 0;
            case 15:
                return k1.C(obj, jQ) != 0;
            case 16:
                return k1.E(obj, jQ) != 0;
            case 17:
                return k1.G(obj, jQ) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean v(Object obj, int i11, int i12, int i13, int i14) {
        if (i12 == 1048575) {
            return u(obj, i11);
        }
        return (i13 & i14) != 0;
    }

    private static boolean w(Object obj, int i11, b1 b1Var) {
        return b1Var.isInitialized(k1.G(obj, Q(i11)));
    }

    private static boolean x(int i11) {
        return (i11 & Integer.MIN_VALUE) != 0;
    }

    private boolean y(Object obj, int i11, int i12) {
        List list = (List) k1.G(obj, Q(i11));
        if (list.isEmpty()) {
            return true;
        }
        b1 b1VarP = p(i12);
        for (int i13 = 0; i13 < list.size(); i13++) {
            if (!b1VarP.isInitialized(list.get(i13))) {
                return false;
            }
        }
        return true;
    }

    private boolean z(Object obj, int i11, int i12) {
        Map mapForMapData = this.f8898q.forMapData(k1.G(obj, Q(i11)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.f8898q.forMapMetadata(o(i12)).f8783c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        b1 b1VarC = null;
        for (Object obj2 : mapForMapData.values()) {
            if (b1VarC == null) {
                b1VarC = x0.a().c(obj2.getClass());
            }
            if (!b1VarC.isInitialized(obj2)) {
                return false;
            }
        }
        return true;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    int X(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, androidx.datastore.preferences.protobuf.e.a r36) {
        /*
            Method dump skipped, instruction units count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.q0.X(java.lang.Object, byte[], int, int, int, androidx.datastore.preferences.protobuf.e$a):int");
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void a(Object obj, a1 a1Var, o oVar) throws Throwable {
        oVar.getClass();
        f(obj);
        F(this.f8896o, this.f8897p, obj, a1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void b(Object obj, Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            q0(obj, writer);
        } else {
            p0(obj, writer);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void c(Object obj, byte[] bArr, int i11, int i12, e.a aVar) {
        X(obj, bArr, i11, i12, 0, aVar);
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public boolean equals(Object obj, Object obj2) {
        int length = this.f8882a.length;
        for (int i11 = 0; i11 < length; i11 += 3) {
            if (!j(obj, obj2, i11)) {
                return false;
            }
        }
        if (!this.f8896o.g(obj).equals(this.f8896o.g(obj2))) {
            return false;
        }
        if (this.f8887f) {
            return this.f8897p.c(obj).equals(this.f8897p.c(obj2));
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[PHI: r12
  0x0079: PHI (r12v4 int) = 
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v8 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v9 int)
  (r12v1 int)
 binds: [B:21:0x0060, B:225:0x0560, B:222:0x054a, B:216:0x0522, B:213:0x0503, B:210:0x04e6, B:207:0x04cb, B:204:0x04b0, B:201:0x0498, B:198:0x0482, B:195:0x0468, B:192:0x044d, B:189:0x042c, B:165:0x032e, B:159:0x0310, B:153:0x02f2, B:147:0x02d4, B:141:0x02b6, B:135:0x0298, B:129:0x027a, B:123:0x025c, B:117:0x023e, B:111:0x0221, B:105:0x0204, B:99:0x01e7, B:93:0x01ca, B:86:0x01aa, B:81:0x0176, B:78:0x016a, B:75:0x015a, B:72:0x014a, B:69:0x013a, B:66:0x012e, B:63:0x0122, B:60:0x0116, B:54:0x00f8, B:51:0x00e5, B:48:0x00d4, B:45:0x00c5, B:42:0x00b6, B:40:0x00b0, B:38:0x00a9, B:35:0x009e, B:32:0x008f, B:29:0x0080, B:26:0x0078, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.datastore.preferences.protobuf.b1
    public int getSerializedSize(Object obj) {
        int i11;
        int i12;
        int i13;
        int iJ;
        int iE;
        int I;
        boolean z10;
        int iF;
        int i14;
        int iS;
        int iU;
        Unsafe unsafe = f8881s;
        int i15 = 1048575;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i18 < this.f8882a.length) {
            int iO0 = o0(i18);
            int iN0 = n0(iO0);
            int iP = P(i18);
            int i20 = this.f8882a[i18 + 2];
            int i21 = i20 & i15;
            if (iN0 <= 17) {
                if (i21 != i16) {
                    i17 = i21 == i15 ? 0 : unsafe.getInt(obj, i21);
                    i16 = i21;
                }
                i11 = i16;
                i12 = i17;
                i13 = 1 << (i20 >>> 20);
            } else {
                i11 = i16;
                i12 = i17;
                i13 = 0;
            }
            long jQ = Q(iO0);
            if (iN0 < FieldType.DOUBLE_LIST_PACKED.id() || iN0 > FieldType.SINT64_LIST_PACKED.id()) {
                i21 = 0;
            }
            switch (iN0) {
                case 0:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.j(iP, 0.0d);
                        i19 += iJ;
                    }
                    break;
                case 1:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.r(iP, 0.0f);
                        i19 += iJ;
                    }
                    break;
                case 2:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.y(iP, unsafe.getLong(obj, jQ));
                        i19 += iJ;
                    }
                    break;
                case 3:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.V(iP, unsafe.getLong(obj, jQ));
                        i19 += iJ;
                    }
                    break;
                case 4:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.w(iP, unsafe.getInt(obj, jQ));
                        i19 += iJ;
                    }
                    break;
                case 5:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.p(iP, 0L);
                        i19 += iJ;
                    }
                    break;
                case 6:
                    if (v(obj, i18, i11, i12, i13)) {
                        iJ = CodedOutputStream.n(iP, 0);
                        i19 += iJ;
                    }
                    break;
                case 7:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.e(iP, true);
                        i19 += iE;
                    }
                    break;
                case 8:
                    if (v(obj, i18, i11, i12, i13)) {
                        Object object = unsafe.getObject(obj, jQ);
                        iE = object instanceof ByteString ? CodedOutputStream.h(iP, (ByteString) object) : CodedOutputStream.Q(iP, (String) object);
                        i19 += iE;
                    }
                    break;
                case 9:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = d1.o(iP, unsafe.getObject(obj, jQ), p(i18));
                        i19 += iE;
                    }
                    break;
                case 10:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.h(iP, (ByteString) unsafe.getObject(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 11:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.T(iP, unsafe.getInt(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 12:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.l(iP, unsafe.getInt(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 13:
                    if (v(obj, i18, i11, i12, i13)) {
                        I = CodedOutputStream.I(iP, 0);
                        i19 += I;
                    }
                    break;
                case 14:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.K(iP, 0L);
                        i19 += iE;
                    }
                    break;
                case 15:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.M(iP, unsafe.getInt(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 16:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.O(iP, unsafe.getLong(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 17:
                    if (v(obj, i18, i11, i12, i13)) {
                        iE = CodedOutputStream.t(iP, (n0) unsafe.getObject(obj, jQ), p(i18));
                        i19 += iE;
                    }
                    break;
                case 18:
                    iE = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iE;
                    break;
                case 19:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 20:
                    z10 = false;
                    iF = d1.m(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 21:
                    z10 = false;
                    iF = d1.x(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 22:
                    z10 = false;
                    iF = d1.k(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 23:
                    z10 = false;
                    iF = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 24:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 25:
                    z10 = false;
                    iF = d1.a(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 26:
                    iE = d1.u(iP, (List) unsafe.getObject(obj, jQ));
                    i19 += iE;
                    break;
                case 27:
                    iE = d1.p(iP, (List) unsafe.getObject(obj, jQ), p(i18));
                    i19 += iE;
                    break;
                case 28:
                    iE = d1.c(iP, (List) unsafe.getObject(obj, jQ));
                    i19 += iE;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    iE = d1.v(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iE;
                    break;
                case 30:
                    z10 = false;
                    iF = d1.d(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 32:
                    z10 = false;
                    iF = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 33:
                    z10 = false;
                    iF = d1.q(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 34:
                    z10 = false;
                    iF = d1.s(iP, (List) unsafe.getObject(obj, jQ), false);
                    i19 += iF;
                    break;
                case 35:
                    i14 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 36:
                    i14 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 37:
                    i14 = d1.n((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 38:
                    i14 = d1.y((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 39:
                    i14 = d1.l((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 40:
                    i14 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 41:
                    i14 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 42:
                    i14 = d1.b((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 43:
                    i14 = d1.w((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 44:
                    i14 = d1.e((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 45:
                    i14 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 46:
                    i14 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case 47:
                    i14 = d1.r((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    i14 = d1.t((List) unsafe.getObject(obj, jQ));
                    if (i14 > 0) {
                        if (this.f8890i) {
                            unsafe.putInt(obj, i21, i14);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i14);
                        I = iS + iU + i14;
                        i19 += I;
                    }
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    iE = d1.j(iP, (List) unsafe.getObject(obj, jQ), p(i18));
                    i19 += iE;
                    break;
                case 50:
                    iE = this.f8898q.getSerializedSize(iP, unsafe.getObject(obj, jQ), o(i18));
                    i19 += iE;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.j(iP, 0.0d);
                        i19 += iE;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.r(iP, 0.0f);
                        i19 += iE;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.y(iP, V(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.V(iP, V(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.w(iP, U(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.p(iP, 0L);
                        i19 += iE;
                    }
                    break;
                case 57:
                    if (C(obj, iP, i18)) {
                        I = CodedOutputStream.n(iP, 0);
                        i19 += I;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.e(iP, true);
                        i19 += iE;
                    }
                    break;
                case 59:
                    if (C(obj, iP, i18)) {
                        Object object2 = unsafe.getObject(obj, jQ);
                        iE = object2 instanceof ByteString ? CodedOutputStream.h(iP, (ByteString) object2) : CodedOutputStream.Q(iP, (String) object2);
                        i19 += iE;
                    }
                    break;
                case 60:
                    if (C(obj, iP, i18)) {
                        iE = d1.o(iP, unsafe.getObject(obj, jQ), p(i18));
                        i19 += iE;
                    }
                    break;
                case 61:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.h(iP, (ByteString) unsafe.getObject(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 62:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.T(iP, U(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 63:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.l(iP, U(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 64:
                    if (C(obj, iP, i18)) {
                        I = CodedOutputStream.I(iP, 0);
                        i19 += I;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.K(iP, 0L);
                        i19 += iE;
                    }
                    break;
                case 66:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.M(iP, U(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 67:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.O(iP, V(obj, jQ));
                        i19 += iE;
                    }
                    break;
                case 68:
                    if (C(obj, iP, i18)) {
                        iE = CodedOutputStream.t(iP, (n0) unsafe.getObject(obj, jQ), p(i18));
                        i19 += iE;
                    }
                    break;
                default:
                    break;
            }
            i18 += 3;
            i16 = i11;
            i17 = i12;
            i15 = 1048575;
        }
        int iR = i19 + r(this.f8896o, obj);
        return this.f8887f ? iR + this.f8897p.c(obj).i() : iR;
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public int hashCode(Object obj) {
        int i11;
        int iF;
        int length = this.f8882a.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iO0 = o0(i13);
            int iP = P(i13);
            long jQ = Q(iO0);
            int iHashCode = 37;
            switch (n0(iO0)) {
                case 0:
                    i11 = i12 * 53;
                    iF = w.f(Double.doubleToLongBits(k1.A(obj, jQ)));
                    i12 = i11 + iF;
                    break;
                case 1:
                    i11 = i12 * 53;
                    iF = Float.floatToIntBits(k1.B(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 2:
                    i11 = i12 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 3:
                    i11 = i12 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 4:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 5:
                    i11 = i12 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 6:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 7:
                    i11 = i12 * 53;
                    iF = w.c(k1.t(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 8:
                    i11 = i12 * 53;
                    iF = ((String) k1.G(obj, jQ)).hashCode();
                    i12 = i11 + iF;
                    break;
                case 9:
                    Object objG = k1.G(obj, jQ);
                    if (objG != null) {
                        iHashCode = objG.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 10:
                    i11 = i12 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i12 = i11 + iF;
                    break;
                case 11:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 12:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 13:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 14:
                    i11 = i12 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 15:
                    i11 = i12 * 53;
                    iF = k1.C(obj, jQ);
                    i12 = i11 + iF;
                    break;
                case 16:
                    i11 = i12 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i12 = i11 + iF;
                    break;
                case 17:
                    Object objG2 = k1.G(obj, jQ);
                    if (objG2 != null) {
                        iHashCode = objG2.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i11 = i12 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i12 = i11 + iF;
                    break;
                case 50:
                    i11 = i12 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i12 = i11 + iF;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(Double.doubleToLongBits(S(obj, jQ)));
                        i12 = i11 + iF;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = Float.floatToIntBits(T(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(V(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(V(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(V(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case 57:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.c(R(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case 59:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = ((String) k1.G(obj, jQ)).hashCode();
                        i12 = i11 + iF;
                    }
                    break;
                case 60:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i12 = i11 + iF;
                    }
                    break;
                case 61:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i12 = i11 + iF;
                    }
                    break;
                case 62:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case 63:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case 64:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(V(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case 66:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = U(obj, jQ);
                        i12 = i11 + iF;
                    }
                    break;
                case 67:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = w.f(V(obj, jQ));
                        i12 = i11 + iF;
                    }
                    break;
                case 68:
                    if (C(obj, iP, i13)) {
                        i11 = i12 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i12 = i11 + iF;
                    }
                    break;
            }
        }
        int iHashCode2 = (i12 * 53) + this.f8896o.g(obj).hashCode();
        return this.f8887f ? (iHashCode2 * 53) + this.f8897p.c(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.b1
    public final boolean isInitialized(Object obj) {
        int i11;
        int i12;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (i15 < this.f8892k) {
            int i16 = this.f8891j[i15];
            int iP = P(i16);
            int iO0 = o0(i16);
            int i17 = this.f8882a[i16 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i13) {
                if (i18 != 1048575) {
                    i14 = f8881s.getInt(obj, i18);
                }
                i12 = i14;
                i11 = i18;
            } else {
                i11 = i13;
                i12 = i14;
            }
            if (D(iO0) && !v(obj, i16, i11, i12, i19)) {
                return false;
            }
            int iN0 = n0(iO0);
            if (iN0 == 9 || iN0 == 17) {
                if (v(obj, i16, i11, i12, i19) && !w(obj, iO0, p(i16))) {
                    return false;
                }
            } else if (iN0 == 27) {
                if (!y(obj, iO0, i16)) {
                    return false;
                }
            } else if (iN0 == 60 || iN0 == 68) {
                if (C(obj, iP, i16) && !w(obj, iO0, p(i16))) {
                    return false;
                }
            } else if (iN0 != 49) {
                if (iN0 == 50 && !z(obj, iO0, i16)) {
                    return false;
                }
            } else if (!y(obj, iO0, i16)) {
                return false;
            }
            i15++;
            i13 = i11;
            i14 = i12;
        }
        return !this.f8887f || this.f8897p.c(obj).m();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.b1
    public void makeImmutable(Object obj) {
        if (A(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.l();
                generatedMessageLite.k();
                generatedMessageLite.B();
            }
            int length = this.f8882a.length;
            for (int i11 = 0; i11 < length; i11 += 3) {
                int iO0 = o0(i11);
                long jQ = Q(iO0);
                int iN0 = n0(iO0);
                if (iN0 != 9) {
                    if (iN0 != 60 && iN0 != 68) {
                        switch (iN0) {
                            case 17:
                                if (u(obj, i11)) {
                                    p(i11).makeImmutable(f8881s.getObject(obj, jQ));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.f8895n.a(obj, jQ);
                                break;
                            case 50:
                                Unsafe unsafe = f8881s;
                                Object object = unsafe.getObject(obj, jQ);
                                if (object != null) {
                                    unsafe.putObject(obj, jQ, this.f8898q.toImmutable(object));
                                }
                                break;
                        }
                    } else if (C(obj, P(i11), i11)) {
                        p(i11).makeImmutable(f8881s.getObject(obj, jQ));
                    }
                } else if (u(obj, i11)) {
                    p(i11).makeImmutable(f8881s.getObject(obj, jQ));
                }
            }
            this.f8896o.j(obj);
            if (this.f8887f) {
                this.f8897p.f(obj);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void mergeFrom(Object obj, Object obj2) {
        f(obj);
        obj2.getClass();
        for (int i11 = 0; i11 < this.f8882a.length; i11 += 3) {
            J(obj, obj2, i11);
        }
        d1.F(this.f8896o, obj, obj2);
        if (this.f8887f) {
            d1.D(this.f8897p, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public Object newInstance() {
        return this.f8894m.newInstance(this.f8886e);
    }
}
