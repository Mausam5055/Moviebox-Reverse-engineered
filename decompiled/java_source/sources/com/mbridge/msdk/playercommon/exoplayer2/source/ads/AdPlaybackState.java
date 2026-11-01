package com.mbridge.msdk.playercommon.exoplayer2.source.ads;

import android.net.Uri;
import androidx.annotation.CheckResult;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlaybackState {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public static final AdPlaybackState NONE = new AdPlaybackState(new long[0]);
    public final int adGroupCount;
    public final long[] adGroupTimesUs;
    public final AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final long contentDurationUs;

    public static final class AdGroup {
        public final int count;
        public final long[] durationsUs;
        public final int[] states;
        public final Uri[] uris;

        public AdGroup() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        private AdGroup(int i11, int[] iArr, Uri[] uriArr, long[] jArr) {
            Assertions.checkArgument(iArr.length == uriArr.length);
            this.count = i11;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
        }

        @CheckResult
        private static long[] copyDurationsUsWithSpaceForAdCount(long[] jArr, int i11) {
            int length = jArr.length;
            int iMax = Math.max(i11, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        @CheckResult
        private static int[] copyStatesWithSpaceForAdCount(int[] iArr, int i11) {
            int length = iArr.length;
            int iMax = Math.max(i11, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getNextAdIndexToPlay(int i11) {
            int i12;
            int i13 = i11 + 1;
            while (true) {
                int[] iArr = this.states;
                if (i13 >= iArr.length || (i12 = iArr[i13]) == 0 || i12 == 1) {
                    break;
                }
                i13++;
            }
            return i13;
        }

        public boolean hasUnplayedAds() {
            return this.count == -1 || getFirstAdIndexToPlay() < this.count;
        }

        @CheckResult
        public AdGroup withAdCount(int i11) {
            Assertions.checkArgument(this.count == -1 && this.states.length <= i11);
            return new AdGroup(i11, copyStatesWithSpaceForAdCount(this.states, i11), (Uri[]) Arrays.copyOf(this.uris, i11), copyDurationsUsWithSpaceForAdCount(this.durationsUs, i11));
        }

        @CheckResult
        public AdGroup withAdDurationsUs(long[] jArr) {
            Assertions.checkArgument(this.count == -1 || jArr.length <= this.uris.length);
            int length = jArr.length;
            Uri[] uriArr = this.uris;
            if (length < uriArr.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, uriArr.length);
            }
            return new AdGroup(this.count, this.states, this.uris, jArr);
        }

        @CheckResult
        public AdGroup withAdState(int i11, int i12) {
            int i13 = this.count;
            Assertions.checkArgument(i13 == -1 || i12 < i13);
            int[] iArrCopyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i12 + 1);
            int i14 = iArrCopyStatesWithSpaceForAdCount[i12];
            Assertions.checkArgument(i14 == 0 || i14 == 1 || i14 == i11);
            long[] jArrCopyDurationsUsWithSpaceForAdCount = this.durationsUs;
            if (jArrCopyDurationsUsWithSpaceForAdCount.length != iArrCopyStatesWithSpaceForAdCount.length) {
                jArrCopyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(jArrCopyDurationsUsWithSpaceForAdCount, iArrCopyStatesWithSpaceForAdCount.length);
            }
            Uri[] uriArr = this.uris;
            if (uriArr.length != iArrCopyStatesWithSpaceForAdCount.length) {
                uriArr = (Uri[]) Arrays.copyOf(uriArr, iArrCopyStatesWithSpaceForAdCount.length);
            }
            iArrCopyStatesWithSpaceForAdCount[i12] = i11;
            return new AdGroup(this.count, iArrCopyStatesWithSpaceForAdCount, uriArr, jArrCopyDurationsUsWithSpaceForAdCount);
        }

        @CheckResult
        public AdGroup withAdUri(Uri uri, int i11) {
            int i12 = this.count;
            Assertions.checkArgument(i12 == -1 || i11 < i12);
            int[] iArrCopyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i11 + 1);
            Assertions.checkArgument(iArrCopyStatesWithSpaceForAdCount[i11] == 0);
            long[] jArrCopyDurationsUsWithSpaceForAdCount = this.durationsUs;
            if (jArrCopyDurationsUsWithSpaceForAdCount.length != iArrCopyStatesWithSpaceForAdCount.length) {
                jArrCopyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(jArrCopyDurationsUsWithSpaceForAdCount, iArrCopyStatesWithSpaceForAdCount.length);
            }
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.uris, iArrCopyStatesWithSpaceForAdCount.length);
            uriArr[i11] = uri;
            iArrCopyStatesWithSpaceForAdCount[i11] = 1;
            return new AdGroup(this.count, iArrCopyStatesWithSpaceForAdCount, uriArr, jArrCopyDurationsUsWithSpaceForAdCount);
        }

        @CheckResult
        public AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new AdGroup(0, new int[0], new Uri[0], new long[0]);
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] iArrCopyOf = Arrays.copyOf(iArr, length);
            for (int i11 = 0; i11 < length; i11++) {
                int i12 = iArrCopyOf[i11];
                if (i12 == 1 || i12 == 0) {
                    iArrCopyOf[i11] = 2;
                }
            }
            return new AdGroup(length, iArrCopyOf, this.uris, this.durationsUs);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public AdPlaybackState(long... jArr) {
        int length = jArr.length;
        this.adGroupCount = length;
        this.adGroupTimesUs = Arrays.copyOf(jArr, length);
        this.adGroups = new AdGroup[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.adGroups[i11] = new AdGroup();
        }
        this.adResumePositionUs = 0L;
        this.contentDurationUs = C.TIME_UNSET;
    }

    private AdPlaybackState(long[] jArr, AdGroup[] adGroupArr, long j11, long j12) {
        this.adGroupCount = adGroupArr.length;
        this.adGroupTimesUs = jArr;
        this.adGroups = adGroupArr;
        this.adResumePositionUs = j11;
        this.contentDurationUs = j12;
    }

    public int getAdGroupIndexAfterPositionUs(long j11) {
        int i11 = 0;
        while (true) {
            long[] jArr = this.adGroupTimesUs;
            if (i11 >= jArr.length) {
                break;
            }
            long j12 = jArr[i11];
            if (j12 == Long.MIN_VALUE || (j11 < j12 && this.adGroups[i11].hasUnplayedAds())) {
                break;
            }
            i11++;
        }
        if (i11 < this.adGroupTimesUs.length) {
            return i11;
        }
        return -1;
    }

    public int getAdGroupIndexForPositionUs(long j11) {
        int length = this.adGroupTimesUs.length - 1;
        while (length >= 0) {
            long j12 = this.adGroupTimesUs[length];
            if (j12 != Long.MIN_VALUE && j12 <= j11) {
                break;
            }
            length--;
        }
        if (length < 0 || !this.adGroups[length].hasUnplayedAds()) {
            return -1;
        }
        return length;
    }

    @CheckResult
    public AdPlaybackState withAdCount(int i11, int i12) {
        Assertions.checkArgument(i12 > 0);
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i11].count == i12) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = this.adGroups[i11].withAdCount(i12);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdDurationsUs(long[][] jArr) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        for (int i11 = 0; i11 < this.adGroupCount; i11++) {
            adGroupArr2[i11] = adGroupArr2[i11].withAdDurationsUs(jArr[i11]);
        }
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdLoadError(int i11, int i12) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = adGroupArr2[i11].withAdState(4, i12);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdResumePositionUs(long j11) {
        return this.adResumePositionUs == j11 ? this : new AdPlaybackState(this.adGroupTimesUs, this.adGroups, j11, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdUri(int i11, int i12, Uri uri) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = adGroupArr2[i11].withAdUri(uri, i12);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withContentDurationUs(long j11) {
        return this.contentDurationUs == j11 ? this : new AdPlaybackState(this.adGroupTimesUs, this.adGroups, this.adResumePositionUs, j11);
    }

    @CheckResult
    public AdPlaybackState withPlayedAd(int i11, int i12) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = adGroupArr2[i11].withAdState(3, i12);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withSkippedAd(int i11, int i12) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = adGroupArr2[i11].withAdState(2, i12);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withSkippedAdGroup(int i11) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i11] = adGroupArr2[i11].withAllAdsSkipped();
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }
}
