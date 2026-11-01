package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteString f8732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f8733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected volatile n0 f8734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile ByteString f8735d;

    protected void a(n0 n0Var) {
        if (this.f8734c != null) {
            return;
        }
        synchronized (this) {
            if (this.f8734c != null) {
                return;
            }
            try {
                if (this.f8732a != null) {
                    this.f8734c = (n0) n0Var.getParserForType().a(this.f8732a, this.f8733b);
                    this.f8735d = this.f8732a;
                } else {
                    this.f8734c = n0Var;
                    this.f8735d = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.f8734c = n0Var;
                this.f8735d = ByteString.EMPTY;
            }
        }
    }

    public int b() {
        if (this.f8735d != null) {
            return this.f8735d.size();
        }
        ByteString byteString = this.f8732a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f8734c != null) {
            return this.f8734c.getSerializedSize();
        }
        return 0;
    }

    public n0 c(n0 n0Var) {
        a(n0Var);
        return this.f8734c;
    }

    public ByteString d() {
        if (this.f8735d != null) {
            return this.f8735d;
        }
        ByteString byteString = this.f8732a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.f8735d != null) {
                    return this.f8735d;
                }
                if (this.f8734c == null) {
                    this.f8735d = ByteString.EMPTY;
                } else {
                    this.f8735d = this.f8734c.toByteString();
                }
                return this.f8735d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        n0 n0Var = this.f8734c;
        n0 n0Var2 = a0Var.f8734c;
        if (n0Var == null && n0Var2 == null) {
            return d().equals(a0Var.d());
        }
        if (n0Var == null || n0Var2 == null) {
            return n0Var != null ? n0Var.equals(a0Var.c(n0Var.getDefaultInstanceForType())) : c(n0Var2.getDefaultInstanceForType()).equals(n0Var2);
        }
        return n0Var.equals(n0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
