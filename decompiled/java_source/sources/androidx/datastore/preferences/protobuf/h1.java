package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile int f8785a = 100;

    h1() {
    }

    private final void l(Object obj, a1 a1Var, int i11) {
        while (a1Var.getFieldNumber() != Integer.MAX_VALUE && m(obj, a1Var, i11)) {
        }
    }

    abstract void a(Object obj, int i11, int i12);

    abstract void b(Object obj, int i11, long j11);

    abstract void c(Object obj, int i11, Object obj2);

    abstract void d(Object obj, int i11, ByteString byteString);

    abstract void e(Object obj, int i11, long j11);

    abstract Object f(Object obj);

    abstract Object g(Object obj);

    abstract int h(Object obj);

    abstract int i(Object obj);

    abstract void j(Object obj);

    abstract Object k(Object obj, Object obj2);

    final boolean m(Object obj, a1 a1Var, int i11) throws InvalidProtocolBufferException {
        int tag = a1Var.getTag();
        int iA = WireFormat.a(tag);
        int iB = WireFormat.b(tag);
        if (iB == 0) {
            e(obj, iA, a1Var.readInt64());
            return true;
        }
        if (iB == 1) {
            b(obj, iA, a1Var.readFixed64());
            return true;
        }
        if (iB == 2) {
            d(obj, iA, a1Var.readBytes());
            return true;
        }
        if (iB != 3) {
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            a(obj, iA, a1Var.readFixed32());
            return true;
        }
        Object objN = n();
        int iC = WireFormat.c(iA, 4);
        int i12 = i11 + 1;
        if (i12 >= f8785a) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        l(objN, a1Var, i12);
        if (iC != a1Var.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        c(obj, iA, r(objN));
        return true;
    }

    abstract Object n();

    abstract void o(Object obj, Object obj2);

    abstract void p(Object obj, Object obj2);

    abstract boolean q(a1 a1Var);

    abstract Object r(Object obj);

    abstract void s(Object obj, Writer writer);

    abstract void t(Object obj, Writer writer);
}
