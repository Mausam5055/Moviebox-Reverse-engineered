package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.r4;
import com.transsion.home.p004enum.BottomTabType;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f26511a = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f26512b = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f26513c = Pattern.compile("Content-Length:\\s?(\\d+)", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f26514d = Pattern.compile("([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f26515e = Pattern.compile("Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f26516f = Pattern.compile("Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f26517g = new String(new byte[]{10});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f26518h = new String(new byte[]{13, 10});

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26520b;

        public a(String str, String str2) {
            this.f26519a = str;
            this.f26520b = str2;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26522b;

        public b(String str, long j11) {
            this.f26521a = str;
            this.f26522b = j11;
        }
    }

    public static byte[] a(List list) {
        return com.google.common.base.g.h(f26518h).d(list).getBytes(u.f26488g);
    }

    private static String b(int i11) {
        if (i11 == 200) {
            return "OK";
        }
        if (i11 == 461) {
            return "Unsupported Transport";
        }
        if (i11 == 500) {
            return "Internal Server Error";
        }
        if (i11 == 505) {
            return "RTSP Version Not Supported";
        }
        if (i11 == 301) {
            return "Move Permanently";
        }
        if (i11 == 302) {
            return "Move Temporarily";
        }
        if (i11 == 400) {
            return "Bad Request";
        }
        if (i11 == 401) {
            return "Unauthorized";
        }
        if (i11 == 404) {
            return "Not Found";
        }
        if (i11 == 405) {
            return "Method Not Allowed";
        }
        switch (i11) {
            case 454:
                return "Session Not Found";
            case 455:
                return "Method Not Valid In This State";
            case 456:
                return "Header Field Not Valid";
            case 457:
                return "Invalid Range";
            default:
                throw new IllegalArgumentException();
        }
    }

    public static byte[] c(String str) {
        return str.getBytes(u.f26488g);
    }

    public static boolean d(List list) {
        return f26512b.matcher((CharSequence) list.get(0)).matches();
    }

    public static boolean e(String str) {
        return f26511a.matcher(str).matches() || f26512b.matcher(str).matches();
    }

    public static long f(String str) {
        try {
            Matcher matcher = f26513c.matcher(str);
            if (matcher.find()) {
                return Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            return -1L;
        } catch (NumberFormatException e11) {
            throw ParserException.createForMalformedManifest(str, e11);
        }
    }

    public static int g(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e11) {
            throw ParserException.createForMalformedManifest(str, e11);
        }
    }

    private static int h(String str) {
        str.hashCode();
        switch (str) {
            case "RECORD":
                return 8;
            case "TEARDOWN":
                return 12;
            case "GET_PARAMETER":
                return 3;
            case "OPTIONS":
                return 4;
            case "PLAY_NOTIFY":
                return 7;
            case "PLAY":
                return 6;
            case "REDIRECT":
                return 9;
            case "SET_PARAMETER":
                return 11;
            case "PAUSE":
                return 5;
            case "SETUP":
                return 10;
            case "ANNOUNCE":
                return 1;
            case "DESCRIBE":
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static ImmutableList i(String str) {
        if (str == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar = new ImmutableList.a();
        for (String str2 : p0.S0(str, ",\\s?")) {
            aVar.a(Integer.valueOf(h(str2)));
        }
        return aVar.e();
    }

    public static b0 j(List list) {
        Matcher matcher = f26511a.matcher((CharSequence) list.get(0));
        com.google.android.exoplayer2.util.a.a(matcher.matches());
        int iH = h((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        Uri uri = Uri.parse((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
        int iIndexOf = list.indexOf("");
        com.google.android.exoplayer2.util.a.a(iIndexOf > 0);
        return new b0(uri, iH, new o.b().c(list.subList(1, iIndexOf)).e(), com.google.common.base.g.h(f26518h).d(list.subList(iIndexOf + 1, list.size())));
    }

    public static c0 k(List list) {
        Matcher matcher = f26512b.matcher((CharSequence) list.get(0));
        com.google.android.exoplayer2.util.a.a(matcher.matches());
        int i11 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        int iIndexOf = list.indexOf("");
        com.google.android.exoplayer2.util.a.a(iIndexOf > 0);
        return new c0(i11, new o.b().c(list.subList(1, iIndexOf)).e(), com.google.common.base.g.h(f26518h).d(list.subList(iIndexOf + 1, list.size())));
    }

    public static b l(String str) throws ParserException {
        long j11;
        Matcher matcher = f26514d.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedManifest(str, null);
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            try {
                j11 = ((long) Integer.parseInt(strGroup)) * 1000;
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(str, e11);
            }
        } else {
            j11 = 60000;
        }
        return new b(str2, j11);
    }

    public static a m(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        String[] strArrT0 = p0.T0(userInfo, ":");
        return new a(strArrT0[0], strArrT0[1]);
    }

    public static l n(String str) throws ParserException {
        Matcher matcher = f26515e.matcher(str);
        if (matcher.find()) {
            return new l(2, (String) com.google.android.exoplayer2.util.a.e(matcher.group(1)), (String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), com.google.common.base.p.e(matcher.group(4)));
        }
        Matcher matcher2 = f26516f.matcher(str);
        if (matcher2.matches()) {
            return new l(1, (String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)), "", "");
        }
        String strValueOf = String.valueOf(str);
        throw ParserException.createForMalformedManifest(strValueOf.length() != 0 ? "Invalid WWW-Authenticate header ".concat(strValueOf) : new String("Invalid WWW-Authenticate header "), null);
    }

    public static Uri o(Uri uri) {
        if (uri.getUserInfo() == null) {
            return uri;
        }
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getAuthority());
        com.google.android.exoplayer2.util.a.a(str.contains("@"));
        return uri.buildUpon().encodedAuthority(p0.S0(str, "@")[1]).build();
    }

    public static ImmutableList p(b0 b0Var) {
        com.google.android.exoplayer2.util.a.a(b0Var.f26331c.d("CSeq") != null);
        ImmutableList.a aVar = new ImmutableList.a();
        aVar.a(p0.C("%s %s %s", s(b0Var.f26330b), b0Var.f26329a, "RTSP/1.0"));
        ImmutableListMultimap immutableListMultimapB = b0Var.f26331c.b();
        r4 it = immutableListMultimapB.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ImmutableList immutableList = immutableListMultimapB.get(str);
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                aVar.a(p0.C("%s: %s", str, immutableList.get(i11)));
            }
        }
        aVar.a("");
        aVar.a(b0Var.f26332d);
        return aVar.e();
    }

    public static ImmutableList q(c0 c0Var) {
        com.google.android.exoplayer2.util.a.a(c0Var.f26334b.d("CSeq") != null);
        ImmutableList.a aVar = new ImmutableList.a();
        aVar.a(p0.C("%s %s %s", "RTSP/1.0", Integer.valueOf(c0Var.f26333a), b(c0Var.f26333a)));
        ImmutableListMultimap immutableListMultimapB = c0Var.f26334b.b();
        r4 it = immutableListMultimapB.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ImmutableList immutableList = immutableListMultimapB.get(str);
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                aVar.a(p0.C("%s: %s", str, immutableList.get(i11)));
            }
        }
        aVar.a("");
        aVar.a(c0Var.f26335c);
        return aVar.e();
    }

    public static String[] r(String str) {
        String str2 = f26518h;
        if (!str.contains(str2)) {
            str2 = f26517g;
        }
        return p0.S0(str, str2);
    }

    public static String s(int i11) {
        switch (i11) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case 6:
                return "PLAY";
            case 7:
                return "PLAY_NOTIFY";
            case 8:
                return "RECORD";
            case 9:
                return BottomTabType.TAB_OPEN_TYPE_TAB;
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }
}
