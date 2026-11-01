package com.google.android.exoplayer2.extractor.flv;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.e0;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
final class a extends TagPayloadReader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f25042e = {5512, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25045d;

    public a(e0 e0Var) {
        super(e0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(d0 d0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f25043b) {
            d0Var.Q(1);
        } else {
            int iD = d0Var.D();
            int i11 = (iD >> 4) & 15;
            this.f25045d = i11;
            if (i11 == 2) {
                this.f25041a.e(new o1.b().e0(MimeTypes.AUDIO_MPEG).H(1).f0(f25042e[(iD >> 2) & 3]).E());
                this.f25044c = true;
            } else if (i11 == 7 || i11 == 8) {
                this.f25041a.e(new o1.b().e0(i11 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).H(1).f0(8000).E());
                this.f25044c = true;
            } else if (i11 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f25045d);
            }
            this.f25043b = true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(d0 d0Var, long j11) {
        if (this.f25045d == 2) {
            int iA = d0Var.a();
            this.f25041a.c(d0Var, iA);
            this.f25041a.d(j11, 1, iA, 0, null);
            return true;
        }
        int iD = d0Var.D();
        if (iD != 0 || this.f25044c) {
            if (this.f25045d == 10 && iD != 1) {
                return false;
            }
            int iA2 = d0Var.a();
            this.f25041a.c(d0Var, iA2);
            this.f25041a.d(j11, 1, iA2, 0, null);
            return true;
        }
        int iA3 = d0Var.a();
        byte[] bArr = new byte[iA3];
        d0Var.j(bArr, 0, iA3);
        com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArr);
        this.f25041a.e(new o1.b().e0(MimeTypes.AUDIO_AAC).I(bVarF.f24600c).H(bVarF.f24599b).f0(bVarF.f24598a).T(Collections.singletonList(bArr)).E());
        this.f25044c = true;
        return false;
    }
}
