package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class q extends p {
    q() {
    }

    @Override // androidx.datastore.preferences.protobuf.p
    int a(Map.Entry entry) {
        android.support.v4.media.session.c.a(entry.getKey());
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    Object b(o oVar, n0 n0Var, int i11) {
        oVar.a(n0Var, i11);
        return null;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    s c(Object obj) {
        return ((GeneratedMessageLite.c) obj).extensions;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    s d(Object obj) {
        return ((GeneratedMessageLite.c) obj).K();
    }

    @Override // androidx.datastore.preferences.protobuf.p
    boolean e(n0 n0Var) {
        return n0Var instanceof GeneratedMessageLite.c;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    void f(Object obj) {
        c(obj).q();
    }

    @Override // androidx.datastore.preferences.protobuf.p
    Object g(Object obj, a1 a1Var, Object obj2, o oVar, s sVar, Object obj3, h1 h1Var) {
        android.support.v4.media.session.c.a(obj2);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    void h(a1 a1Var, Object obj, o oVar, s sVar) {
        android.support.v4.media.session.c.a(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    void i(ByteString byteString, Object obj, o oVar, s sVar) {
        android.support.v4.media.session.c.a(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.p
    void j(Writer writer, Map.Entry entry) {
        android.support.v4.media.session.c.a(entry.getKey());
        throw null;
    }
}
