package com.amazonaws.util;

/* JADX INFO: loaded from: classes2.dex */
public enum EncodingSchemeEnum {
    BASE16 { // from class: com.amazonaws.util.EncodingSchemeEnum.1
        @Override // com.amazonaws.util.EncodingSchemeEnum
        public byte[] decode(String str) {
            return Base16.decode(str);
        }

        @Override // com.amazonaws.util.EncodingSchemeEnum
        public String encodeAsString(byte[] bArr) {
            return Base16.encodeAsString(bArr);
        }
    },
    BASE32 { // from class: com.amazonaws.util.EncodingSchemeEnum.2
        @Override // com.amazonaws.util.EncodingSchemeEnum
        public byte[] decode(String str) {
            return Base32.decode(str);
        }

        @Override // com.amazonaws.util.EncodingSchemeEnum
        public String encodeAsString(byte[] bArr) {
            return Base32.encodeAsString(bArr);
        }
    },
    BASE64 { // from class: com.amazonaws.util.EncodingSchemeEnum.3
        @Override // com.amazonaws.util.EncodingSchemeEnum
        public byte[] decode(String str) {
            return Base64.decode(str);
        }

        @Override // com.amazonaws.util.EncodingSchemeEnum
        public String encodeAsString(byte[] bArr) {
            return Base64.encodeAsString(bArr);
        }
    };

    public abstract /* synthetic */ byte[] decode(String str);

    public abstract String encodeAsString(byte[] bArr);
}
