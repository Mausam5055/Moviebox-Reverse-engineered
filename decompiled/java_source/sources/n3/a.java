package n3;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.e;
import i3.k;
import i3.r;
import i3.s;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f70171d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f70172e = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringBuilder f70173a = new StringBuilder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f70174b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f70175c = new j0();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private u1.a d(Spanned spanned, String str) {
        byte b11;
        byte b12;
        u1.a.b bVarO = new u1.a.b().o(spanned);
        if (str == null) {
            return bVarO.a();
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
            bVarO.l(0);
        } else if (b11 == 3 || b11 == 4 || b11 == 5) {
            bVarO.l(2);
        } else {
            bVarO.l(1);
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
            bVarO.i(2);
        } else if (b12 == 3 || b12 == 4 || b12 == 5) {
            bVarO.i(0);
        } else {
            bVarO.i(1);
        }
        return bVarO.k(f(bVarO.d())).h(f(bVarO.c()), 0).a();
    }

    private Charset e(j0 j0Var) {
        Charset charsetR = j0Var.R();
        return charsetR != null ? charsetR : StandardCharsets.UTF_8;
    }

    public static float f(int i11) {
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

    private static long g(Matcher matcher, int i11) {
        String strGroup = matcher.group(i11 + 1);
        long j11 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(i11 + 2))) * 60000) + (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(i11 + 3))) * 1000);
        String strGroup2 = matcher.group(i11 + 4);
        if (strGroup2 != null) {
            j11 += Long.parseLong(strGroup2);
        }
        return j11 * 1000;
    }

    private String h(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb2 = new StringBuilder(strTrim);
        Matcher matcher = f70172e.matcher(strTrim);
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

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        String str;
        String str2;
        m mVar2;
        m mVar3 = mVar;
        String str3 = "SubripParser";
        this.f70175c.U(bArr, i11 + i12);
        this.f70175c.W(i11);
        Charset charsetE = e(this.f70175c);
        ArrayList arrayList = (bVar.f64925a == C.TIME_UNSET || !bVar.f64926b) ? null : new ArrayList();
        while (true) {
            String strT = this.f70175c.t(charsetE);
            if (strT == null) {
                break;
            }
            if (strT.length() != 0) {
                try {
                    Integer.parseInt(strT);
                    String strT2 = this.f70175c.t(charsetE);
                    if (strT2 == null) {
                        u.h(str3, "Unexpected end");
                        break;
                    }
                    Matcher matcher = f70171d.matcher(strT2);
                    if (matcher.matches()) {
                        long jG = g(matcher, 1);
                        long jG2 = g(matcher, 6);
                        int i13 = 0;
                        this.f70173a.setLength(0);
                        this.f70174b.clear();
                        String strT3 = this.f70175c.t(charsetE);
                        while (!TextUtils.isEmpty(strT3)) {
                            if (this.f70173a.length() > 0) {
                                this.f70173a.append("<br>");
                            }
                            this.f70173a.append(h(strT3, this.f70174b));
                            strT3 = this.f70175c.t(charsetE);
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.f70173a.toString());
                        while (true) {
                            if (i13 >= this.f70174b.size()) {
                                str2 = null;
                                break;
                            }
                            str2 = (String) this.f70174b.get(i13);
                            if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            } else {
                                i13++;
                            }
                        }
                        long j11 = bVar.f64925a;
                        if (j11 == C.TIME_UNSET || jG >= j11) {
                            mVar2 = mVar;
                            mVar2.accept(new e(ImmutableList.of(d(spannedFromHtml, str2)), jG, jG2 - jG));
                        } else {
                            if (arrayList != null) {
                                arrayList.add(new e(ImmutableList.of(d(spannedFromHtml, str2)), jG, jG2 - jG));
                            }
                            mVar2 = mVar;
                        }
                        mVar3 = mVar2;
                        str3 = str3;
                    } else {
                        str = str3;
                        u.h(str, "Skipping invalid timing: " + strT2);
                        mVar3 = mVar3;
                        str3 = str;
                    }
                } catch (NumberFormatException unused) {
                    str = str3;
                    u.h(str, "Skipping invalid index: " + strT);
                }
            }
        }
        m mVar4 = mVar3;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                mVar4.accept((e) it.next());
            }
        }
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 1;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
