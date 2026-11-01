package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
class j1 extends h1 {
    j1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public i1 g(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public int h(i1 i1Var) {
        return i1Var.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public int i(i1 i1Var) {
        return i1Var.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public i1 k(i1 i1Var, i1 i1Var2) {
        if (i1.c().equals(i1Var2)) {
            return i1Var;
        }
        return i1.c().equals(i1Var) ? i1.j(i1Var, i1Var2) : i1Var.i(i1Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public i1 n() {
        return i1.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void o(Object obj, i1 i1Var) {
        p(obj, i1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void p(Object obj, i1 i1Var) {
        ((GeneratedMessageLite) obj).unknownFields = i1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public i1 r(i1 i1Var) {
        i1Var.h();
        return i1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void s(i1 i1Var, Writer writer) {
        i1Var.p(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void t(i1 i1Var, Writer writer) {
        i1Var.r(writer);
    }

    @Override // androidx.datastore.preferences.protobuf.h1
    void j(Object obj) {
        g(obj).h();
    }

    @Override // androidx.datastore.preferences.protobuf.h1
    boolean q(a1 a1Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void a(i1 i1Var, int i11, int i12) {
        i1Var.n(WireFormat.c(i11, 5), Integer.valueOf(i12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void b(i1 i1Var, int i11, long j11) {
        i1Var.n(WireFormat.c(i11, 1), Long.valueOf(j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void c(i1 i1Var, int i11, i1 i1Var2) {
        i1Var.n(WireFormat.c(i11, 3), i1Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void d(i1 i1Var, int i11, ByteString byteString) {
        i1Var.n(WireFormat.c(i11, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void e(i1 i1Var, int i11, long j11) {
        i1Var.n(WireFormat.c(i11, 0), Long.valueOf(j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.h1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public i1 f(Object obj) {
        i1 i1VarG = g(obj);
        if (i1VarG != i1.c()) {
            return i1VarG;
        }
        i1 i1VarK = i1.k();
        p(obj, i1VarK);
        return i1VarK;
    }
}
