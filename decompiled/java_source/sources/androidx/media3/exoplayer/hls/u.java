package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l2.l0;
import l2.m0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements l2.r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f11998i = Pattern.compile("LOCAL:([^,]+)");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f11999j = Pattern.compile("MPEGTS:(-?\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p0 f12001b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i3.s.a f12003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f12004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l2.t f12005f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12007h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f12002c = new j0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f12006g = new byte[1024];

    public u(String str, p0 p0Var, i3.s.a aVar, boolean z10) {
        this.f12000a = str;
        this.f12001b = p0Var;
        this.f12003d = aVar;
        this.f12004e = z10;
    }

    private s0 a(long j11) {
        s0 s0VarTrack = this.f12005f.track(0, 3);
        s0VarTrack.c(new androidx.media3.common.r.b().u0(MimeTypes.TEXT_VTT).j0(this.f12000a).y0(j11).N());
        this.f12005f.endTracks();
        return s0VarTrack;
    }

    private void g() throws ParserException {
        j0 j0Var = new j0(this.f12006g);
        r3.h.e(j0Var);
        long jH = 0;
        long jD = 0;
        for (String strS = j0Var.s(); !TextUtils.isEmpty(strS); strS = j0Var.s()) {
            if (strS.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f11998i.matcher(strS);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strS, null);
                }
                Matcher matcher2 = f11999j.matcher(strS);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strS, null);
                }
                jD = r3.h.d((String) androidx.media3.common.util.a.e(matcher.group(1)));
                jH = p0.h(Long.parseLong((String) androidx.media3.common.util.a.e(matcher2.group(1))));
            }
        }
        Matcher matcherA = r3.h.a(j0Var);
        if (matcherA == null) {
            a(0L);
            return;
        }
        long jD2 = r3.h.d((String) androidx.media3.common.util.a.e(matcherA.group(1)));
        long jB = this.f12001b.b(p0.l((jH + jD2) - jD));
        s0 s0VarA = a(jB - jD2);
        this.f12002c.U(this.f12006g, this.f12007h);
        s0VarA.b(this.f12002c, this.f12007h);
        s0VarA.d(jB, 1, this.f12007h, 0, null);
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        if (this.f12004e) {
            tVar = new i3.t(tVar, this.f12003d);
        }
        this.f12005f = tVar;
        tVar.f(new m0.b(C.TIME_UNSET));
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.e(this.f12005f);
        int length = (int) sVar.getLength();
        int i11 = this.f12007h;
        byte[] bArr = this.f12006g;
        if (i11 == bArr.length) {
            this.f12006g = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f12006g;
        int i12 = this.f12007h;
        int i13 = sVar.read(bArr2, i12, bArr2.length - i12);
        if (i13 != -1) {
            int i14 = this.f12007h + i13;
            this.f12007h = i14;
            if (length == -1 || i14 != length) {
                return 0;
            }
        }
        g();
        return -1;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        sVar.peekFully(this.f12006g, 0, 6, false);
        this.f12002c.U(this.f12006g, 6);
        if (r3.h.b(this.f12002c)) {
            return true;
        }
        sVar.peekFully(this.f12006g, 6, 3, false);
        this.f12002c.U(this.f12006g, 9);
        return r3.h.b(this.f12002c);
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return l2.q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        throw new IllegalStateException();
    }
}
