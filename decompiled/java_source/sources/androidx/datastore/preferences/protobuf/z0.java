package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
final class z0 implements l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f8938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f8940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f8941d;

    z0(n0 n0Var, String str, Object[] objArr) {
        this.f8938a = n0Var;
        this.f8939b = str;
        this.f8940c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f8941d = cCharAt;
            return;
        }
        int i11 = cCharAt & 8191;
        int i12 = 13;
        int i13 = 1;
        while (true) {
            int i14 = i13 + 1;
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 < 55296) {
                this.f8941d = i11 | (cCharAt2 << i12);
                return;
            } else {
                i11 |= (cCharAt2 & 8191) << i12;
                i12 += 13;
                i13 = i14;
            }
        }
    }

    Object[] a() {
        return this.f8940c;
    }

    String b() {
        return this.f8939b;
    }

    @Override // androidx.datastore.preferences.protobuf.l0
    public n0 getDefaultInstance() {
        return this.f8938a;
    }

    @Override // androidx.datastore.preferences.protobuf.l0
    public ProtoSyntax getSyntax() {
        int i11 = this.f8941d;
        if ((i11 & 1) != 0) {
            return ProtoSyntax.PROTO2;
        }
        return (i11 & 4) == 4 ? ProtoSyntax.EDITIONS : ProtoSyntax.PROTO3;
    }

    @Override // androidx.datastore.preferences.protobuf.l0
    public boolean isMessageSetWireFormat() {
        return (this.f8941d & 2) == 2;
    }
}
