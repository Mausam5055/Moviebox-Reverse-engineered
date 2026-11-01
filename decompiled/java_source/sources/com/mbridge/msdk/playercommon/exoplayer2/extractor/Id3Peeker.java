package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.Id3Decoder;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    @Nullable
    public Metadata peekId3Data(ExtractorInput extractorInput, @Nullable Id3Decoder.FramePredicate framePredicate) throws InterruptedException, IOException {
        Metadata metadataDecode = null;
        int i11 = 0;
        while (true) {
            try {
                extractorInput.peekFully(this.scratch.data, 0, 10);
                this.scratch.setPosition(0);
                if (this.scratch.readUnsignedInt24() != Id3Decoder.ID3_TAG) {
                    break;
                }
                this.scratch.skipBytes(3);
                int synchSafeInt = this.scratch.readSynchSafeInt();
                int i12 = synchSafeInt + 10;
                if (metadataDecode == null) {
                    byte[] bArr = new byte[i12];
                    System.arraycopy(this.scratch.data, 0, bArr, 0, 10);
                    extractorInput.peekFully(bArr, 10, synchSafeInt);
                    metadataDecode = new Id3Decoder(framePredicate).decode(bArr, i12);
                } else {
                    extractorInput.advancePeekPosition(synchSafeInt);
                }
                i11 += i12;
            } catch (EOFException unused) {
            }
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i11);
        return metadataDecode;
    }
}
