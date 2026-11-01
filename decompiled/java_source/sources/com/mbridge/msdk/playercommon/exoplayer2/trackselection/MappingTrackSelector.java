package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.RendererCapabilities;
import com.mbridge.msdk.playercommon.exoplayer2.RendererConfiguration;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MappingTrackSelector extends TrackSelector {

    @Nullable
    private MappedTrackInfo currentMappedTrackInfo;

    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;

        @Deprecated
        public final int length;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        @Retention(RetentionPolicy.SOURCE)
        @interface RendererSupport {
        }

        MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            int length = iArr.length;
            this.rendererCount = length;
            this.length = length;
        }

        public int getAdaptiveSupport(int i11, int i12, boolean z10) {
            int i13 = this.rendererTrackGroups[i11].get(i12).length;
            int[] iArr = new int[i13];
            int i14 = 0;
            for (int i15 = 0; i15 < i13; i15++) {
                int trackSupport = getTrackSupport(i11, i12, i15);
                if (trackSupport == 4 || (z10 && trackSupport == 3)) {
                    iArr[i14] = i15;
                    i14++;
                }
            }
            return getAdaptiveSupport(i11, i12, Arrays.copyOf(iArr, i14));
        }

        public int getAdaptiveSupport(int i11, int i12, int[] iArr) {
            int i13 = 0;
            int iMin = 16;
            String str = null;
            boolean z10 = false;
            int i14 = 0;
            while (i13 < iArr.length) {
                String str2 = this.rendererTrackGroups[i11].get(i12).getFormat(iArr[i13]).sampleMimeType;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !Util.areEqual(str, str2);
                }
                iMin = Math.min(iMin, this.rendererFormatSupports[i11][i12][i13] & 24);
                i13++;
                i14 = i15;
            }
            return z10 ? Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i11]) : iMin;
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public int getRendererSupport(int i11) {
            int i12;
            int iMax = 0;
            for (int[] iArr : this.rendererFormatSupports[i11]) {
                int i13 = 0;
                while (true) {
                    if (i13 < iArr.length) {
                        int i14 = iArr[i13] & 7;
                        if (i14 == 3) {
                            i12 = 2;
                        } else {
                            if (i14 == 4) {
                                return 3;
                            }
                            i12 = 1;
                        }
                        iMax = Math.max(iMax, i12);
                        i13++;
                    }
                }
            }
            return iMax;
        }

        public int getRendererType(int i11) {
            return this.rendererTrackTypes[i11];
        }

        @Deprecated
        public int getTrackFormatSupport(int i11, int i12, int i13) {
            return getTrackSupport(i11, i12, i13);
        }

        public TrackGroupArray getTrackGroups(int i11) {
            return this.rendererTrackGroups[i11];
        }

        public int getTrackSupport(int i11, int i12, int i13) {
            return this.rendererFormatSupports[i11][i12][i13] & 7;
        }

        @Deprecated
        public int getTrackTypeRendererSupport(int i11) {
            return getTypeSupport(i11);
        }

        public int getTypeSupport(int i11) {
            int iMax = 0;
            for (int i12 = 0; i12 < this.rendererCount; i12++) {
                if (this.rendererTrackTypes[i12] == i11) {
                    iMax = Math.max(iMax, getRendererSupport(i12));
                }
            }
            return iMax;
        }

        @Deprecated
        public TrackGroupArray getUnassociatedTrackGroups() {
            return getUnmappedTrackGroups();
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }
    }

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < rendererCapabilitiesArr.length; i12++) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i12];
            for (int i13 = 0; i13 < trackGroup.length; i13++) {
                int iSupportsFormat = rendererCapabilities.supportsFormat(trackGroup.getFormat(i13)) & 7;
                if (iSupportsFormat > i11) {
                    if (iSupportsFormat == 4) {
                        return i12;
                    }
                    length = i12;
                    i11 = iSupportsFormat;
                }
            }
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i11 = 0; i11 < trackGroup.length; i11++) {
            iArr[i11] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i11));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = rendererCapabilitiesArr[i11].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Nullable
    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    protected abstract Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2) throws ExoPlaybackException;

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = trackGroupArray.length;
            trackGroupArr[i11] = new TrackGroup[i12];
            iArr2[i11] = new int[i12][];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i13 = 0; i13 < trackGroupArray.length; i13++) {
            TrackGroup trackGroup = trackGroupArray.get(i13);
            int iFindRenderer = findRenderer(rendererCapabilitiesArr, trackGroup);
            int[] formatSupport = iFindRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[iFindRenderer], trackGroup);
            int i14 = iArr[iFindRenderer];
            trackGroupArr[iFindRenderer][i14] = trackGroup;
            iArr2[iFindRenderer][i14] = formatSupport;
            iArr[iFindRenderer] = i14 + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i15 = 0; i15 < rendererCapabilitiesArr.length; i15++) {
            int i16 = iArr[i15];
            trackGroupArrayArr[i15] = new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[i15], i16));
            iArr2[i15] = (int[][]) Util.nullSafeArrayCopy(iArr2[i15], i16);
            iArr3[i15] = rendererCapabilitiesArr[i15].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], TrackSelection[]> pairSelectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports);
        return new TrackSelectorResult((RendererConfiguration[]) pairSelectTracks.first, (TrackSelection[]) pairSelectTracks.second, mappedTrackInfo);
    }
}
