package com.transsion.json;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f46081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Reader f46082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private char f46083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f46084d;

    public l(Reader reader) {
        this.f46082b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f46084d = false;
        this.f46081a = 0;
    }

    public l(String str) {
        this(new StringReader(str));
    }

    private void e(Map map, String str, Object obj) {
        if (str != null) {
            if (!map.containsKey(str)) {
                map.put(str, obj);
                return;
            }
            throw new k("Duplicate key \"" + str + "\"");
        }
    }

    private boolean g(String str) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (!Character.isDigit(cCharAt) && cCharAt != '-' && cCharAt != '.' && cCharAt != '+' && cCharAt != 'e' && cCharAt != 'E') {
                return false;
            }
        }
        return true;
    }

    private Object i(String str) {
        if (str.equals("")) {
            return str;
        }
        if (str.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("null")) {
            return null;
        }
        return g(str) ? new n(str) : str;
    }

    private Map l() {
        HashMap map = new HashMap();
        if (h() != '{') {
            throw a("A JSONObject text must begin with '{'");
        }
        while (true) {
            char cH = h();
            if (cH == 0) {
                throw a("A JSONObject text must end with '}'");
            }
            if (cH == '}') {
                return map;
            }
            d();
            String string = j().toString();
            char cH2 = h();
            if (cH2 == '=') {
                if (f() != '>') {
                    d();
                }
            } else if (cH2 != ':') {
                throw a("Expected a ':' after a key");
            }
            e(map, string, j());
            char cH3 = h();
            if (cH3 != ',' && cH3 != ';') {
                if (cH3 == '}') {
                    return map;
                }
                throw a("Expected a ',' or '}'");
            }
            if (h() == '}') {
                return map;
            }
            d();
        }
    }

    public k a(String str) {
        return new k(str + toString());
    }

    public String b(char c11) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            char cF = f();
            if (cF == 0 || cF == '\n' || cF == '\r') {
                break;
            }
            if (cF == '\\') {
                char cF2 = f();
                if (cF2 == 'b') {
                    sb2.append('\b');
                } else if (cF2 == 'f') {
                    sb2.append('\f');
                } else if (cF2 == 'n') {
                    sb2.append('\n');
                } else if (cF2 == 'r') {
                    sb2.append('\r');
                } else if (cF2 == 'x') {
                    sb2.append((char) Integer.parseInt(c(2), 16));
                } else if (cF2 == 't') {
                    sb2.append('\t');
                } else if (cF2 != 'u') {
                    sb2.append(cF2);
                } else {
                    sb2.append((char) Integer.parseInt(c(4), 16));
                }
            } else {
                if (cF == c11) {
                    return sb2.toString();
                }
                sb2.append(cF);
            }
        }
        throw a("Unterminated string");
    }

    public String c(int i11) {
        if (i11 == 0) {
            return "";
        }
        char[] cArr = new char[i11];
        int i12 = 0;
        if (this.f46084d) {
            this.f46084d = false;
            cArr[0] = this.f46083c;
            i12 = 1;
        }
        while (i12 < i11) {
            try {
                int i13 = this.f46082b.read(cArr, i12, i11 - i12);
                if (i13 == -1) {
                    break;
                }
                i12 += i13;
            } catch (IOException e11) {
                throw new k(e11);
            }
        }
        this.f46081a += i12;
        if (i12 < i11) {
            throw a("Substring bounds error");
        }
        this.f46083c = cArr[i11 - 1];
        return new String(cArr);
    }

    public void d() {
        int i11;
        if (this.f46084d || (i11 = this.f46081a) <= 0) {
            throw new k("Stepping back two steps is not supported");
        }
        this.f46081a = i11 - 1;
        this.f46084d = true;
    }

    public char f() {
        if (this.f46084d) {
            this.f46084d = false;
            char c11 = this.f46083c;
            if (c11 != 0) {
                this.f46081a++;
            }
            return c11;
        }
        try {
            int i11 = this.f46082b.read();
            if (i11 <= 0) {
                this.f46083c = (char) 0;
                return (char) 0;
            }
            this.f46081a++;
            char c12 = (char) i11;
            this.f46083c = c12;
            return c12;
        } catch (IOException e11) {
            throw new k(e11);
        }
    }

    public char h() {
        char cF;
        do {
            cF = f();
            if (cF == 0) {
                break;
            }
        } while (cF <= ' ');
        return cF;
    }

    public Object j() {
        char cH = h();
        if (cH != '\"') {
            if (cH != '[') {
                if (cH == '{') {
                    d();
                    return l();
                }
                if (cH != '\'') {
                    if (cH != '(') {
                        StringBuilder sb2 = new StringBuilder();
                        while (cH >= ' ' && ",:]}/\\\"[{;=#".indexOf(cH) < 0) {
                            sb2.append(cH);
                            cH = f();
                        }
                        d();
                        String strTrim = sb2.toString().trim();
                        if (strTrim.equals("")) {
                            throw a("Missing value");
                        }
                        return i(strTrim);
                    }
                }
            }
            d();
            return k();
        }
        return b(cH);
    }

    public List k() {
        char c11;
        char cH;
        ArrayList arrayList = new ArrayList();
        char cH2 = h();
        if (cH2 == '[') {
            c11 = ']';
        } else {
            if (cH2 != '(') {
                throw a("A JSONArray text must start with '['");
            }
            c11 = ')';
        }
        if (h() == ']') {
            return arrayList;
        }
        d();
        while (true) {
            if (h() == ',') {
                d();
                arrayList.add(null);
            } else {
                d();
                arrayList.add(j());
            }
            cH = h();
            if (cH != ')') {
                if (cH != ',' && cH != ';') {
                    if (cH == ']') {
                        break;
                    }
                    throw a("Expected a ',' or ']'");
                }
                if (h() == ']') {
                    return arrayList;
                }
                d();
            } else {
                break;
            }
        }
        if (c11 == cH) {
            return arrayList;
        }
        throw a("Expected a '" + c11 + "'");
    }

    public String toString() {
        return " at character " + this.f46081a;
    }
}
