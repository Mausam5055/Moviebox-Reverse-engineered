package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import android.util.SparseArray;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.DummyTrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ChunkExtractorWrapper implements ExtractorOutput {
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    public final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;
    private TrackOutputProvider trackOutputProvider;

    private static final class BindingTrackOutput implements TrackOutput {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private final int f36787id;
        private final Format manifestFormat;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        public BindingTrackOutput(int i11, int i12, Format format) {
            this.f36787id = i11;
            this.type = i12;
            this.manifestFormat = format;
        }

        public void bind(TrackOutputProvider trackOutputProvider) {
            if (trackOutputProvider == null) {
                this.trackOutput = new DummyTrackOutput();
                return;
            }
            TrackOutput trackOutputTrack = trackOutputProvider.track(this.f36787id, this.type);
            this.trackOutput = trackOutputTrack;
            Format format = this.sampleFormat;
            if (format != null) {
                trackOutputTrack.format(format);
            }
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.manifestFormat;
            if (format2 != null) {
                format = format.copyWithManifestFormatInfo(format2);
            }
            this.sampleFormat = format;
            this.trackOutput.format(format);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public int sampleData(ExtractorInput extractorInput, int i11, boolean z10) throws InterruptedException, IOException {
            return this.trackOutput.sampleData(extractorInput, i11, z10);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i11) {
            this.trackOutput.sampleData(parsableByteArray, i11);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j11, int i11, int i12, int i13, TrackOutput.CryptoData cryptoData) {
            this.trackOutput.sampleMetadata(j11, i11, i12, i13, cryptoData);
        }
    }

    public interface TrackOutputProvider {
        TrackOutput track(int i11, int i12);
    }

    public ChunkExtractorWrapper(Extractor extractor, int i11, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i11;
        this.primaryTrackManifestFormat = format;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i11 = 0; i11 < this.bindingTrackOutputs.size(); i11++) {
            formatArr[i11] = this.bindingTrackOutputs.valueAt(i11).sampleFormat;
        }
        this.sampleFormats = formatArr;
    }

    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    public void init(TrackOutputProvider trackOutputProvider, long j11) {
        this.trackOutputProvider = trackOutputProvider;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j11 != C.TIME_UNSET) {
                this.extractor.seek(0L, j11);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        extractor.seek(0L, j11);
        for (int i11 = 0; i11 < this.bindingTrackOutputs.size(); i11++) {
            this.bindingTrackOutputs.valueAt(i11).bind(trackOutputProvider);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i11, int i12) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i11);
        if (bindingTrackOutput == null) {
            Assertions.checkState(this.sampleFormats == null);
            bindingTrackOutput = new BindingTrackOutput(i11, i12, i12 == this.primaryTrackType ? this.primaryTrackManifestFormat : null);
            bindingTrackOutput.bind(this.trackOutputProvider);
            this.bindingTrackOutputs.put(i11, bindingTrackOutput);
        }
        return bindingTrackOutput;
    }
}
