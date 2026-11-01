package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.RendererConfiguration;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultTrackSelector extends MappingTrackSelector {
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    private static final int[] NO_TRACKS = new int[0];
    private static final int WITHIN_RENDERER_CAPABILITIES_BONUS = 1000;

    @Nullable
    private final TrackSelection.Factory adaptiveTrackSelectionFactory;
    private final AtomicReference<Parameters> parametersReference;

    private static final class AudioConfigurationTuple {
        public final int channelCount;

        @Nullable
        public final String mimeType;
        public final int sampleRate;

        public AudioConfigurationTuple(int i11, int i12, @Nullable String str) {
            this.channelCount = i11;
            this.sampleRate = i12;
            this.mimeType = str;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AudioConfigurationTuple.class != obj.getClass()) {
                return false;
            }
            AudioConfigurationTuple audioConfigurationTuple = (AudioConfigurationTuple) obj;
            return this.channelCount == audioConfigurationTuple.channelCount && this.sampleRate == audioConfigurationTuple.sampleRate && TextUtils.equals(this.mimeType, audioConfigurationTuple.mimeType);
        }

        public int hashCode() {
            int i11 = ((this.channelCount * 31) + this.sampleRate) * 31;
            String str = this.mimeType;
            return i11 + (str != null ? str.hashCode() : 0);
        }
    }

    private static final class AudioTrackScore implements Comparable<AudioTrackScore> {
        private final int bitrate;
        private final int channelCount;
        private final int defaultSelectionFlagScore;
        private final int matchLanguageScore;
        private final Parameters parameters;
        private final int sampleRate;
        private final int withinRendererCapabilitiesScore;

        public AudioTrackScore(Format format, Parameters parameters, int i11) {
            this.parameters = parameters;
            this.withinRendererCapabilitiesScore = DefaultTrackSelector.isSupported(i11, false) ? 1 : 0;
            this.matchLanguageScore = DefaultTrackSelector.formatHasLanguage(format, parameters.preferredAudioLanguage) ? 1 : 0;
            this.defaultSelectionFlagScore = (format.selectionFlags & 1) != 0 ? 1 : 0;
            this.channelCount = format.channelCount;
            this.sampleRate = format.sampleRate;
            this.bitrate = format.bitrate;
        }

        @Override // java.lang.Comparable
        public int compareTo(AudioTrackScore audioTrackScore) {
            int iCompareInts;
            int i11 = this.withinRendererCapabilitiesScore;
            int i12 = audioTrackScore.withinRendererCapabilitiesScore;
            if (i11 != i12) {
                return DefaultTrackSelector.compareInts(i11, i12);
            }
            int i13 = this.matchLanguageScore;
            int i14 = audioTrackScore.matchLanguageScore;
            if (i13 != i14) {
                return DefaultTrackSelector.compareInts(i13, i14);
            }
            int i15 = this.defaultSelectionFlagScore;
            int i16 = audioTrackScore.defaultSelectionFlagScore;
            if (i15 != i16) {
                return DefaultTrackSelector.compareInts(i15, i16);
            }
            if (this.parameters.forceLowestBitrate) {
                return DefaultTrackSelector.compareInts(audioTrackScore.bitrate, this.bitrate);
            }
            int i17 = i11 != 1 ? -1 : 1;
            int i18 = this.channelCount;
            int i19 = audioTrackScore.channelCount;
            if (i18 != i19) {
                iCompareInts = DefaultTrackSelector.compareInts(i18, i19);
            } else {
                int i20 = this.sampleRate;
                int i21 = audioTrackScore.sampleRate;
                iCompareInts = i20 != i21 ? DefaultTrackSelector.compareInts(i20, i21) : DefaultTrackSelector.compareInts(this.bitrate, audioTrackScore.bitrate);
            }
            return i17 * iCompareInts;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AudioTrackScore.class != obj.getClass()) {
                return false;
            }
            AudioTrackScore audioTrackScore = (AudioTrackScore) obj;
            return this.withinRendererCapabilitiesScore == audioTrackScore.withinRendererCapabilitiesScore && this.matchLanguageScore == audioTrackScore.matchLanguageScore && this.defaultSelectionFlagScore == audioTrackScore.defaultSelectionFlagScore && this.channelCount == audioTrackScore.channelCount && this.sampleRate == audioTrackScore.sampleRate && this.bitrate == audioTrackScore.bitrate;
        }

        public int hashCode() {
            return (((((((((this.withinRendererCapabilitiesScore * 31) + this.matchLanguageScore) * 31) + this.defaultSelectionFlagScore) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.bitrate;
        }
    }

    public static final class Parameters implements Parcelable {
        public final boolean allowMixedMimeAdaptiveness;
        public final boolean allowNonSeamlessAdaptiveness;
        public final int disabledTextTrackSelectionFlags;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final boolean forceLowestBitrate;
        public final int maxVideoBitrate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;

        @Nullable
        public final String preferredAudioLanguage;

        @Nullable
        public final String preferredTextLanguage;
        private final SparseBooleanArray rendererDisabledFlags;
        public final boolean selectUndeterminedTextLanguage;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final int tunnelingAudioSessionId;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT = new Parameters();
        public static final Parcelable.Creator<Parameters> CREATOR = new Parcelable.Creator<Parameters>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.trackselection.DefaultTrackSelector.Parameters.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters[] newArray(int i11) {
                return new Parameters[i11];
            }
        };

        private Parameters() {
            this(new SparseArray(), new SparseBooleanArray(), null, null, false, 0, false, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, 0);
        }

        Parameters(Parcel parcel) {
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = parcel.readSparseBooleanArray();
            this.preferredAudioLanguage = parcel.readString();
            this.preferredTextLanguage = parcel.readString();
            this.selectUndeterminedTextLanguage = Util.readBoolean(parcel);
            this.disabledTextTrackSelectionFlags = parcel.readInt();
            this.forceLowestBitrate = Util.readBoolean(parcel);
            this.allowMixedMimeAdaptiveness = Util.readBoolean(parcel);
            this.allowNonSeamlessAdaptiveness = Util.readBoolean(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = Util.readBoolean(parcel);
            this.exceedRendererCapabilitiesIfNecessary = Util.readBoolean(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = Util.readBoolean(parcel);
            this.tunnelingAudioSessionId = parcel.readInt();
        }

        Parameters(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray, @Nullable String str, @Nullable String str2, boolean z10, int i11, boolean z11, boolean z12, boolean z13, int i12, int i13, int i14, boolean z14, boolean z15, int i15, int i16, boolean z16, int i17) {
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
            this.preferredAudioLanguage = Util.normalizeLanguageCode(str);
            this.preferredTextLanguage = Util.normalizeLanguageCode(str2);
            this.selectUndeterminedTextLanguage = z10;
            this.disabledTextTrackSelectionFlags = i11;
            this.forceLowestBitrate = z11;
            this.allowMixedMimeAdaptiveness = z12;
            this.allowNonSeamlessAdaptiveness = z13;
            this.maxVideoWidth = i12;
            this.maxVideoHeight = i13;
            this.maxVideoBitrate = i14;
            this.exceedVideoConstraintsIfNecessary = z14;
            this.exceedRendererCapabilitiesIfNecessary = z15;
            this.viewportWidth = i15;
            this.viewportHeight = i16;
            this.viewportOrientationMayChange = z16;
            this.tunnelingAudioSessionId = i17;
        }

        private static boolean areRendererDisabledFlagsEqual(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i11)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                if (iIndexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i11), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean areSelectionOverridesEqual(Map<TrackGroupArray, SelectionOverride> map, Map<TrackGroupArray, SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<TrackGroupArray, SelectionOverride> entry : map.entrySet()) {
                TrackGroupArray key = entry.getKey();
                if (!map2.containsKey(key) || !Util.areEqual(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int i11 = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = parcel.readInt();
                int i14 = parcel.readInt();
                HashMap map = new HashMap(i14);
                for (int i15 = 0; i15 < i14; i15++) {
                    map.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(i13, map);
            }
            return sparseArray;
        }

        private static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                int iKeyAt = sparseArray.keyAt(i11);
                Map<TrackGroupArray, SelectionOverride> mapValueAt = sparseArray.valueAt(i11);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        public ParametersBuilder buildUpon() {
            return new ParametersBuilder(this);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return this.selectUndeterminedTextLanguage == parameters.selectUndeterminedTextLanguage && this.disabledTextTrackSelectionFlags == parameters.disabledTextTrackSelectionFlags && this.forceLowestBitrate == parameters.forceLowestBitrate && this.allowMixedMimeAdaptiveness == parameters.allowMixedMimeAdaptiveness && this.allowNonSeamlessAdaptiveness == parameters.allowNonSeamlessAdaptiveness && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.maxVideoBitrate == parameters.maxVideoBitrate && this.tunnelingAudioSessionId == parameters.tunnelingAudioSessionId && TextUtils.equals(this.preferredAudioLanguage, parameters.preferredAudioLanguage) && TextUtils.equals(this.preferredTextLanguage, parameters.preferredTextLanguage) && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
        }

        public final boolean getRendererDisabled(int i11) {
            return this.rendererDisabledFlags.get(i11);
        }

        @Nullable
        public final SelectionOverride getSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i11);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        public final boolean hasSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i11);
            return map != null && map.containsKey(trackGroupArray);
        }

        public int hashCode() {
            int i11 = (((((((((((((((((((((((((((this.selectUndeterminedTextLanguage ? 1 : 0) * 31) + this.disabledTextTrackSelectionFlags) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.allowMixedMimeAdaptiveness ? 1 : 0)) * 31) + (this.allowNonSeamlessAdaptiveness ? 1 : 0)) * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.maxVideoBitrate) * 31) + this.tunnelingAudioSessionId) * 31;
            String str = this.preferredAudioLanguage;
            int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.preferredTextLanguage;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
            parcel.writeString(this.preferredAudioLanguage);
            parcel.writeString(this.preferredTextLanguage);
            Util.writeBoolean(parcel, this.selectUndeterminedTextLanguage);
            parcel.writeInt(this.disabledTextTrackSelectionFlags);
            Util.writeBoolean(parcel, this.forceLowestBitrate);
            Util.writeBoolean(parcel, this.allowMixedMimeAdaptiveness);
            Util.writeBoolean(parcel, this.allowNonSeamlessAdaptiveness);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoBitrate);
            Util.writeBoolean(parcel, this.exceedVideoConstraintsIfNecessary);
            Util.writeBoolean(parcel, this.exceedRendererCapabilitiesIfNecessary);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            Util.writeBoolean(parcel, this.viewportOrientationMayChange);
            parcel.writeInt(this.tunnelingAudioSessionId);
        }
    }

    public static final class ParametersBuilder {
        private boolean allowMixedMimeAdaptiveness;
        private boolean allowNonSeamlessAdaptiveness;
        private int disabledTextTrackSelectionFlags;
        private boolean exceedRendererCapabilitiesIfNecessary;
        private boolean exceedVideoConstraintsIfNecessary;
        private boolean forceLowestBitrate;
        private int maxVideoBitrate;
        private int maxVideoHeight;
        private int maxVideoWidth;

        @Nullable
        private String preferredAudioLanguage;

        @Nullable
        private String preferredTextLanguage;
        private final SparseBooleanArray rendererDisabledFlags;
        private boolean selectUndeterminedTextLanguage;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        private int tunnelingAudioSessionId;
        private int viewportHeight;
        private boolean viewportOrientationMayChange;
        private int viewportWidth;

        public ParametersBuilder() {
            this(Parameters.DEFAULT);
        }

        private ParametersBuilder(Parameters parameters) {
            this.selectionOverrides = cloneSelectionOverrides(parameters.selectionOverrides);
            this.rendererDisabledFlags = parameters.rendererDisabledFlags.clone();
            this.preferredAudioLanguage = parameters.preferredAudioLanguage;
            this.preferredTextLanguage = parameters.preferredTextLanguage;
            this.selectUndeterminedTextLanguage = parameters.selectUndeterminedTextLanguage;
            this.disabledTextTrackSelectionFlags = parameters.disabledTextTrackSelectionFlags;
            this.forceLowestBitrate = parameters.forceLowestBitrate;
            this.allowMixedMimeAdaptiveness = parameters.allowMixedMimeAdaptiveness;
            this.allowNonSeamlessAdaptiveness = parameters.allowNonSeamlessAdaptiveness;
            this.maxVideoWidth = parameters.maxVideoWidth;
            this.maxVideoHeight = parameters.maxVideoHeight;
            this.maxVideoBitrate = parameters.maxVideoBitrate;
            this.exceedVideoConstraintsIfNecessary = parameters.exceedVideoConstraintsIfNecessary;
            this.exceedRendererCapabilitiesIfNecessary = parameters.exceedRendererCapabilitiesIfNecessary;
            this.viewportWidth = parameters.viewportWidth;
            this.viewportHeight = parameters.viewportHeight;
            this.viewportOrientationMayChange = parameters.viewportOrientationMayChange;
            this.tunnelingAudioSessionId = parameters.tunnelingAudioSessionId;
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> cloneSelectionOverrides(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                sparseArray2.put(sparseArray.keyAt(i11), new HashMap(sparseArray.valueAt(i11)));
            }
            return sparseArray2;
        }

        public Parameters build() {
            return new Parameters(this.selectionOverrides, this.rendererDisabledFlags, this.preferredAudioLanguage, this.preferredTextLanguage, this.selectUndeterminedTextLanguage, this.disabledTextTrackSelectionFlags, this.forceLowestBitrate, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange, this.tunnelingAudioSessionId);
        }

        public final ParametersBuilder clearSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i11);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.selectionOverrides.remove(i11);
                }
            }
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides() {
            if (this.selectionOverrides.size() == 0) {
                return this;
            }
            this.selectionOverrides.clear();
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides(int i11) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i11);
            if (map != null && !map.isEmpty()) {
                this.selectionOverrides.remove(i11);
            }
            return this;
        }

        public ParametersBuilder clearVideoSizeConstraints() {
            return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public ParametersBuilder clearViewportSizeConstraints() {
            return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public ParametersBuilder setAllowMixedMimeAdaptiveness(boolean z10) {
            this.allowMixedMimeAdaptiveness = z10;
            return this;
        }

        public ParametersBuilder setAllowNonSeamlessAdaptiveness(boolean z10) {
            this.allowNonSeamlessAdaptiveness = z10;
            return this;
        }

        public ParametersBuilder setDisabledTextTrackSelectionFlags(int i11) {
            this.disabledTextTrackSelectionFlags = i11;
            return this;
        }

        public ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z10) {
            this.exceedRendererCapabilitiesIfNecessary = z10;
            return this;
        }

        public ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z10) {
            this.exceedVideoConstraintsIfNecessary = z10;
            return this;
        }

        public ParametersBuilder setForceLowestBitrate(boolean z10) {
            this.forceLowestBitrate = z10;
            return this;
        }

        public ParametersBuilder setMaxVideoBitrate(int i11) {
            this.maxVideoBitrate = i11;
            return this;
        }

        public ParametersBuilder setMaxVideoSize(int i11, int i12) {
            this.maxVideoWidth = i11;
            this.maxVideoHeight = i12;
            return this;
        }

        public ParametersBuilder setMaxVideoSizeSd() {
            return setMaxVideoSize(1279, 719);
        }

        public ParametersBuilder setPreferredAudioLanguage(String str) {
            this.preferredAudioLanguage = str;
            return this;
        }

        public ParametersBuilder setPreferredTextLanguage(String str) {
            this.preferredTextLanguage = str;
            return this;
        }

        public final ParametersBuilder setRendererDisabled(int i11, boolean z10) {
            if (this.rendererDisabledFlags.get(i11) == z10) {
                return this;
            }
            if (z10) {
                this.rendererDisabledFlags.put(i11, true);
            } else {
                this.rendererDisabledFlags.delete(i11);
            }
            return this;
        }

        public ParametersBuilder setSelectUndeterminedTextLanguage(boolean z10) {
            this.selectUndeterminedTextLanguage = z10;
            return this;
        }

        public final ParametersBuilder setSelectionOverride(int i11, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i11);
            if (map == null) {
                map = new HashMap<>();
                this.selectionOverrides.put(i11, map);
            }
            if (map.containsKey(trackGroupArray) && Util.areEqual(map.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        public ParametersBuilder setTunnelingAudioSessionId(int i11) {
            if (this.tunnelingAudioSessionId != i11) {
                this.tunnelingAudioSessionId = i11;
            }
            return this;
        }

        public ParametersBuilder setViewportSize(int i11, int i12, boolean z10) {
            this.viewportWidth = i11;
            this.viewportHeight = i12;
            this.viewportOrientationMayChange = z10;
            return this;
        }

        public ParametersBuilder setViewportSizeToPhysicalDisplaySize(Context context, boolean z10) {
            Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
            return setViewportSize(physicalDisplaySize.x, physicalDisplaySize.y, z10);
        }
    }

    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new Parcelable.Creator<SelectionOverride>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride[] newArray(int i11) {
                return new SelectionOverride[i11];
            }
        };
        public final int groupIndex;
        public final int length;
        public final int[] tracks;

        public SelectionOverride(int i11, int... iArr) {
            this.groupIndex = i11;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = iArrCopyOf;
            this.length = iArr.length;
            Arrays.sort(iArrCopyOf);
        }

        SelectionOverride(Parcel parcel) {
            this.groupIndex = parcel.readInt();
            int i11 = parcel.readByte();
            this.length = i11;
            int[] iArr = new int[i11];
            this.tracks = iArr;
            parcel.readIntArray(iArr);
        }

        public boolean containsTrack(int i11) {
            for (int i12 : this.tracks) {
                if (i12 == i11) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks);
        }

        public int hashCode() {
            return (this.groupIndex * 31) + Arrays.hashCode(this.tracks);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.groupIndex);
            parcel.writeInt(this.tracks.length);
            parcel.writeIntArray(this.tracks);
        }
    }

    public DefaultTrackSelector() {
        this((TrackSelection.Factory) null);
    }

    public DefaultTrackSelector(@Nullable TrackSelection.Factory factory) {
        this.adaptiveTrackSelectionFactory = factory;
        this.parametersReference = new AtomicReference<>(Parameters.DEFAULT);
    }

    public DefaultTrackSelector(BandwidthMeter bandwidthMeter) {
        this(new AdaptiveTrackSelection.Factory(bandwidthMeter));
    }

    private static int compareFormatValues(int i11, int i12) {
        if (i11 == -1) {
            return i12 == -1 ? 0 : -1;
        }
        if (i12 == -1) {
            return 1;
        }
        return i11 - i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareInts(int i11, int i12) {
        if (i11 > i12) {
            return 1;
        }
        return i12 > i11 ? -1 : 0;
    }

    private static void filterAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i11, @Nullable String str, int i12, int i13, int i14, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i11, i12, i13, i14)) {
                list.remove(size);
            }
        }
    }

    protected static boolean formatHasLanguage(Format format, @Nullable String str) {
        return str != null && TextUtils.equals(str, Util.normalizeLanguageCode(format.language));
    }

    protected static boolean formatHasNoLanguage(Format format) {
        return TextUtils.isEmpty(format.language) || formatHasLanguage(format, C.LANGUAGE_UNDETERMINED);
    }

    private static int getAdaptiveAudioTrackCount(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple) {
        int i11 = 0;
        for (int i12 = 0; i12 < trackGroup.length; i12++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i12), iArr[i12], audioConfigurationTuple)) {
                i11++;
            }
        }
        return i11;
    }

    private static int[] getAdaptiveAudioTracks(TrackGroup trackGroup, int[] iArr, boolean z10) {
        int adaptiveAudioTrackCount;
        HashSet hashSet = new HashSet();
        int i11 = 0;
        AudioConfigurationTuple audioConfigurationTuple = null;
        for (int i12 = 0; i12 < trackGroup.length; i12++) {
            Format format = trackGroup.getFormat(i12);
            AudioConfigurationTuple audioConfigurationTuple2 = new AudioConfigurationTuple(format.channelCount, format.sampleRate, z10 ? null : format.sampleMimeType);
            if (hashSet.add(audioConfigurationTuple2) && (adaptiveAudioTrackCount = getAdaptiveAudioTrackCount(trackGroup, iArr, audioConfigurationTuple2)) > i11) {
                i11 = adaptiveAudioTrackCount;
                audioConfigurationTuple = audioConfigurationTuple2;
            }
        }
        if (i11 <= 1) {
            return NO_TRACKS;
        }
        int[] iArr2 = new int[i11];
        int i13 = 0;
        for (int i14 = 0; i14 < trackGroup.length; i14++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i14), iArr[i14], (AudioConfigurationTuple) Assertions.checkNotNull(audioConfigurationTuple))) {
                iArr2[i13] = i14;
                i13++;
            }
        }
        return iArr2;
    }

    private static int getAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i11, @Nullable String str, int i12, int i13, int i14, List<Integer> list) {
        int i15 = 0;
        for (int i16 = 0; i16 < list.size(); i16++) {
            int iIntValue = list.get(i16).intValue();
            if (isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i11, i12, i13, i14)) {
                i15++;
            }
        }
        return i15;
    }

    private static int[] getAdaptiveVideoTracksForGroup(TrackGroup trackGroup, int[] iArr, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z11) {
        String str;
        int adaptiveVideoTrackCountForMimeType;
        if (trackGroup.length < 2) {
            return NO_TRACKS;
        }
        List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup, i15, i16, z11);
        if (viewportFilteredTrackIndices.size() < 2) {
            return NO_TRACKS;
        }
        if (z10) {
            str = null;
        } else {
            HashSet hashSet = new HashSet();
            String str2 = null;
            int i17 = 0;
            for (int i18 = 0; i18 < viewportFilteredTrackIndices.size(); i18++) {
                String str3 = trackGroup.getFormat(viewportFilteredTrackIndices.get(i18).intValue()).sampleMimeType;
                if (hashSet.add(str3) && (adaptiveVideoTrackCountForMimeType = getAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i11, str3, i12, i13, i14, viewportFilteredTrackIndices)) > i17) {
                    i17 = adaptiveVideoTrackCountForMimeType;
                    str2 = str3;
                }
            }
            str = str2;
        }
        filterAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i11, str, i12, i13, i14, viewportFilteredTrackIndices);
        return viewportFilteredTrackIndices.size() < 2 ? NO_TRACKS : Util.toArray(viewportFilteredTrackIndices);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    private static Point getMaxVideoSizeInViewport(boolean z10, int i11, int i12, int i13, int i14) {
        if (z10) {
            if ((i13 > i14) == (i11 > i12)) {
                i12 = i11;
                i11 = i12;
            }
        } else {
            i12 = i11;
            i11 = i12;
        }
        int i15 = i13 * i11;
        int i16 = i14 * i12;
        return i15 >= i16 ? new Point(i12, Util.ceilDivide(i16, i13)) : new Point(Util.ceilDivide(i15, i14), i11);
    }

    private static List<Integer> getViewportFilteredTrackIndices(TrackGroup trackGroup, int i11, int i12, boolean z10) {
        int i13;
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i14 = 0; i14 < trackGroup.length; i14++) {
            arrayList.add(Integer.valueOf(i14));
        }
        if (i11 != Integer.MAX_VALUE && i12 != Integer.MAX_VALUE) {
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < trackGroup.length; i16++) {
                Format format = trackGroup.getFormat(i16);
                int i17 = format.width;
                if (i17 > 0 && (i13 = format.height) > 0) {
                    Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z10, i11, i12, i17, i13);
                    int i18 = format.width;
                    int i19 = format.height;
                    int i20 = i18 * i19;
                    if (i18 >= ((int) (maxVideoSizeInViewport.x * FRACTION_TO_CONSIDER_FULLSCREEN)) && i19 >= ((int) (maxVideoSizeInViewport.y * FRACTION_TO_CONSIDER_FULLSCREEN)) && i20 < i15) {
                        i15 = i20;
                    }
                }
            }
            if (i15 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i15) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    protected static boolean isSupported(int i11, boolean z10) {
        int i12 = i11 & 7;
        return i12 == 4 || (z10 && i12 == 3);
    }

    private static boolean isSupportedAdaptiveAudioTrack(Format format, int i11, AudioConfigurationTuple audioConfigurationTuple) {
        if (!isSupported(i11, false) || format.channelCount != audioConfigurationTuple.channelCount || format.sampleRate != audioConfigurationTuple.sampleRate) {
            return false;
        }
        String str = audioConfigurationTuple.mimeType;
        return str == null || TextUtils.equals(str, format.sampleMimeType);
    }

    private static boolean isSupportedAdaptiveVideoTrack(Format format, @Nullable String str, int i11, int i12, int i13, int i14, int i15) {
        if (!isSupported(i11, false) || (i11 & i12) == 0) {
            return false;
        }
        if (str != null && !Util.areEqual(format.sampleMimeType, str)) {
            return false;
        }
        int i16 = format.width;
        if (i16 != -1 && i16 > i13) {
            return false;
        }
        int i17 = format.height;
        if (i17 != -1 && i17 > i14) {
            return false;
        }
        int i18 = format.bitrate;
        return i18 == -1 || i18 <= i15;
    }

    private static void maybeConfigureRenderersForTunneling(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, int i11) {
        boolean z10;
        if (i11 == 0) {
            return;
        }
        boolean z11 = false;
        int i12 = 0;
        int i13 = -1;
        int i14 = -1;
        while (true) {
            if (i12 >= mappedTrackInfo.getRendererCount()) {
                z10 = true;
                break;
            }
            int rendererType = mappedTrackInfo.getRendererType(i12);
            TrackSelection trackSelection = trackSelectionArr[i12];
            if ((rendererType == 1 || rendererType == 2) && trackSelection != null && rendererSupportsTunneling(iArr[i12], mappedTrackInfo.getTrackGroups(i12), trackSelection)) {
                if (rendererType == 1) {
                    if (i14 != -1) {
                        z10 = false;
                        break;
                    }
                    i14 = i12;
                } else {
                    if (i13 != -1) {
                        z10 = false;
                        break;
                    }
                    i13 = i12;
                }
            }
            i12++;
        }
        if (i14 != -1 && i13 != -1) {
            z11 = true;
        }
        if (z10 && z11) {
            RendererConfiguration rendererConfiguration = new RendererConfiguration(i11);
            rendererConfigurationArr[i14] = rendererConfiguration;
            rendererConfigurationArr[i13] = rendererConfiguration;
        }
    }

    private static boolean rendererSupportsTunneling(int[][] iArr, TrackGroupArray trackGroupArray, TrackSelection trackSelection) {
        if (trackSelection == null) {
            return false;
        }
        int iIndexOf = trackGroupArray.indexOf(trackSelection.getTrackGroup());
        for (int i11 = 0; i11 < trackSelection.length(); i11++) {
            if ((iArr[iIndexOf][trackSelection.getIndexInTrackGroup(i11)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    private static TrackSelection selectAdaptiveVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i11, Parameters parameters, TrackSelection.Factory factory) throws ExoPlaybackException {
        int i12 = parameters.allowNonSeamlessAdaptiveness ? 24 : 16;
        boolean z10 = parameters.allowMixedMimeAdaptiveness && (i11 & i12) != 0;
        for (int i13 = 0; i13 < trackGroupArray.length; i13++) {
            TrackGroup trackGroup = trackGroupArray.get(i13);
            int[] adaptiveVideoTracksForGroup = getAdaptiveVideoTracksForGroup(trackGroup, iArr[i13], z10, i12, parameters.maxVideoWidth, parameters.maxVideoHeight, parameters.maxVideoBitrate, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            if (adaptiveVideoTracksForGroup.length > 0) {
                return ((TrackSelection.Factory) Assertions.checkNotNull(factory)).createTrackSelection(trackGroup, adaptiveVideoTracksForGroup);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00a3  */
    @Nullable
    private static TrackSelection selectFixedVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i11;
        int i12;
        int i13;
        int i14 = -1;
        int pixelCount = -1;
        int i15 = -1;
        int i16 = 0;
        TrackGroup trackGroup = null;
        int i17 = 0;
        int i18 = 0;
        while (i16 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i16);
            List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup2, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            int[] iArr2 = iArr[i16];
            int i19 = 0;
            while (i19 < trackGroup2.length) {
                if (isSupported(iArr2[i19], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i19);
                    boolean z10 = true;
                    boolean z11 = viewportFilteredTrackIndices.contains(Integer.valueOf(i19)) && ((i11 = format.width) == i14 || i11 <= parameters.maxVideoWidth) && (((i12 = format.height) == i14 || i12 <= parameters.maxVideoHeight) && ((i13 = format.bitrate) == i14 || i13 <= parameters.maxVideoBitrate));
                    if (z11 || parameters.exceedVideoConstraintsIfNecessary) {
                        int i20 = z11 ? 2 : 1;
                        boolean zIsSupported = isSupported(iArr2[i19], false);
                        if (zIsSupported) {
                            i20 += 1000;
                        }
                        boolean z12 = i20 > i18;
                        if (i20 != i18) {
                            z10 = z12;
                        } else if (!parameters.forceLowestBitrate) {
                            int pixelCount2 = format.getPixelCount();
                            int iCompareFormatValues = pixelCount2 != pixelCount ? compareFormatValues(pixelCount2, pixelCount) : compareFormatValues(format.bitrate, i15);
                            if (!zIsSupported || !z11 ? iCompareFormatValues >= 0 : iCompareFormatValues <= 0) {
                                z10 = false;
                            }
                        } else if (compareFormatValues(format.bitrate, i15) >= 0) {
                            z10 = false;
                        }
                        if (z10) {
                            i15 = format.bitrate;
                            pixelCount = format.getPixelCount();
                            trackGroup = trackGroup2;
                            i17 = i19;
                            i18 = i20;
                        }
                    }
                }
                i19++;
                i14 = -1;
            }
            i16++;
            i14 = -1;
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i17);
    }

    public ParametersBuilder buildUponParameters() {
        return getParameters().buildUpon();
    }

    @Deprecated
    public final void clearSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
        setParameters(buildUponParameters().clearSelectionOverride(i11, trackGroupArray));
    }

    @Deprecated
    public final void clearSelectionOverrides() {
        setParameters(buildUponParameters().clearSelectionOverrides());
    }

    @Deprecated
    public final void clearSelectionOverrides(int i11) {
        setParameters(buildUponParameters().clearSelectionOverrides(i11));
    }

    public Parameters getParameters() {
        return this.parametersReference.get();
    }

    @Deprecated
    public final boolean getRendererDisabled(int i11) {
        return getParameters().getRendererDisabled(i11);
    }

    @Nullable
    @Deprecated
    public final SelectionOverride getSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
        return getParameters().getSelectionOverride(i11, trackGroupArray);
    }

    @Deprecated
    public final boolean hasSelectionOverride(int i11, TrackGroupArray trackGroupArray) {
        return getParameters().hasSelectionOverride(i11, trackGroupArray);
    }

    protected TrackSelection[] selectAllTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection[] trackSelectionArr = new TrackSelection[rendererCount];
        boolean z10 = false;
        int i11 = 0;
        boolean z11 = false;
        while (true) {
            if (i11 >= rendererCount) {
                break;
            }
            if (2 == mappedTrackInfo.getRendererType(i11)) {
                if (!z10) {
                    TrackSelection trackSelectionSelectVideoTrack = selectVideoTrack(mappedTrackInfo.getTrackGroups(i11), iArr[i11], iArr2[i11], parameters, this.adaptiveTrackSelectionFactory);
                    trackSelectionArr[i11] = trackSelectionSelectVideoTrack;
                    z10 = trackSelectionSelectVideoTrack != null;
                }
                z11 |= mappedTrackInfo.getTrackGroups(i11).length > 0;
            }
            i11++;
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int i12 = 0; i12 < rendererCount; i12++) {
            int rendererType = mappedTrackInfo.getRendererType(i12);
            if (rendererType != 1) {
                if (rendererType != 2) {
                    if (rendererType != 3) {
                        trackSelectionArr[i12] = selectOtherTrack(rendererType, mappedTrackInfo.getTrackGroups(i12), iArr[i12], parameters);
                    } else if (!z13) {
                        TrackSelection trackSelectionSelectTextTrack = selectTextTrack(mappedTrackInfo.getTrackGroups(i12), iArr[i12], parameters);
                        trackSelectionArr[i12] = trackSelectionSelectTextTrack;
                        z13 = trackSelectionSelectTextTrack != null;
                    }
                }
            } else if (!z12) {
                TrackSelection trackSelectionSelectAudioTrack = selectAudioTrack(mappedTrackInfo.getTrackGroups(i12), iArr[i12], iArr2[i12], parameters, z11 ? null : this.adaptiveTrackSelectionFactory);
                trackSelectionArr[i12] = trackSelectionSelectAudioTrack;
                z12 = trackSelectionSelectAudioTrack != null;
            }
        }
        return trackSelectionArr;
    }

    @Nullable
    protected TrackSelection selectAudioTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i11, Parameters parameters, @Nullable TrackSelection.Factory factory) throws ExoPlaybackException {
        int i12 = -1;
        int i13 = -1;
        AudioTrackScore audioTrackScore = null;
        for (int i14 = 0; i14 < trackGroupArray.length; i14++) {
            TrackGroup trackGroup = trackGroupArray.get(i14);
            int[] iArr2 = iArr[i14];
            for (int i15 = 0; i15 < trackGroup.length; i15++) {
                if (isSupported(iArr2[i15], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    AudioTrackScore audioTrackScore2 = new AudioTrackScore(trackGroup.getFormat(i15), parameters, iArr2[i15]);
                    if (audioTrackScore == null || audioTrackScore2.compareTo(audioTrackScore) > 0) {
                        i12 = i14;
                        i13 = i15;
                        audioTrackScore = audioTrackScore2;
                    }
                }
            }
        }
        if (i12 == -1) {
            return null;
        }
        TrackGroup trackGroup2 = trackGroupArray.get(i12);
        if (!parameters.forceLowestBitrate && factory != null) {
            int[] adaptiveAudioTracks = getAdaptiveAudioTracks(trackGroup2, iArr[i12], parameters.allowMixedMimeAdaptiveness);
            if (adaptiveAudioTracks.length > 0) {
                return factory.createTrackSelection(trackGroup2, adaptiveAudioTracks);
            }
        }
        return new FixedTrackSelection(trackGroup2, i13);
    }

    @Nullable
    protected TrackSelection selectOtherTrack(int i11, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < trackGroupArray.length; i14++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i14);
            int[] iArr2 = iArr[i14];
            for (int i15 = 0; i15 < trackGroup2.length; i15++) {
                if (isSupported(iArr2[i15], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i16 = (trackGroup2.getFormat(i15).selectionFlags & 1) != 0 ? 2 : 1;
                    if (isSupported(iArr2[i15], false)) {
                        i16 += 1000;
                    }
                    if (i16 > i13) {
                        trackGroup = trackGroup2;
                        i12 = i15;
                        i13 = i16;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected TrackSelection selectTextTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        int i11 = 0;
        int i12 = 0;
        TrackGroup trackGroup = null;
        for (int i13 = 0; i13 < trackGroupArray.length; i13++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i13);
            int[] iArr2 = iArr[i13];
            for (int i14 = 0; i14 < trackGroup2.length; i14++) {
                if (isSupported(iArr2[i14], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i14);
                    int i15 = format.selectionFlags & (~parameters.disabledTextTrackSelectionFlags);
                    int i16 = 1;
                    Object[] objArr = (i15 & 1) != 0;
                    Object[] objArr2 = (i15 & 2) != 0;
                    boolean hasLanguage = formatHasLanguage(format, parameters.preferredTextLanguage);
                    if (hasLanguage || (parameters.selectUndeterminedTextLanguage && formatHasNoLanguage(format))) {
                        i16 = (objArr == true ? 8 : objArr2 == false ? 6 : 4) + (hasLanguage ? 1 : 0);
                    } else if (objArr == true) {
                        i16 = 3;
                    } else if (objArr2 != false) {
                        if (formatHasLanguage(format, parameters.preferredAudioLanguage)) {
                            i16 = 2;
                        }
                    }
                    if (isSupported(iArr2[i14], false)) {
                        i16 += 1000;
                    }
                    if (i16 > i12) {
                        trackGroup = trackGroup2;
                        i11 = i14;
                        i12 = i16;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.MappingTrackSelector
    protected final Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        Parameters parameters = this.parametersReference.get();
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection[] trackSelectionArrSelectAllTracks = selectAllTracks(mappedTrackInfo, iArr, iArr2, parameters);
        for (int i11 = 0; i11 < rendererCount; i11++) {
            if (parameters.getRendererDisabled(i11)) {
                trackSelectionArrSelectAllTracks[i11] = null;
            } else {
                TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i11);
                if (parameters.hasSelectionOverride(i11, trackGroups)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i11, trackGroups);
                    if (selectionOverride == null) {
                        trackSelectionArrSelectAllTracks[i11] = null;
                    } else if (selectionOverride.length == 1) {
                        trackSelectionArrSelectAllTracks[i11] = new FixedTrackSelection(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks[0]);
                    } else {
                        trackSelectionArrSelectAllTracks[i11] = ((TrackSelection.Factory) Assertions.checkNotNull(this.adaptiveTrackSelectionFactory)).createTrackSelection(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks);
                    }
                }
            }
        }
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[rendererCount];
        for (int i12 = 0; i12 < rendererCount; i12++) {
            rendererConfigurationArr[i12] = (parameters.getRendererDisabled(i12) || (mappedTrackInfo.getRendererType(i12) != 5 && trackSelectionArrSelectAllTracks[i12] == null)) ? null : RendererConfiguration.DEFAULT;
        }
        maybeConfigureRenderersForTunneling(mappedTrackInfo, iArr, rendererConfigurationArr, trackSelectionArrSelectAllTracks, parameters.tunnelingAudioSessionId);
        return Pair.create(rendererConfigurationArr, trackSelectionArrSelectAllTracks);
    }

    @Nullable
    protected TrackSelection selectVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i11, Parameters parameters, @Nullable TrackSelection.Factory factory) throws ExoPlaybackException {
        TrackSelection trackSelectionSelectAdaptiveVideoTrack = (parameters.forceLowestBitrate || factory == null) ? null : selectAdaptiveVideoTrack(trackGroupArray, iArr, i11, parameters, factory);
        return trackSelectionSelectAdaptiveVideoTrack == null ? selectFixedVideoTrack(trackGroupArray, iArr, parameters) : trackSelectionSelectAdaptiveVideoTrack;
    }

    public void setParameters(Parameters parameters) {
        Assertions.checkNotNull(parameters);
        if (this.parametersReference.getAndSet(parameters).equals(parameters)) {
            return;
        }
        invalidate();
    }

    public void setParameters(ParametersBuilder parametersBuilder) {
        setParameters(parametersBuilder.build());
    }

    @Deprecated
    public final void setRendererDisabled(int i11, boolean z10) {
        setParameters(buildUponParameters().setRendererDisabled(i11, z10));
    }

    @Deprecated
    public final void setSelectionOverride(int i11, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
        setParameters(buildUponParameters().setSelectionOverride(i11, trackGroupArray, selectionOverride));
    }

    @Deprecated
    public void setTunnelingAudioSessionId(int i11) {
        setParameters(buildUponParameters().setTunnelingAudioSessionId(i11));
    }
}
