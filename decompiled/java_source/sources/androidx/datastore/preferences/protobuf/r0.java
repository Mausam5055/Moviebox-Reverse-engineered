package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class r0 implements b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f8902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h1 f8903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f8904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f8905d;

    private r0(h1 h1Var, p pVar, n0 n0Var) {
        this.f8903b = h1Var;
        this.f8904c = pVar.e(n0Var);
        this.f8905d = pVar;
        this.f8902a = n0Var;
    }

    private int d(h1 h1Var, Object obj) {
        return h1Var.i(h1Var.g(obj));
    }

    private void e(h1 h1Var, p pVar, Object obj, a1 a1Var, o oVar) {
        Object objF = h1Var.f(obj);
        s sVarD = pVar.d(obj);
        while (a1Var.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!g(a1Var, oVar, pVar, sVarD, h1Var, objF)) {
                    return;
                }
            } finally {
                h1Var.o(obj, objF);
            }
        }
    }

    static r0 f(h1 h1Var, p pVar, n0 n0Var) {
        return new r0(h1Var, pVar, n0Var);
    }

    private boolean g(a1 a1Var, o oVar, p pVar, s sVar, h1 h1Var, Object obj) throws InvalidProtocolBufferException {
        int tag = a1Var.getTag();
        int uInt32 = 0;
        if (tag != WireFormat.f8728a) {
            if (WireFormat.b(tag) != 2) {
                return a1Var.skipField();
            }
            Object objB = pVar.b(oVar, this.f8902a, WireFormat.a(tag));
            if (objB == null) {
                return h1Var.m(obj, a1Var, 0);
            }
            pVar.h(a1Var, objB, oVar, sVar);
            return true;
        }
        Object objB2 = null;
        ByteString bytes = null;
        while (a1Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = a1Var.getTag();
            if (tag2 == WireFormat.f8730c) {
                uInt32 = a1Var.readUInt32();
                objB2 = pVar.b(oVar, this.f8902a, uInt32);
            } else if (tag2 == WireFormat.f8731d) {
                if (objB2 != null) {
                    pVar.h(a1Var, objB2, oVar, sVar);
                } else {
                    bytes = a1Var.readBytes();
                }
            } else if (!a1Var.skipField()) {
                break;
            }
        }
        if (a1Var.getTag() != WireFormat.f8729b) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (bytes != null) {
            if (objB2 != null) {
                pVar.i(bytes, objB2, oVar, sVar);
            } else {
                h1Var.d(obj, uInt32, bytes);
            }
        }
        return true;
    }

    private void h(h1 h1Var, Object obj, Writer writer) {
        h1Var.s(h1Var.g(obj), writer);
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void a(Object obj, a1 a1Var, o oVar) {
        e(this.f8903b, this.f8905d, obj, a1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void b(Object obj, Writer writer) {
        Iterator itP = this.f8905d.c(obj).p();
        if (itP.hasNext()) {
            android.support.v4.media.session.c.a(((Map.Entry) itP.next()).getKey());
            throw null;
        }
        h(this.f8903b, obj, writer);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    /* JADX WARN: Code duplicated, block: B:51:0x008c A[EDGE_INSN: B:51:0x008c->B:29:0x008c BREAK  A[LOOP:1: B:14:0x004a->B:54:0x004a], SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.b1
    public void c(Object obj, byte[] bArr, int i11, int i12, e.a aVar) throws InvalidProtocolBufferException {
        int I;
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        i1 i1VarK = generatedMessageLite.unknownFields;
        if (i1VarK == i1.c()) {
            i1VarK = i1.k();
            generatedMessageLite.unknownFields = i1VarK;
        }
        ((GeneratedMessageLite.c) obj).K();
        while (i11 < i12) {
            int I2 = e.I(bArr, i11, aVar);
            int i13 = aVar.f8745a;
            if (i13 == WireFormat.f8728a) {
                int i14 = 0;
                ByteString byteString = null;
                while (true) {
                    if (I2 >= i12) {
                        I = I2;
                        break;
                    }
                    I = e.I(bArr, I2, aVar);
                    int i15 = aVar.f8745a;
                    int iA = WireFormat.a(i15);
                    int iB = WireFormat.b(i15);
                    if (iA != 2) {
                        if (iA == 3 && iB == 2) {
                            I2 = e.c(bArr, I, aVar);
                            byteString = (ByteString) aVar.f8747c;
                        } else if (i15 == WireFormat.f8729b) {
                            break;
                        } else {
                            I2 = e.P(i15, bArr, I, i12, aVar);
                        }
                    } else if (iB == 0) {
                        I2 = e.I(bArr, I, aVar);
                        i14 = aVar.f8745a;
                        android.support.v4.media.session.c.a(this.f8905d.b(aVar.f8748d, this.f8902a, i14));
                    } else {
                        if (i15 == WireFormat.f8729b) {
                            break;
                            break;
                        }
                        I2 = e.P(i15, bArr, I, i12, aVar);
                    }
                }
                if (byteString != null) {
                    i1VarK.n(WireFormat.c(i14, 2), byteString);
                }
                i11 = I;
            } else if (WireFormat.b(i13) == 2) {
                android.support.v4.media.session.c.a(this.f8905d.b(aVar.f8748d, this.f8902a, WireFormat.a(i13)));
                i11 = e.G(i13, bArr, I2, i12, i1VarK, aVar);
            } else {
                i11 = e.P(i13, bArr, I2, i12, aVar);
            }
        }
        if (i11 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public boolean equals(Object obj, Object obj2) {
        if (!this.f8903b.g(obj).equals(this.f8903b.g(obj2))) {
            return false;
        }
        if (this.f8904c) {
            return this.f8905d.c(obj).equals(this.f8905d.c(obj2));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public int getSerializedSize(Object obj) {
        int iD = d(this.f8903b, obj);
        return this.f8904c ? iD + this.f8905d.c(obj).g() : iD;
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public int hashCode(Object obj) {
        int iHashCode = this.f8903b.g(obj).hashCode();
        return this.f8904c ? (iHashCode * 53) + this.f8905d.c(obj).hashCode() : iHashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public final boolean isInitialized(Object obj) {
        return this.f8905d.c(obj).m();
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void makeImmutable(Object obj) {
        this.f8903b.j(obj);
        this.f8905d.f(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public void mergeFrom(Object obj, Object obj2) {
        d1.F(this.f8903b, obj, obj2);
        if (this.f8904c) {
            d1.D(this.f8905d, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.b1
    public Object newInstance() {
        n0 n0Var = this.f8902a;
        return n0Var instanceof GeneratedMessageLite ? ((GeneratedMessageLite) n0Var).F() : n0Var.newBuilderForType().buildPartial();
    }
}
