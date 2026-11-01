package com.google.firebase.encoders.proto;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f31817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Protobuf.IntEncoding f31818b = Protobuf.IntEncoding.DEFAULT;

    /* JADX INFO: renamed from: com.google.firebase.encoders.proto.a$a, reason: collision with other inner class name */
    private static final class C0440a implements Protobuf {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f31819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Protobuf.IntEncoding f31820c;

        C0440a(int i11, Protobuf.IntEncoding intEncoding) {
            this.f31819b = i11;
            this.f31820c = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public Class annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            return this.f31819b == protobuf.tag() && this.f31820c.equals(protobuf.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.f31819b) + (this.f31820c.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public Protobuf.IntEncoding intEncoding() {
            return this.f31820c;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public int tag() {
            return this.f31819b;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f31819b + "intEncoding=" + this.f31820c + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public Protobuf a() {
        return new C0440a(this.f31817a, this.f31818b);
    }

    public a c(int i11) {
        this.f31817a = i11;
        return this;
    }
}
