package com.bytedance.sdk.component.sP.Sj;

import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class Jcg {
    private static final char[] EjP = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final List<String> Dq;
    private final String HiB;
    private final List<String> Jcg;
    final String Sj;
    private final String TEQ;
    final int TKC;
    final String sP;
    private final String uA;
    private final String vS;

    public static final class Sj {
        String Dq;
        String EjP;
        List<String> Jcg;
        String Sj;
        final List<String> vS;
        String sP = "";
        String TKC = "";
        int HiB = -1;

        /* JADX INFO: renamed from: com.bytedance.sdk.component.sP.Sj.Jcg$Sj$Sj, reason: collision with other inner class name */
        enum EnumC0225Sj {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Sj() {
            ArrayList arrayList = new ArrayList();
            this.vS = arrayList;
            arrayList.add("");
        }

        private static int EjP(String str, int i11, int i12) {
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt == ':') {
                    return i11;
                }
                if (cCharAt == '[') {
                    do {
                        i11++;
                        if (i11 >= i12) {
                            break;
                        }
                    } while (str.charAt(i11) != ']');
                }
                i11++;
            }
            return i12;
        }

        private static String HiB(String str, int i11, int i12) {
            return com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(Jcg.Sj(str, i11, i12, false));
        }

        private boolean HiB(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private Sj Sj(String str, boolean z10) {
            int i11 = 0;
            do {
                int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i11, str.length(), "/\\");
                Sj(str, i11, iSj, iSj < str.length(), z10);
                i11 = iSj + 1;
            } while (i11 <= str.length());
            return this;
        }

        private void Sj(String str, int i11, int i12) {
            if (i11 == i12) {
                return;
            }
            char cCharAt = str.charAt(i11);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.vS.clear();
                this.vS.add("");
                i11++;
            } else {
                List<String> list = this.vS;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i13 = i11;
                if (i13 >= i12) {
                    return;
                }
                i11 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i13, i12, "/\\");
                boolean z10 = i11 < i12;
                Sj(str, i13, i11, z10, true);
                if (z10) {
                    i11++;
                }
            }
        }

        private void Sj(String str, int i11, int i12, boolean z10, boolean z11) {
            String strSj = Jcg.Sj(str, i11, i12, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (HiB(strSj)) {
                return;
            }
            if (vS(strSj)) {
                TKC();
                return;
            }
            List<String> list = this.vS;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.vS;
                list2.set(list2.size() - 1, strSj);
            } else {
                this.vS.add(strSj);
            }
            if (z10) {
                this.vS.add("");
            }
        }

        private static int TKC(String str, int i11, int i12) {
            int i13 = 0;
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i13++;
                i11++;
            }
            return i13;
        }

        private void TKC() {
            List<String> list = this.vS;
            if (!list.remove(list.size() - 1).isEmpty() || this.vS.isEmpty()) {
                this.vS.add("");
            } else {
                List<String> list2 = this.vS;
                list2.set(list2.size() - 1, "");
            }
        }

        private static int sP(String str, int i11, int i12) {
            if (i12 - i11 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i11);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i11++;
                    if (i11 >= i12) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i11;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int vS(String str, int i11, int i12) {
            try {
                int i13 = Integer.parseInt(Jcg.Sj(str, i11, i12, "", false, false, false, true, null));
                if (i13 <= 0 || i13 > 65535) {
                    return -1;
                }
                return i13;
            } catch (NumberFormatException unused) {
            }
        }

        private boolean vS(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public Sj EjP(String str) {
            this.Jcg = str != null ? Jcg.sP(Jcg.Sj(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        int Sj() {
            int i11 = this.HiB;
            return i11 != -1 ? i11 : Jcg.Sj(this.Sj);
        }

        EnumC0225Sj Sj(Jcg jcg, String str) {
            int iSj;
            int i11;
            int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, 0, str.length());
            int iSP = com.bytedance.sdk.component.sP.Sj.sP.uA.sP(str, iSj2, str.length());
            if (sP(str, iSj2, iSP) != -1) {
                if (str.regionMatches(true, iSj2, "https:", 0, 6)) {
                    this.Sj = "https";
                    iSj2 += 6;
                } else {
                    if (!str.regionMatches(true, iSj2, "http:", 0, 5)) {
                        return EnumC0225Sj.UNSUPPORTED_SCHEME;
                    }
                    this.Sj = "http";
                    iSj2 += 5;
                }
            } else {
                if (jcg == null) {
                    return EnumC0225Sj.MISSING_SCHEME;
                }
                this.Sj = jcg.Sj;
            }
            int iTKC = TKC(str, iSj2, iSP);
            char c11 = '?';
            char c12 = '#';
            if (iTKC >= 2 || jcg == null || !jcg.Sj.equals(this.Sj)) {
                boolean z10 = false;
                boolean z11 = false;
                int i12 = iSj2 + iTKC;
                while (true) {
                    iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i12, iSP, "@/\\?#");
                    byte bCharAt = iSj != iSP ? str.charAt(iSj) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c12 || bCharAt == 47 || bCharAt == 92 || bCharAt == c11) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z10) {
                            i11 = iSj;
                            this.TKC += "%40" + Jcg.Sj(str, i12, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iSj3 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i12, iSj, ':');
                            i11 = iSj;
                            String strSj = Jcg.Sj(str, i12, iSj3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strSj = this.sP + "%40" + strSj;
                            }
                            this.sP = strSj;
                            if (iSj3 != i11) {
                                this.TKC = Jcg.Sj(str, iSj3 + 1, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        }
                        i12 = i11 + 1;
                        c11 = '?';
                        c12 = '#';
                    }
                }
                int iEjP = EjP(str, i12, iSj);
                int i13 = iEjP + 1;
                if (i13 < iSj) {
                    this.EjP = HiB(str, i12, iEjP);
                    int iVS = vS(str, i13, iSj);
                    this.HiB = iVS;
                    if (iVS == -1) {
                        return EnumC0225Sj.INVALID_PORT;
                    }
                } else {
                    this.EjP = HiB(str, i12, iEjP);
                    this.HiB = Jcg.Sj(this.Sj);
                }
                if (this.EjP == null) {
                    return EnumC0225Sj.INVALID_HOST;
                }
                iSj2 = iSj;
            } else {
                this.sP = jcg.sP();
                this.TKC = jcg.TKC();
                this.EjP = jcg.sP;
                this.HiB = jcg.TKC;
                this.vS.clear();
                this.vS.addAll(jcg.EjP());
                if (iSj2 == iSP || str.charAt(iSj2) == '#') {
                    EjP(jcg.HiB());
                }
            }
            int iSj4 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iSj2, iSP, "?#");
            Sj(str, iSj2, iSj4);
            if (iSj4 < iSP && str.charAt(iSj4) == '?') {
                int iSj5 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iSj4, iSP, '#');
                this.Jcg = Jcg.sP(Jcg.Sj(str, iSj4 + 1, iSj5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iSj4 = iSj5;
            }
            if (iSj4 < iSP && str.charAt(iSj4) == '#') {
                this.Dq = Jcg.Sj(str, 1 + iSj4, iSP, "", true, false, false, false, null);
            }
            return EnumC0225Sj.SUCCESS;
        }

        public Sj Sj(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.Sj = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: ".concat(str));
                }
                this.Sj = "https";
            }
            return this;
        }

        public Sj Sj(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.Jcg == null) {
                this.Jcg = new ArrayList();
            }
            this.Jcg.add(Jcg.Sj(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
            this.Jcg.add(str2 != null ? Jcg.Sj(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
            return this;
        }

        public Sj TKC(String str) {
            if (str != null) {
                return Sj(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public Sj sP(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strHiB = HiB(str, 0, str.length());
            if (strHiB == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.EjP = strHiB;
            return this;
        }

        public Jcg sP() {
            if (this.Sj == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.EjP != null) {
                return new Jcg(this);
            }
            throw new IllegalStateException("host == null");
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.Sj);
            sb2.append("://");
            if (!this.sP.isEmpty() || !this.TKC.isEmpty()) {
                sb2.append(this.sP);
                if (!this.TKC.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.TKC);
                }
                sb2.append('@');
            }
            if (this.EjP.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.EjP);
                sb2.append(']');
            } else {
                sb2.append(this.EjP);
            }
            int iSj = Sj();
            if (iSj != Jcg.Sj(this.Sj)) {
                sb2.append(':');
                sb2.append(iSj);
            }
            Jcg.Sj(sb2, this.vS);
            if (this.Jcg != null) {
                sb2.append('?');
                Jcg.sP(sb2, this.Jcg);
            }
            if (this.Dq != null) {
                sb2.append('#');
                sb2.append(this.Dq);
            }
            return sb2.toString();
        }
    }

    Jcg(Sj sj2) {
        this.Sj = sj2.Sj;
        this.HiB = Sj(sj2.sP, false);
        this.vS = Sj(sj2.TKC, false);
        this.sP = sj2.EjP;
        this.TKC = sj2.Sj();
        this.Jcg = Sj(sj2.vS, false);
        List<String> list = sj2.Jcg;
        this.Dq = list != null ? Sj(list, true) : null;
        String str = sj2.Dq;
        this.uA = str != null ? Sj(str, false) : null;
        this.TEQ = sj2.toString();
    }

    public static int Sj(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    static String Sj(String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i11;
        while (iCharCount < i12) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z13)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z10 && (!z11 || Sj(str, iCharCount, i12)))) && (iCodePointAt != 43 || !z12))) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            com.bytedance.sdk.component.sP.Sj.sP.Sj sj2 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
            sj2.Sj(str, i11, iCharCount);
            Sj(sj2, str, iCharCount, i12, str2, z10, z11, z12, z13, charset);
            return sj2.TKC();
        }
        return str.substring(i11, i12);
    }

    static String Sj(String str, int i11, int i12, boolean z10) {
        for (int i13 = i11; i13 < i12; i13++) {
            char cCharAt = str.charAt(i13);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                com.bytedance.sdk.component.sP.Sj.sP.Sj sj2 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
                sj2.Sj(str, i11, i13);
                Sj(sj2, str, i13, i12, z10);
                return sj2.TKC();
            }
        }
        return str.substring(i11, i12);
    }

    static String Sj(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return Sj(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }

    static String Sj(String str, boolean z10) {
        return Sj(str, 0, str.length(), z10);
    }

    private List<String> Sj(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            String str = list.get(i11);
            arrayList.add(str != null ? Sj(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static void Sj(com.bytedance.sdk.component.sP.Sj.sP.Sj sj2, String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.bytedance.sdk.component.sP.Sj.sP.Sj sj3 = null;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    sj2.Sj(z10 ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z13) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z10 || (z11 && !Sj(str, i11, i12)))))) {
                    if (sj3 == null) {
                        sj3 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
                    }
                    if (charset == null || charset.equals(com.bytedance.sdk.component.sP.Sj.sP.uA.Sj)) {
                        sj3.Sj(iCodePointAt);
                    } else {
                        sj3.Sj(str, i11, Character.charCount(iCodePointAt) + i11, charset);
                    }
                    while (!sj3.Sj()) {
                        byte bSP = sj3.sP();
                        sj2.sP(37);
                        char[] cArr = EjP;
                        sj2.sP((int) cArr[((bSP & 255) >> 4) & 15]);
                        sj2.sP((int) cArr[bSP & 15]);
                    }
                } else {
                    sj2.Sj(iCodePointAt);
                }
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    static void Sj(com.bytedance.sdk.component.sP.Sj.sP.Sj sj2, String str, int i11, int i12, boolean z10) {
        int i13;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (iCodePointAt == 37 && (i13 = i11 + 2) < i12) {
                int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i11 + 1));
                int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i13));
                if (iSj == -1 || iSj2 == -1) {
                    sj2.Sj(iCodePointAt);
                } else {
                    sj2.sP((iSj << 4) + iSj2);
                    i11 = i13;
                }
            } else if (iCodePointAt == 43 && z10) {
                sj2.sP(32);
            } else {
                sj2.Sj(iCodePointAt);
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    static void Sj(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            sb2.append('/');
            sb2.append(list.get(i11));
        }
    }

    static boolean Sj(String str, int i11, int i12) {
        int i13 = i11 + 2;
        return i13 < i12 && str.charAt(i11) == '%' && com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i11 + 1)) != -1 && com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i13)) != -1;
    }

    public static Jcg TKC(String str) {
        Sj sj2 = new Sj();
        if (sj2.Sj((Jcg) null, str) == Sj.EnumC0225Sj.SUCCESS) {
            return sj2.sP();
        }
        return null;
    }

    static List<String> sP(String str) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 <= str.length()) {
            int iIndexOf = str.indexOf(38, i11);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i11);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i11, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i11, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i11 = iIndexOf + 1;
        }
        return arrayList;
    }

    static void sP(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            String str = list.get(i11);
            String str2 = list.get(i11 + 1);
            if (i11 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public List<String> EjP() {
        int iIndexOf = this.TEQ.indexOf(47, this.Sj.length() + 3);
        String str = this.TEQ;
        int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iSj) {
            int i11 = iIndexOf + 1;
            int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(this.TEQ, i11, iSj, '/');
            arrayList.add(this.TEQ.substring(i11, iSj2));
            iIndexOf = iSj2;
        }
        return arrayList;
    }

    public String HiB() {
        if (this.Dq == null) {
            return null;
        }
        int iIndexOf = this.TEQ.indexOf(63) + 1;
        String str = this.TEQ;
        return this.TEQ.substring(iIndexOf, com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iIndexOf, str.length(), '#'));
    }

    public URL Sj() {
        try {
            return new URL(this.TEQ);
        } catch (MalformedURLException e11) {
            throw new RuntimeException(e11);
        }
    }

    public String TKC() {
        if (this.vS.isEmpty()) {
            return "";
        }
        return this.TEQ.substring(this.TEQ.indexOf(58, this.Sj.length() + 3) + 1, this.TEQ.indexOf(64));
    }

    public boolean equals(Object obj) {
        return (obj instanceof Jcg) && ((Jcg) obj).TEQ.equals(this.TEQ);
    }

    public int hashCode() {
        return this.TEQ.hashCode();
    }

    public String sP() {
        if (this.HiB.isEmpty()) {
            return "";
        }
        int length = this.Sj.length() + 3;
        String str = this.TEQ;
        return this.TEQ.substring(length, com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, length, str.length(), ":@"));
    }

    public String toString() {
        return this.TEQ;
    }
}
