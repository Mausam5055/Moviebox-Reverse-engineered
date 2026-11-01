package p9;

import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.h0;
import java.util.Arrays;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
final class h extends i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final byte[] f72371o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f72372p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f72373n;

    h() {
    }

    private long n(byte[] bArr) {
        int i11;
        int i12;
        byte b11 = bArr[0];
        int i13 = b11 & 255;
        int i14 = b11 & 3;
        if (i14 != 0) {
            i11 = 2;
            if (i14 != 1 && i14 != 2) {
                i11 = bArr[1] & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i11 = 1;
        }
        int i15 = i13 >> 3;
        int i16 = i15 & 3;
        if (i15 >= 16) {
            i12 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << i16;
        } else if (i15 >= 12) {
            i12 = 10000 << (i15 & 1);
        } else {
            i12 = i16 == 3 ? 60000 : 10000 << i16;
        }
        return ((long) i11) * ((long) i12);
    }

    private static boolean o(d0 d0Var, byte[] bArr) {
        if (d0Var.a() < bArr.length) {
            return false;
        }
        int iE = d0Var.e();
        byte[] bArr2 = new byte[bArr.length];
        d0Var.j(bArr2, 0, bArr.length);
        d0Var.P(iE);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean p(d0 d0Var) {
        return o(d0Var, f72371o);
    }

    @Override // p9.i
    protected long f(d0 d0Var) {
        return c(n(d0Var.d()));
    }

    @Override // p9.i
    protected boolean h(d0 d0Var, long j11, i.b bVar) {
        if (o(d0Var, f72371o)) {
            byte[] bArrCopyOf = Arrays.copyOf(d0Var.d(), d0Var.f());
            int iC = c0.c(bArrCopyOf);
            List listA = c0.a(bArrCopyOf);
            if (bVar.f72387a != null) {
                return true;
            }
            bVar.f72387a = new o1.b().e0(MimeTypes.AUDIO_OPUS).H(iC).f0(48000).T(listA).E();
            return true;
        }
        byte[] bArr = f72372p;
        if (!o(d0Var, bArr)) {
            com.google.android.exoplayer2.util.a.i(bVar.f72387a);
            return false;
        }
        com.google.android.exoplayer2.util.a.i(bVar.f72387a);
        if (this.f72373n) {
            return true;
        }
        this.f72373n = true;
        d0Var.Q(bArr.length);
        Metadata metadataC = h0.c(ImmutableList.copyOf(h0.j(d0Var, false, false).f63418b));
        if (metadataC == null) {
            return true;
        }
        bVar.f72387a = bVar.f72387a.b().X(metadataC.copyWithAppendedEntriesFrom(bVar.f72387a.f25494j)).E();
        return true;
    }

    @Override // p9.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f72373n = false;
        }
    }
}
