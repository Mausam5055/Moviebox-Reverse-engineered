package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
final class n1 {

    class a implements c {
        final /* synthetic */ ByteString val$input;

        a(ByteString byteString) {
            this.val$input = byteString;
        }

        @Override // com.google.protobuf.n1.c
        public byte byteAt(int i11) {
            return this.val$input.byteAt(i11);
        }

        @Override // com.google.protobuf.n1.c
        public int size() {
            return this.val$input.size();
        }
    }

    class b implements c {
        final /* synthetic */ byte[] val$input;

        b(byte[] bArr) {
            this.val$input = bArr;
        }

        @Override // com.google.protobuf.n1.c
        public byte byteAt(int i11) {
            return this.val$input[i11];
        }

        @Override // com.google.protobuf.n1.c
        public int size() {
            return this.val$input.length;
        }
    }

    private interface c {
        byte byteAt(int i11);

        int size();
    }

    private n1() {
    }

    static String escapeBytes(ByteString byteString) {
        return escapeBytes(new a(byteString));
    }

    static String escapeBytes(c cVar) {
        StringBuilder sb2 = new StringBuilder(cVar.size());
        for (int i11 = 0; i11 < cVar.size(); i11++) {
            byte bByteAt = cVar.byteAt(i11);
            if (bByteAt == 34) {
                sb2.append("\\\"");
            } else if (bByteAt == 39) {
                sb2.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb2.append("\\a");
                        break;
                    case 8:
                        sb2.append("\\b");
                        break;
                    case 9:
                        sb2.append("\\t");
                        break;
                    case 10:
                        sb2.append("\\n");
                        break;
                    case 11:
                        sb2.append("\\v");
                        break;
                    case 12:
                        sb2.append("\\f");
                        break;
                    case 13:
                        sb2.append("\\r");
                        break;
                    default:
                        if (bByteAt < 32 || bByteAt > 126) {
                            sb2.append('\\');
                            sb2.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb2.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb2.append((char) ((bByteAt & 7) + 48));
                        } else {
                            sb2.append((char) bByteAt);
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    static String escapeBytes(byte[] bArr) {
        return escapeBytes(new b(bArr));
    }

    static String escapeDoubleQuotesAndBackslashes(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }
}
