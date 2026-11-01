package com.mbridge.msdk.playercommon.exoplayer2.source;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.SeekParameters;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes5.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private MediaPeriod[] enabledPeriods;
    public final MediaPeriod[] periods;
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j11) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(j11);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.childrenPendingPreparation.get(i11).continueLoading(j11);
        }
        return false;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j11, boolean z10) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j11, z10);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j11, SeekParameters seekParameters) {
        return this.enabledPeriods[0].getAdjustedSeekPositionUs(j11, seekParameters);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (this.childrenPendingPreparation.isEmpty()) {
            int i11 = 0;
            for (MediaPeriod mediaPeriod2 : this.periods) {
                i11 += mediaPeriod2.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i11];
            int i12 = 0;
            for (MediaPeriod mediaPeriod3 : this.periods) {
                TrackGroupArray trackGroups = mediaPeriod3.getTrackGroups();
                int i13 = trackGroups.length;
                int i14 = 0;
                while (i14 < i13) {
                    trackGroupArr[i12] = trackGroups.get(i14);
                    i14++;
                    i12++;
                }
            }
            this.trackGroups = new TrackGroupArray(trackGroupArr);
            this.callback.onPrepared(this);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j11) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        long discontinuity = this.periods[0].readDiscontinuity();
        int i11 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i11 >= mediaPeriodArr.length) {
                if (discontinuity != C.TIME_UNSET) {
                    for (MediaPeriod mediaPeriod : this.enabledPeriods) {
                        if (mediaPeriod != this.periods[0] && mediaPeriod.seekToUs(discontinuity) != discontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return discontinuity;
            }
            if (mediaPeriodArr[i11].readDiscontinuity() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity.");
            }
            i11++;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j11) {
        this.compositeSequenceableLoader.reevaluateBuffer(j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long seekToUs(long j11) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j11);
        int i11 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i11 >= mediaPeriodArr.length) {
                return jSeekToUs;
            }
            if (mediaPeriodArr[i11].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i11++;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j11) {
        SampleStream[] sampleStreamArr2 = sampleStreamArr;
        int[] iArr = new int[trackSelectionArr.length];
        int[] iArr2 = new int[trackSelectionArr.length];
        for (int i11 = 0; i11 < trackSelectionArr.length; i11++) {
            SampleStream sampleStream = sampleStreamArr2[i11];
            iArr[i11] = sampleStream == null ? -1 : this.streamPeriodIndices.get(sampleStream).intValue();
            iArr2[i11] = -1;
            TrackSelection trackSelection = trackSelectionArr[i11];
            if (trackSelection != null) {
                TrackGroup trackGroup = trackSelection.getTrackGroup();
                int i12 = 0;
                while (true) {
                    MediaPeriod[] mediaPeriodArr = this.periods;
                    if (i12 >= mediaPeriodArr.length) {
                        break;
                    }
                    if (mediaPeriodArr[i12].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i11] = i12;
                        break;
                    }
                    i12++;
                }
            }
        }
        this.streamPeriodIndices.clear();
        int length = trackSelectionArr.length;
        SampleStream[] sampleStreamArr3 = new SampleStream[length];
        SampleStream[] sampleStreamArr4 = new SampleStream[trackSelectionArr.length];
        TrackSelection[] trackSelectionArr2 = new TrackSelection[trackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j12 = j11;
        int i13 = 0;
        while (i13 < this.periods.length) {
            for (int i14 = 0; i14 < trackSelectionArr.length; i14++) {
                TrackSelection trackSelection2 = null;
                sampleStreamArr4[i14] = iArr[i14] == i13 ? sampleStreamArr2[i14] : null;
                if (iArr2[i14] == i13) {
                    trackSelection2 = trackSelectionArr[i14];
                }
                trackSelectionArr2[i14] = trackSelection2;
            }
            int i15 = i13;
            TrackSelection[] trackSelectionArr3 = trackSelectionArr2;
            ArrayList arrayList2 = arrayList;
            long jSelectTracks = this.periods[i13].selectTracks(trackSelectionArr2, zArr, sampleStreamArr4, zArr2, j12);
            if (i15 == 0) {
                j12 = jSelectTracks;
            } else if (jSelectTracks != j12) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i16 = 0; i16 < trackSelectionArr.length; i16++) {
                if (iArr2[i16] == i15) {
                    Assertions.checkState(sampleStreamArr4[i16] != null);
                    sampleStreamArr3[i16] = sampleStreamArr4[i16];
                    this.streamPeriodIndices.put(sampleStreamArr4[i16], Integer.valueOf(i15));
                    z10 = true;
                } else if (iArr[i16] == i15) {
                    Assertions.checkState(sampleStreamArr4[i16] == null);
                }
            }
            if (z10) {
                arrayList2.add(this.periods[i15]);
            }
            i13 = i15 + 1;
            arrayList = arrayList2;
            trackSelectionArr2 = trackSelectionArr3;
            sampleStreamArr2 = sampleStreamArr;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(sampleStreamArr3, 0, sampleStreamArr2, 0, length);
        MediaPeriod[] mediaPeriodArr2 = new MediaPeriod[arrayList3.size()];
        this.enabledPeriods = mediaPeriodArr2;
        arrayList3.toArray(mediaPeriodArr2);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.enabledPeriods);
        return j12;
    }
}
