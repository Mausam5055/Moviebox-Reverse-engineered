package com.google.thirdparty.publicsuffix;

/* JADX INFO: loaded from: classes4.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c11, char c12) {
        this.innerNodeCode = c11;
        this.leafNodeCode = c12;
    }

    static PublicSuffixType fromCode(char c11) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c11 || publicSuffixType.getLeafNodeCode() == c11) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c11);
    }

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }
}
