package ha;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import ba.h;
import ba.i;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.t;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Pattern f64406q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Pattern f64407r = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final StringBuilder f64408o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f64409p;

    public a() {
        super("SubripDecoder");
        this.f64408o = new StringBuilder();
        this.f64409p = new ArrayList();
    }

    private String A(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb2 = new StringBuilder(strTrim);
        Matcher matcher = f64407r.matcher(strTrim);
        int i11 = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i11;
            int length = strGroup.length();
            sb2.replace(iStart, iStart + length, "");
            i11 += length;
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private ba.b x(Spanned spanned, String str) {
        byte b11;
        byte b12;
        ba.b.C0143b c0143bO = new ba.b.C0143b().o(spanned);
        if (str == null) {
            return c0143bO.a();
        }
        switch (str) {
            case "{\an1}":
                b11 = 0;
                break;
            case "{\an2}":
                b11 = 6;
                break;
            case "{\an3}":
                b11 = 3;
                break;
            case "{\an4}":
                b11 = 1;
                break;
            case "{\an5}":
                b11 = 7;
                break;
            case "{\an6}":
                b11 = 4;
                break;
            case "{\an7}":
                b11 = 2;
                break;
            case "{\an8}":
                b11 = 8;
                break;
            case "{\an9}":
                b11 = 5;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0 || b11 == 1 || b11 == 2) {
            c0143bO.l(0);
        } else if (b11 == 3 || b11 == 4 || b11 == 5) {
            c0143bO.l(2);
        } else {
            c0143bO.l(1);
        }
        switch (str) {
            case "{\an1}":
                b12 = 0;
                break;
            case "{\an2}":
                b12 = 1;
                break;
            case "{\an3}":
                b12 = 2;
                break;
            case "{\an4}":
                b12 = 6;
                break;
            case "{\an5}":
                b12 = 7;
                break;
            case "{\an6}":
                b12 = 8;
                break;
            case "{\an7}":
                b12 = 3;
                break;
            case "{\an8}":
                b12 = 4;
                break;
            case "{\an9}":
                b12 = 5;
                break;
            default:
                b12 = -1;
                break;
        }
        if (b12 == 0 || b12 == 1 || b12 == 2) {
            c0143bO.i(2);
        } else if (b12 == 3 || b12 == 4 || b12 == 5) {
            c0143bO.i(0);
        } else {
            c0143bO.i(1);
        }
        return c0143bO.k(y(c0143bO.d())).h(y(c0143bO.c()), 0).a();
    }

    static float y(int i11) {
        if (i11 == 0) {
            return 0.08f;
        }
        if (i11 == 1) {
            return 0.5f;
        }
        if (i11 == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    private static long z(Matcher matcher, int i11) {
        String strGroup = matcher.group(i11 + 1);
        long j11 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i11 + 2))) * 60000) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i11 + 3))) * 1000);
        String strGroup2 = matcher.group(i11 + 4);
        if (strGroup2 != null) {
            j11 += Long.parseLong(strGroup2);
        }
        return j11 * 1000;
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) {
        String str;
        ArrayList arrayList = new ArrayList();
        t tVar = new t();
        d0 d0Var = new d0(bArr, i11);
        while (true) {
            String strP = d0Var.p();
            int i12 = 0;
            if (strP == null) {
                break;
            }
            if (strP.length() != 0) {
                try {
                    Integer.parseInt(strP);
                    String strP2 = d0Var.p();
                    if (strP2 == null) {
                        s.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f64406q.matcher(strP2);
                    if (matcher.matches()) {
                        tVar.a(z(matcher, 1));
                        tVar.a(z(matcher, 6));
                        this.f64408o.setLength(0);
                        this.f64409p.clear();
                        for (String strP3 = d0Var.p(); !TextUtils.isEmpty(strP3); strP3 = d0Var.p()) {
                            if (this.f64408o.length() > 0) {
                                this.f64408o.append("<br>");
                            }
                            this.f64408o.append(A(strP3, this.f64409p));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.f64408o.toString());
                        while (true) {
                            if (i12 >= this.f64409p.size()) {
                                str = null;
                                break;
                            }
                            str = (String) this.f64409p.get(i12);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i12++;
                        }
                        arrayList.add(x(spannedFromHtml, str));
                        arrayList.add(ba.b.f16249r);
                    } else {
                        s.i("SubripDecoder", "Skipping invalid timing: " + strP2);
                    }
                } catch (NumberFormatException unused) {
                    s.i("SubripDecoder", "Skipping invalid index: " + strP);
                }
            }
        }
        return new b((ba.b[]) arrayList.toArray(new ba.b[0]), tVar.d());
    }
}
