package androidx.datastore.preferences.protobuf;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class j implements a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f8840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8843d = 0;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8844a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8844a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8844a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8844a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8844a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8844a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8844a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8844a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8844a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8844a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8844a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8844a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8844a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8844a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8844a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8844a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8844a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8844a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private j(i iVar) {
        i iVar2 = (i) w.b(iVar, "input");
        this.f8840a = iVar2;
        iVar2.f8790d = this;
    }

    public static j f(i iVar) {
        j jVar = iVar.f8790d;
        return jVar != null ? jVar : new j(iVar);
    }

    private void g(Object obj, b1 b1Var, o oVar) {
        int i11 = this.f8842c;
        this.f8842c = WireFormat.c(WireFormat.a(this.f8841b), 4);
        try {
            b1Var.a(obj, this, oVar);
            if (this.f8841b != this.f8842c) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            this.f8842c = i11;
        } catch (Throwable th2) {
            this.f8842c = i11;
            throw th2;
        }
    }

    private void h(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        int iF = this.f8840a.F();
        i iVar = this.f8840a;
        if (iVar.f8787a >= iVar.f8788b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int iO = iVar.o(iF);
        this.f8840a.f8787a++;
        b1Var.a(obj, this, oVar);
        this.f8840a.a(0);
        i iVar2 = this.f8840a;
        iVar2.f8787a--;
        iVar2.n(iO);
    }

    private Object i(WireFormat.FieldType fieldType, Class cls, o oVar) {
        switch (a.f8844a[fieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(readBool());
            case 2:
                return readBytes();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(readEnum());
            case 5:
                return Integer.valueOf(readFixed32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(readInt32());
            case 9:
                return Long.valueOf(readInt64());
            case 10:
                return l(cls, oVar);
            case 11:
                return Integer.valueOf(readSFixed32());
            case 12:
                return Long.valueOf(readSFixed64());
            case 13:
                return Integer.valueOf(readSInt32());
            case 14:
                return Long.valueOf(readSInt64());
            case 15:
                return readStringRequireUtf8();
            case 16:
                return Integer.valueOf(readUInt32());
            case 17:
                return Long.valueOf(readUInt64());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private Object j(b1 b1Var, o oVar) {
        Object objNewInstance = b1Var.newInstance();
        g(objNewInstance, b1Var, oVar);
        b1Var.makeImmutable(objNewInstance);
        return objNewInstance;
    }

    private Object k(b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        h(objNewInstance, b1Var, oVar);
        b1Var.makeImmutable(objNewInstance);
        return objNewInstance;
    }

    private void n(int i11) throws InvalidProtocolBufferException {
        if (this.f8840a.e() != i11) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void o(int i11) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if (WireFormat.b(this.f8841b) != i11) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private void p(int i11) throws InvalidProtocolBufferException {
        if ((i11 & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    private void q(int i11) throws InvalidProtocolBufferException {
        if ((i11 & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void a(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        o(2);
        h(obj, b1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void b(List list, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8841b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i11 = this.f8841b;
        do {
            list.add(k(b1Var, oVar));
            if (this.f8840a.f() || this.f8843d != 0) {
                return;
            } else {
                iE = this.f8840a.E();
            }
        } while (iE == i11);
        this.f8843d = iE;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void c(Map map, h0.a aVar, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        int iO = this.f8840a.o(this.f8840a.F());
        Object objI = aVar.f8782b;
        Object objI2 = aVar.f8784d;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.f8840a.f()) {
                    break;
                }
                if (fieldNumber == 1) {
                    objI = i(aVar.f8781a, null, null);
                } else if (fieldNumber != 2) {
                    try {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    objI2 = i(aVar.f8783c, aVar.f8784d.getClass(), oVar);
                }
            } catch (Throwable th2) {
                this.f8840a.n(iO);
                throw th2;
            }
        }
        map.put(objI, objI2);
        this.f8840a.n(iO);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void d(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(3);
        g(obj, b1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void e(List list, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8841b) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i11 = this.f8841b;
        do {
            list.add(j(b1Var, oVar));
            if (this.f8840a.f() || this.f8843d != 0) {
                return;
            } else {
                iE = this.f8840a.E();
            }
        } while (iE == i11);
        this.f8843d = iE;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int getFieldNumber() {
        int i11 = this.f8843d;
        if (i11 != 0) {
            this.f8841b = i11;
            this.f8843d = 0;
        } else {
            this.f8841b = this.f8840a.E();
        }
        int i12 = this.f8841b;
        if (i12 == 0 || i12 == this.f8842c) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.a(i12);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int getTag() {
        return this.f8841b;
    }

    public Object l(Class cls, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return k(x0.a().c(cls), oVar);
    }

    public void m(List list, boolean z10) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        int iE2;
        if (WireFormat.b(this.f8841b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        if (!(list instanceof b0) || z10) {
            do {
                list.add(z10 ? readStringRequireUtf8() : readString());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE = this.f8840a.E();
                }
            } while (iE == this.f8841b);
            this.f8843d = iE;
            return;
        }
        b0 b0Var = (b0) list;
        do {
            b0Var.i(readBytes());
            if (this.f8840a.f()) {
                return;
            } else {
                iE2 = this.f8840a.E();
            }
        } while (iE2 == this.f8841b);
        this.f8843d = iE2;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public boolean readBool() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.p();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readBoolList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Boolean.valueOf(this.f8840a.p()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Boolean.valueOf(this.f8840a.p()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        f fVar = (f) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                fVar.addBoolean(this.f8840a.p());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            fVar.addBoolean(this.f8840a.p());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public ByteString readBytes() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8840a.q();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readBytesList(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8841b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(readBytes());
            if (this.f8840a.f()) {
                return;
            } else {
                iE = this.f8840a.E();
            }
        } while (iE == this.f8841b);
        this.f8843d = iE;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public double readDouble() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8840a.r();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readDoubleList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof l)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 1) {
                do {
                    list.add(Double.valueOf(this.f8840a.r()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8840a.F();
            q(iF);
            int iE3 = this.f8840a.e() + iF;
            do {
                list.add(Double.valueOf(this.f8840a.r()));
            } while (this.f8840a.e() < iE3);
            return;
        }
        l lVar = (l) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 1) {
            do {
                lVar.addDouble(this.f8840a.r());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8840a.F();
        q(iF2);
        int iE4 = this.f8840a.e() + iF2;
        do {
            lVar.addDouble(this.f8840a.r());
        } while (this.f8840a.e() < iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readEnum() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.s();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readEnumList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8840a.s()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Integer.valueOf(this.f8840a.s()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8840a.s());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            vVar.addInt(this.f8840a.s());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8840a.t();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readFixed32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 2) {
                int iF = this.f8840a.F();
                p(iF);
                int iE3 = this.f8840a.e() + iF;
                do {
                    list.add(Integer.valueOf(this.f8840a.t()));
                } while (this.f8840a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f8840a.t()));
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE = this.f8840a.E();
                }
            } while (iE == this.f8841b);
            this.f8843d = iE;
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 2) {
            int iF2 = this.f8840a.F();
            p(iF2);
            int iE4 = this.f8840a.e() + iF2;
            do {
                vVar.addInt(this.f8840a.t());
            } while (this.f8840a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            vVar.addInt(this.f8840a.t());
            if (this.f8840a.f()) {
                return;
            } else {
                iE2 = this.f8840a.E();
            }
        } while (iE2 == this.f8841b);
        this.f8843d = iE2;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public long readFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8840a.u();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readFixed64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.f8840a.u()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8840a.F();
            q(iF);
            int iE3 = this.f8840a.e() + iF;
            do {
                list.add(Long.valueOf(this.f8840a.u()));
            } while (this.f8840a.e() < iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 1) {
            do {
                f0Var.addLong(this.f8840a.u());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8840a.F();
        q(iF2);
        int iE4 = this.f8840a.e() + iF2;
        do {
            f0Var.addLong(this.f8840a.u());
        } while (this.f8840a.e() < iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public float readFloat() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8840a.v();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readFloatList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof t)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 2) {
                int iF = this.f8840a.F();
                p(iF);
                int iE3 = this.f8840a.e() + iF;
                do {
                    list.add(Float.valueOf(this.f8840a.v()));
                } while (this.f8840a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Float.valueOf(this.f8840a.v()));
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE = this.f8840a.E();
                }
            } while (iE == this.f8841b);
            this.f8843d = iE;
            return;
        }
        t tVar = (t) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 2) {
            int iF2 = this.f8840a.F();
            p(iF2);
            int iE4 = this.f8840a.e() + iF2;
            do {
                tVar.addFloat(this.f8840a.v());
            } while (this.f8840a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            tVar.addFloat(this.f8840a.v());
            if (this.f8840a.f()) {
                return;
            } else {
                iE2 = this.f8840a.E();
            }
        } while (iE2 == this.f8841b);
        this.f8843d = iE2;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.w();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8840a.w()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Integer.valueOf(this.f8840a.w()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8840a.w());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            vVar.addInt(this.f8840a.w());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public long readInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.x();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8840a.x()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Long.valueOf(this.f8840a.x()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8840a.x());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            f0Var.addLong(this.f8840a.x());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readSFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8840a.y();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readSFixed32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 2) {
                int iF = this.f8840a.F();
                p(iF);
                int iE3 = this.f8840a.e() + iF;
                do {
                    list.add(Integer.valueOf(this.f8840a.y()));
                } while (this.f8840a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f8840a.y()));
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE = this.f8840a.E();
                }
            } while (iE == this.f8841b);
            this.f8843d = iE;
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 2) {
            int iF2 = this.f8840a.F();
            p(iF2);
            int iE4 = this.f8840a.e() + iF2;
            do {
                vVar.addInt(this.f8840a.y());
            } while (this.f8840a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            vVar.addInt(this.f8840a.y());
            if (this.f8840a.f()) {
                return;
            } else {
                iE2 = this.f8840a.E();
            }
        } while (iE2 == this.f8841b);
        this.f8843d = iE2;
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public long readSFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8840a.z();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readSFixed64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.f8840a.z()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8840a.F();
            q(iF);
            int iE3 = this.f8840a.e() + iF;
            do {
                list.add(Long.valueOf(this.f8840a.z()));
            } while (this.f8840a.e() < iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 1) {
            do {
                f0Var.addLong(this.f8840a.z());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8840a.F();
        q(iF2);
        int iE4 = this.f8840a.e() + iF2;
        do {
            f0Var.addLong(this.f8840a.z());
        } while (this.f8840a.e() < iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readSInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.A();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readSInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8840a.A()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Integer.valueOf(this.f8840a.A()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8840a.A());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            vVar.addInt(this.f8840a.A());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public long readSInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.B();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readSInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8840a.B()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Long.valueOf(this.f8840a.B()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8840a.B());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            f0Var.addLong(this.f8840a.B());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public String readString() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8840a.C();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readStringList(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        m(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readStringListRequireUtf8(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        m(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public String readStringRequireUtf8() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8840a.D();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public int readUInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.F();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readUInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8840a.F()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Integer.valueOf(this.f8840a.F()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8840a.F());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            vVar.addInt(this.f8840a.F());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public long readUInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8840a.G();
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public void readUInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8841b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8840a.G()));
                    if (this.f8840a.f()) {
                        return;
                    } else {
                        iE = this.f8840a.E();
                    }
                } while (iE == this.f8841b);
                this.f8843d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8840a.e() + this.f8840a.F();
            do {
                list.add(Long.valueOf(this.f8840a.G()));
            } while (this.f8840a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8841b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8840a.G());
                if (this.f8840a.f()) {
                    return;
                } else {
                    iE2 = this.f8840a.E();
                }
            } while (iE2 == this.f8841b);
            this.f8843d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8840a.e() + this.f8840a.F();
        do {
            f0Var.addLong(this.f8840a.G());
        } while (this.f8840a.e() < iE4);
        n(iE4);
    }

    @Override // androidx.datastore.preferences.protobuf.a1
    public boolean skipField() {
        int i11;
        if (this.f8840a.f() || (i11 = this.f8841b) == this.f8842c) {
            return false;
        }
        return this.f8840a.H(i11);
    }
}
