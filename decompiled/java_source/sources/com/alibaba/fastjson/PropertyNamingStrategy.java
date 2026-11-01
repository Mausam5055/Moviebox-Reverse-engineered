package com.alibaba.fastjson;

/* JADX INFO: loaded from: classes2.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase,
    NoChange,
    NeverUseThisValueExceptDefaultValue;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f18064a;

        static {
            int[] iArr = new int[PropertyNamingStrategy.values().length];
            f18064a = iArr;
            try {
                iArr[PropertyNamingStrategy.SnakeCase.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18064a[PropertyNamingStrategy.KebabCase.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18064a[PropertyNamingStrategy.PascalCase.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18064a[PropertyNamingStrategy.CamelCase.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18064a[PropertyNamingStrategy.NoChange.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18064a[PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public String translate(String str) {
        char cCharAt;
        int i11 = a.f18064a[ordinal()];
        int i12 = 0;
        if (i11 == 1) {
            StringBuilder sb2 = new StringBuilder();
            while (i12 < str.length()) {
                char cCharAt2 = str.charAt(i12);
                if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                    sb2.append(cCharAt2);
                } else {
                    char c11 = (char) (cCharAt2 + ' ');
                    if (i12 > 0) {
                        sb2.append('_');
                    }
                    sb2.append(c11);
                }
                i12++;
            }
            return sb2.toString();
        }
        if (i11 == 2) {
            StringBuilder sb3 = new StringBuilder();
            while (i12 < str.length()) {
                char cCharAt3 = str.charAt(i12);
                if (cCharAt3 < 'A' || cCharAt3 > 'Z') {
                    sb3.append(cCharAt3);
                } else {
                    char c12 = (char) (cCharAt3 + ' ');
                    if (i12 > 0) {
                        sb3.append('-');
                    }
                    sb3.append(c12);
                }
                i12++;
            }
            return sb3.toString();
        }
        if (i11 != 3) {
            if (i11 != 4 || (cCharAt = str.charAt(0)) < 'A' || cCharAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            return new String(charArray);
        }
        char cCharAt4 = str.charAt(0);
        if (cCharAt4 < 'a' || cCharAt4 > 'z') {
            return str;
        }
        char[] charArray2 = str.toCharArray();
        charArray2[0] = (char) (charArray2[0] - ' ');
        return new String(charArray2);
    }
}
