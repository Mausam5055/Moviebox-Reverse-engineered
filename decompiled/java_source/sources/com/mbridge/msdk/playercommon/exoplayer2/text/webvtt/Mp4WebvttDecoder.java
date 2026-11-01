package com.mbridge.msdk.playercommon.exoplayer2.text.webvtt;

import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder;
import com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleDecoderException;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class Mp4WebvttDecoder extends SimpleSubtitleDecoder {
    private static final int BOX_HEADER_SIZE = 8;
    private static final int TYPE_payl = Util.getIntegerCodeForString("payl");
    private static final int TYPE_sttg = Util.getIntegerCodeForString("sttg");
    private static final int TYPE_vttc = Util.getIntegerCodeForString("vttc");
    private final WebvttCue.Builder builder;
    private final ParsableByteArray sampleData;

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
        this.sampleData = new ParsableByteArray();
        this.builder = new WebvttCue.Builder();
    }

    private static Cue parseVttCueBox(ParsableByteArray parsableByteArray, WebvttCue.Builder builder, int i11) throws SubtitleDecoderException {
        builder.reset();
        while (i11 > 0) {
            if (i11 < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int i12 = parsableByteArray.readInt();
            int i13 = parsableByteArray.readInt();
            int i14 = i12 - 8;
            String strFromUtf8Bytes = Util.fromUtf8Bytes(parsableByteArray.data, parsableByteArray.getPosition(), i14);
            parsableByteArray.skipBytes(i14);
            i11 = (i11 - 8) - i14;
            if (i13 == TYPE_sttg) {
                WebvttCueParser.parseCueSettingsList(strFromUtf8Bytes, builder);
            } else if (i13 == TYPE_payl) {
                WebvttCueParser.parseCueText(null, strFromUtf8Bytes.trim(), builder, Collections.emptyList());
            }
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder
    public Mp4WebvttSubtitle decode(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        this.sampleData.reset(bArr, i11);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.bytesLeft() > 0) {
            if (this.sampleData.bytesLeft() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int i12 = this.sampleData.readInt();
            if (this.sampleData.readInt() == TYPE_vttc) {
                arrayList.add(parseVttCueBox(this.sampleData, this.builder, i12 - 8));
            } else {
                this.sampleData.skipBytes(i12 - 8);
            }
        }
        return new Mp4WebvttSubtitle(arrayList);
    }
}
