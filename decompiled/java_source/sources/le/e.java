package le;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import oe.g;

/* JADX INFO: loaded from: classes5.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f68811a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f68812b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f68813c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f68814d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f68815e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f68816f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f68817g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    static String a(String str, String str2) {
        g.f(str, "HTML is null or empty");
        int[][] iArrD = d(str);
        StringBuilder sb2 = new StringBuilder(str.length() + str2.length() + 16);
        if (!f(str, sb2, f68812b, str2, iArrD) && !c(str, sb2, f68811a, str2, iArrD) && !f(str, sb2, f68814d, str2, iArrD) && !c(str, sb2, f68813c, str2, iArrD) && !f(str, sb2, f68816f, str2, iArrD) && !c(str, sb2, f68815e, str2, iArrD) && !c(str, sb2, f68817g, str2, iArrD)) {
            return str2 + str;
        }
        return sb2.toString();
    }

    private static boolean b(int i11, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i11 >= iArr2[0] && i11 <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean c(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i11 = 0;
        while (matcher.find(i11)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!b(iStart, iArr)) {
                sb2.append(str.substring(0, matcher.end()));
                sb2.append(str2);
                sb2.append(str.substring(matcher.end()));
                return true;
            }
            i11 = iEnd;
        }
        return false;
    }

    private static int[][] d(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            int iIndexOf = str.indexOf("<!--", i11);
            if (iIndexOf >= 0) {
                int iIndexOf2 = str.indexOf("-->", iIndexOf);
                if (iIndexOf2 >= 0) {
                    arrayList.add(new int[]{iIndexOf, iIndexOf2});
                    i11 = iIndexOf2 + 3;
                } else {
                    arrayList.add(new int[]{iIndexOf, length});
                }
            }
            i11 = length;
        }
        return (int[][]) arrayList.toArray((int[][]) Array.newInstance((Class<?>) Integer.TYPE, 0, 2));
    }

    static String e(String str, String str2) {
        return a(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    private static boolean f(String str, StringBuilder sb2, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i11 = 0;
        while (matcher.find(i11)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!b(iStart, iArr)) {
                sb2.append(str.substring(0, matcher.end() - 2));
                sb2.append(">");
                sb2.append(str2);
                sb2.append("</");
                sb2.append(matcher.group(1));
                sb2.append(">");
                sb2.append(str.substring(matcher.end()));
                return true;
            }
            i11 = iEnd;
        }
        return false;
    }
}
