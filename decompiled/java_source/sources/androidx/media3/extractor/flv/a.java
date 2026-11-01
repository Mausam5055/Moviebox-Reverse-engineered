package androidx.media3.extractor.flv;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class a extends TagPayloadReader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f13402e = {5512, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f13403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f13404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13405d;

    public a(s0 s0Var) {
        super(s0Var);
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(j0 j0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f13403b) {
            j0Var.X(1);
        } else {
            int iH = j0Var.H();
            int i11 = (iH >> 4) & 15;
            this.f13405d = i11;
            if (i11 == 2) {
                this.f13401a.c(new r.b().U("video/x-flv").u0(MimeTypes.AUDIO_MPEG).R(1).v0(f13402e[(iH >> 2) & 3]).N());
                this.f13404c = true;
            } else if (i11 == 7 || i11 == 8) {
                this.f13401a.c(new r.b().U("video/x-flv").u0(i11 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).R(1).v0(8000).N());
                this.f13404c = true;
            } else if (i11 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f13405d);
            }
            this.f13403b = true;
        }
        return true;
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(j0 j0Var, long j11) {
        if (this.f13405d == 2) {
            int iA = j0Var.a();
            this.f13401a.b(j0Var, iA);
            this.f13401a.d(j11, 1, iA, 0, null);
            return true;
        }
        int iH = j0Var.H();
        if (iH != 0 || this.f13404c) {
            if (this.f13405d == 10 && iH != 1) {
                return false;
            }
            int iA2 = j0Var.a();
            this.f13401a.b(j0Var, iA2);
            this.f13401a.d(j11, 1, iA2, 0, null);
            return true;
        }
        int iA3 = j0Var.a();
        byte[] bArr = new byte[iA3];
        j0Var.l(bArr, 0, iA3);
        l2.a.b bVarE = l2.a.e(bArr);
        this.f13401a.c(new r.b().U("video/x-flv").u0(MimeTypes.AUDIO_AAC).S(bVarE.f68485c).R(bVarE.f68484b).v0(bVarE.f68483a).g0(Collections.singletonList(bArr)).N());
        this.f13404c = true;
        return false;
    }
}
