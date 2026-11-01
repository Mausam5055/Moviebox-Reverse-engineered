package com.alibaba.fastjson;

import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JSONValidator implements Cloneable, Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f18056a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected char f18058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Type f18059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f18060e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f18057b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f18061f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f18062g = false;

    public enum Type {
        Object,
        Array,
        Value
    }

    static class a extends JSONValidator {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f18063h;

        public a(String str) {
            this.f18063h = str;
            o();
            p();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        protected final void l() {
            char cCharAt;
            int i11 = this.f18057b;
            do {
                i11++;
                if (i11 >= this.f18063h.length() || (cCharAt = this.f18063h.charAt(i11)) == '\\') {
                    o();
                    while (true) {
                        char c11 = this.f18058c;
                        if (c11 == '\\') {
                            o();
                            if (this.f18058c == 'u') {
                                o();
                                o();
                                o();
                                o();
                                o();
                            } else {
                                o();
                            }
                        } else if (c11 == '\"') {
                            o();
                            return;
                        } else if (this.f18056a) {
                            return;
                        } else {
                            o();
                        }
                    }
                }
            } while (cCharAt != '\"');
            int i12 = i11 + 1;
            this.f18058c = this.f18063h.charAt(i12);
            this.f18057b = i12;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        void o() {
            int i11 = this.f18057b + 1;
            this.f18057b = i11;
            if (i11 < this.f18063h.length()) {
                this.f18058c = this.f18063h.charAt(this.f18057b);
            } else {
                this.f18058c = (char) 0;
                this.f18056a = true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:127:0x017d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x0183  */
    /* JADX WARN: Code duplicated, block: B:132:0x018a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:141:0x019c  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x01b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x01bf A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private boolean k() {
        char c11;
        char c12;
        char c13;
        char c14;
        char c15;
        char c16;
        char c17;
        char c18;
        char c19;
        char c20 = this.f18058c;
        if (c20 == '\"') {
            o();
            while (!this.f18056a) {
                char c21 = this.f18058c;
                if (c21 == '\\') {
                    o();
                    if (this.f18058c == 'u') {
                        o();
                        o();
                        o();
                        o();
                        o();
                    } else {
                        o();
                    }
                } else {
                    if (c21 == '\"') {
                        o();
                        this.f18059d = Type.Value;
                        return true;
                    }
                    o();
                }
            }
            return false;
        }
        if (c20 != '+' && c20 != '-') {
            if (c20 == '[') {
                o();
                p();
                if (this.f18058c == ']') {
                    o();
                    this.f18059d = Type.Array;
                    return true;
                }
                while (k()) {
                    p();
                    char c22 = this.f18058c;
                    if (c22 != ',') {
                        if (c22 != ']') {
                            return false;
                        }
                        o();
                        this.f18059d = Type.Array;
                        return true;
                    }
                    o();
                    p();
                }
                return false;
            }
            if (c20 == 'f') {
                o();
                if (this.f18058c != 'a') {
                    return false;
                }
                o();
                if (this.f18058c != 'l') {
                    return false;
                }
                o();
                if (this.f18058c != 's') {
                    return false;
                }
                o();
                if (this.f18058c != 'e') {
                    return false;
                }
                o();
                if (!n(this.f18058c) && (c17 = this.f18058c) != ',' && c17 != ']' && c17 != '}' && c17 != 0) {
                    return false;
                }
                this.f18059d = Type.Value;
                return true;
            }
            if (c20 == 'n') {
                o();
                if (this.f18058c != 'u') {
                    return false;
                }
                o();
                if (this.f18058c != 'l') {
                    return false;
                }
                o();
                if (this.f18058c != 'l') {
                    return false;
                }
                o();
                if (!n(this.f18058c) && (c18 = this.f18058c) != ',' && c18 != ']' && c18 != '}' && c18 != 0) {
                    return false;
                }
                this.f18059d = Type.Value;
                return true;
            }
            if (c20 == 't') {
                o();
                if (this.f18058c != 'r') {
                    return false;
                }
                o();
                if (this.f18058c != 'u') {
                    return false;
                }
                o();
                if (this.f18058c != 'e') {
                    return false;
                }
                o();
                if (!n(this.f18058c) && (c19 = this.f18058c) != ',' && c19 != ']' && c19 != '}' && c19 != 0) {
                    return false;
                }
                this.f18059d = Type.Value;
                return true;
            }
            if (c20 == '{') {
                o();
                while (n(this.f18058c)) {
                    o();
                }
                if (this.f18058c == '}') {
                    o();
                    this.f18059d = Type.Object;
                    return true;
                }
                while (this.f18058c == '\"') {
                    l();
                    p();
                    if (this.f18058c != ':') {
                        break;
                    }
                    o();
                    p();
                    if (!k()) {
                        return false;
                    }
                    p();
                    char c23 = this.f18058c;
                    if (c23 != ',') {
                        if (c23 != '}') {
                            break;
                        }
                        o();
                        this.f18059d = Type.Object;
                        return true;
                    }
                    o();
                    p();
                }
                return false;
            }
            switch (c20) {
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                case '2':
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case '9':
                    break;
                default:
                    return false;
            }
        }
        if (c20 == '-' || c20 == '+') {
            o();
            p();
            char c24 = this.f18058c;
            if (c24 >= '0' && c24 <= '9') {
                do {
                    o();
                    c11 = this.f18058c;
                    if (c11 >= '0') {
                    }
                    if (c11 == '.') {
                        o();
                        c16 = this.f18058c;
                        if (c16 >= '0' || c16 > '9') {
                            return false;
                        }
                        while (true) {
                            char c25 = this.f18058c;
                            if (c25 >= '0' && c25 <= '9') {
                                o();
                            }
                        }
                    }
                    c12 = this.f18058c;
                    if (c12 != 'e' || c12 == 'E') {
                        o();
                        c13 = this.f18058c;
                        if (c13 != '-' || c13 == '+') {
                            o();
                        }
                        c14 = this.f18058c;
                        if (c14 >= '0' && c14 <= '9') {
                            o();
                            while (true) {
                                c15 = this.f18058c;
                                if (c15 < '0' && c15 <= '9') {
                                    o();
                                }
                            }
                        }
                    }
                    this.f18059d = Type.Value;
                    return true;
                } while (c11 <= '9');
                if (c11 == '.') {
                    o();
                    c16 = this.f18058c;
                    if (c16 >= '0') {
                    }
                    return false;
                }
                c12 = this.f18058c;
                if (c12 != 'e') {
                }
                o();
                c13 = this.f18058c;
                if (c13 != '-') {
                    o();
                } else {
                    o();
                }
                c14 = this.f18058c;
                if (c14 >= '0') {
                    o();
                    while (true) {
                        c15 = this.f18058c;
                        if (c15 < '0') {
                        }
                        this.f18059d = Type.Value;
                        return true;
                        o();
                    }
                }
            }
        } else {
            do {
                o();
                c11 = this.f18058c;
                if (c11 >= '0') {
                }
                if (c11 == '.') {
                    o();
                    c16 = this.f18058c;
                    if (c16 >= '0') {
                    }
                    return false;
                }
                c12 = this.f18058c;
                if (c12 != 'e') {
                }
                o();
                c13 = this.f18058c;
                if (c13 != '-') {
                    o();
                } else {
                    o();
                }
                c14 = this.f18058c;
                if (c14 >= '0') {
                    o();
                    while (true) {
                        c15 = this.f18058c;
                        if (c15 < '0') {
                        }
                        this.f18059d = Type.Value;
                        return true;
                        o();
                    }
                }
            } while (c11 <= '9');
            if (c11 == '.') {
                o();
                c16 = this.f18058c;
                if (c16 >= '0') {
                }
                return false;
            }
            c12 = this.f18058c;
            if (c12 != 'e') {
            }
            o();
            c13 = this.f18058c;
            if (c13 != '-') {
                o();
            } else {
                o();
            }
            c14 = this.f18058c;
            if (c14 >= '0') {
                o();
                while (true) {
                    c15 = this.f18058c;
                    if (c15 < '0') {
                    }
                    this.f18059d = Type.Value;
                    return true;
                    o();
                }
            }
        }
        return false;
    }

    public static JSONValidator m(String str) {
        return new a(str);
    }

    static final boolean n(char c11) {
        return c11 == ' ' || c11 == '\t' || c11 == '\r' || c11 == '\n' || c11 == '\f' || c11 == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    protected void l() {
        o();
        while (true) {
            char c11 = this.f18058c;
            if (c11 == '\\') {
                o();
                if (this.f18058c == 'u') {
                    o();
                    o();
                    o();
                    o();
                    o();
                } else {
                    o();
                }
            } else {
                if (c11 == '\"') {
                    o();
                    return;
                }
                o();
            }
        }
    }

    abstract void o();

    void p() {
        while (n(this.f18058c)) {
            o();
        }
    }

    public boolean q() {
        Boolean bool = this.f18060e;
        if (bool != null) {
            return bool.booleanValue();
        }
        while (k()) {
            p();
            this.f18061f++;
            if (this.f18056a) {
                this.f18060e = Boolean.TRUE;
                return true;
            }
            if (!this.f18062g) {
                this.f18060e = Boolean.FALSE;
                return false;
            }
            p();
            if (this.f18056a) {
                this.f18060e = Boolean.TRUE;
                return true;
            }
        }
        this.f18060e = Boolean.FALSE;
        return false;
    }
}
