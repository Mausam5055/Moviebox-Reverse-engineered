package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
final class d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d0 f26339c = new d0(0, C.TIME_UNSET);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f26340d = Pattern.compile("npt=([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26342b;

    private d0(long j11, long j12) {
        this.f26341a = j11;
        this.f26342b = j12;
    }

    public static String b(long j11) {
        return p0.C("npt=%.3f-", Double.valueOf(j11 / 1000.0d));
    }

    public static d0 d(String str) throws ParserException {
        long j11;
        Matcher matcher = f26340d.matcher(str);
        com.google.android.exoplayer2.util.a.a(matcher.matches());
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
        long j12 = str2.equals("now") ? 0L : (long) (Float.parseFloat(str2) * 1000.0f);
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            try {
                j11 = (long) (Float.parseFloat(strGroup) * 1000.0f);
                com.google.android.exoplayer2.util.a.a(j11 > j12);
            } catch (NumberFormatException e11) {
                throw ParserException.createForMalformedManifest(strGroup, e11);
            }
        } else {
            j11 = C.TIME_UNSET;
        }
        return new d0(j12, j11);
    }

    public long a() {
        return this.f26342b - this.f26341a;
    }

    public boolean c() {
        return this.f26342b == C.TIME_UNSET;
    }
}
