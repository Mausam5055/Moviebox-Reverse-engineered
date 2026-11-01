package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.a0;
import g9.b0;
import g9.e0;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class r implements g9.l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f26187g = Pattern.compile("LOCAL:([^,]+)");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f26188h = Pattern.compile("MPEGTS:(-?\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l0 f26190b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g9.n f26192d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f26194f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f26191c = new d0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f26193e = new byte[1024];

    public r(String str, l0 l0Var) {
        this.f26189a = str;
        this.f26190b = l0Var;
    }

    private e0 a(long j11) {
        e0 e0VarTrack = this.f26192d.track(0, 3);
        e0VarTrack.e(new o1.b().e0(MimeTypes.TEXT_VTT).V(this.f26189a).i0(j11).E());
        this.f26192d.endTracks();
        return e0VarTrack;
    }

    private void e() throws ParserException {
        d0 d0Var = new d0(this.f26193e);
        ka.i.e(d0Var);
        long jF = 0;
        long jD = 0;
        for (String strP = d0Var.p(); !TextUtils.isEmpty(strP); strP = d0Var.p()) {
            if (strP.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f26187g.matcher(strP);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer(strP.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(strP) : new String("X-TIMESTAMP-MAP doesn't contain local timestamp: "), null);
                }
                Matcher matcher2 = f26188h.matcher(strP);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer(strP.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(strP) : new String("X-TIMESTAMP-MAP doesn't contain media timestamp: "), null);
                }
                jD = ka.i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
                jF = l0.f(Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1))));
            }
        }
        Matcher matcherA = ka.i.a(d0Var);
        if (matcherA == null) {
            a(0L);
            return;
        }
        long jD2 = ka.i.d((String) com.google.android.exoplayer2.util.a.e(matcherA.group(1)));
        long jB = this.f26190b.b(l0.j((jF + jD2) - jD));
        e0 e0VarA = a(jB - jD2);
        this.f26191c.N(this.f26193e, this.f26194f);
        e0VarA.c(this.f26191c, this.f26194f);
        e0VarA.d(jB, 1, this.f26194f, 0, null);
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f26192d = nVar;
        nVar.d(new b0.b(C.TIME_UNSET));
    }

    @Override // g9.l
    public int c(g9.m mVar, a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.e(this.f26192d);
        int length = (int) mVar.getLength();
        int i11 = this.f26194f;
        byte[] bArr = this.f26193e;
        if (i11 == bArr.length) {
            this.f26193e = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f26193e;
        int i12 = this.f26194f;
        int i13 = mVar.read(bArr2, i12, bArr2.length - i12);
        if (i13 != -1) {
            int i14 = this.f26194f + i13;
            this.f26194f = i14;
            if (length == -1 || i14 != length) {
                return 0;
            }
        }
        e();
        return -1;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        mVar.peekFully(this.f26193e, 0, 6, false);
        this.f26191c.N(this.f26193e, 6);
        if (ka.i.b(this.f26191c)) {
            return true;
        }
        mVar.peekFully(this.f26193e, 6, 3, false);
        this.f26191c.N(this.f26193e, 9);
        return ka.i.b(this.f26191c);
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        throw new IllegalStateException();
    }
}
