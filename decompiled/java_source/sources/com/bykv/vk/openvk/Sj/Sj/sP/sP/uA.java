package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class uA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f20274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f20275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f20276c;

    static final class EjP extends Exception {
        EjP(String str) {
            super(str);
        }
    }

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f20277a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f20278b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f20279c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f20280d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f20281e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f20282f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final List f20283g;

        private a(int i11, String str, String str2, int i12, int i13, String str3, List list) {
            this.f20277a = i11;
            this.f20278b = str;
            this.f20279c = str2;
            this.f20280d = i12;
            this.f20281e = i13;
            this.f20282f = str3;
            this.f20283g = list;
        }

        static a a(b bVar, List list) throws EjP {
            String str;
            int i11;
            int i12;
            int iIndexOf = bVar.f20285b.indexOf(UrlUtils.QUESTION_MARK);
            if (iIndexOf == -1) {
                throw new EjP("path format error, path: " + bVar.f20285b);
            }
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            String strDecode = null;
            String strDecode2 = null;
            int i13 = 0;
            for (String str3 : bVar.f20285b.substring(iIndexOf + 1).split(UrlUtils.AND_MARK)) {
                String[] strArrSplit = str3.split(UrlUtils.EQUAL_MARK);
                if (strArrSplit.length == 2) {
                    if ("rk".equals(strArrSplit[0])) {
                        strDecode = Uri.decode(strArrSplit[1]);
                    } else if (CampaignEx.JSON_KEY_AD_K.equals(strArrSplit[0])) {
                        strDecode2 = Uri.decode(strArrSplit[1]);
                    } else if (strArrSplit[0].startsWith(TmcStartParams.KEY_URL_SHORT)) {
                        arrayList.add(Uri.decode(strArrSplit[1]));
                    } else if ("f".equals(strArrSplit[0]) && f6.a.t(strArrSplit[1]) == 1) {
                        i13 = 1;
                    }
                }
            }
            if (TextUtils.isEmpty(strDecode) || TextUtils.isEmpty(strDecode2)) {
                throw new EjP("rawKey or key is empty, path: " + bVar.f20285b);
            }
            if (list != null) {
                Iterator it = list.iterator();
                i12 = 0;
                int i14 = 0;
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar != null && "Range".equalsIgnoreCase(cVar.f20287a)) {
                        int iIndexOf2 = cVar.f20288b.indexOf(UrlUtils.EQUAL_MARK);
                        if (iIndexOf2 == -1) {
                            throw new EjP("Range format error, Range: " + cVar.f20288b);
                        }
                        if (!"bytes".equalsIgnoreCase(cVar.f20288b.substring(0, iIndexOf2).trim())) {
                            throw new EjP("Range format error, Range: " + cVar.f20288b);
                        }
                        String strSubstring = cVar.f20288b.substring(iIndexOf2 + 1);
                        if (strSubstring.contains(",")) {
                            throw new EjP("Range format error, Range: " + cVar.f20288b);
                        }
                        int iIndexOf3 = strSubstring.indexOf("-");
                        if (iIndexOf3 == -1) {
                            throw new EjP("Range format error, Range: " + cVar.f20288b);
                        }
                        String strTrim = strSubstring.substring(0, iIndexOf3).trim();
                        String strTrim2 = strSubstring.substring(iIndexOf3 + 1).trim();
                        try {
                            if (strTrim.length() > 0) {
                                i12 = Integer.parseInt(strTrim);
                            }
                            if (strTrim2.length() > 0 && i12 > (i14 = Integer.parseInt(strTrim2))) {
                                throw new EjP("Range format error, Range: " + cVar.f20288b);
                            }
                            str2 = cVar.f20288b;
                        } catch (NumberFormatException unused) {
                            throw new EjP("Range format error, Range: " + cVar.f20288b);
                        }
                    }
                }
                i11 = i14;
                str = str2;
            } else {
                str = null;
                i11 = 0;
                i12 = 0;
            }
            if (!arrayList.isEmpty()) {
                return new a(i13, strDecode, strDecode2, i12, i11, str, arrayList);
            }
            throw new EjP("no url found: path: " + bVar.f20285b);
        }

        public String toString() {
            return "Extra{flag=" + this.f20277a + ", rawKey='" + this.f20278b + "', key='" + this.f20279c + "', from=" + this.f20280d + ", to=" + this.f20281e + ", urls=" + this.f20283g + '}';
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f20284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f20285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f20286c;

        private b(String str, String str2, String str3) {
            this.f20284a = str;
            this.f20285b = str2;
            this.f20286c = str3;
        }

        static b a(String str) throws EjP {
            int iIndexOf = str.indexOf(32);
            if (iIndexOf == -1) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            int iLastIndexOf = str.lastIndexOf(32);
            if (iLastIndexOf <= iIndexOf) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1, iLastIndexOf).trim();
            String strTrim3 = str.substring(iLastIndexOf + 1).trim();
            if (strTrim.length() == 0 || strTrim2.length() == 0 || strTrim3.length() == 0) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            return new b(strTrim, strTrim2, strTrim3);
        }

        public String toString() {
            return "RequestLine{method='" + this.f20284a + "', path='" + this.f20285b + "', version='" + this.f20286c + "'}";
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f20287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f20288b;

        public c(String str, String str2) {
            this.f20287a = str;
            this.f20288b = str2;
        }

        static c a(String str) throws EjP {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf == -1) {
                throw new EjP("request header format error, header: ".concat(str));
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1).trim();
            if (strTrim.length() == 0 || strTrim2.length() == 0) {
                throw new EjP("request header format error, header: ".concat(str));
            }
            return new c(strTrim, strTrim2);
        }

        public String toString() {
            return "Header{name='" + this.f20287a + "', value='" + this.f20288b + "'}";
        }
    }

    public uA(b bVar, List list, a aVar) {
        this.f20274a = bVar;
        this.f20275b = list;
        this.f20276c = aVar;
    }

    public static uA a(InputStream inputStream) throws EjP, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, f6.a.f62341b));
        ArrayList arrayList = new ArrayList();
        b bVarA = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                break;
            }
            String strTrim = line.trim();
            if (bVarA == null) {
                bVarA = b.a(strTrim);
            } else {
                arrayList.add(c.a(strTrim));
            }
        }
        if (bVarA != null) {
            return new uA(bVarA, arrayList, a.a(bVarA, arrayList));
        }
        throw new EjP("request line is null");
    }

    public String toString() {
        return "Request{requestLine=" + this.f20274a + ", headers=" + this.f20275b + ", extra=" + this.f20276c + '}';
    }
}
