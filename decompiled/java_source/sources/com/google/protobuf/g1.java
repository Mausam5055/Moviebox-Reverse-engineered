package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
final class g1 implements q0 {
    private static final int IS_EDITION_BIT = 4;
    private static final int IS_PROTO2_BIT = 1;
    private final s0 defaultInstance;
    private final int flags;
    private final String info;
    private final Object[] objects;

    g1(s0 s0Var, String str, Object[] objArr) {
        this.defaultInstance = s0Var;
        this.info = str;
        this.objects = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i11 = cCharAt & 8191;
        int i12 = 13;
        int i13 = 1;
        while (true) {
            int i14 = i13 + 1;
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 < 55296) {
                this.flags = i11 | (cCharAt2 << i12);
                return;
            } else {
                i11 |= (cCharAt2 & 8191) << i12;
                i12 += 13;
                i13 = i14;
            }
        }
    }

    @Override // com.google.protobuf.q0
    public s0 getDefaultInstance() {
        return this.defaultInstance;
    }

    Object[] getObjects() {
        return this.objects;
    }

    String getStringInfo() {
        return this.info;
    }

    @Override // com.google.protobuf.q0
    public ProtoSyntax getSyntax() {
        int i11 = this.flags;
        if ((i11 & 1) != 0) {
            return ProtoSyntax.PROTO2;
        }
        return (i11 & 4) == 4 ? ProtoSyntax.EDITIONS : ProtoSyntax.PROTO3;
    }

    @Override // com.google.protobuf.q0
    public boolean isMessageSetWireFormat() {
        return (this.flags & 2) == 2;
    }
}
