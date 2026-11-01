package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface MediaSource {

    public static final class MediaPeriodId {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final int periodIndex;
        public final long windowSequenceNumber;

        public MediaPeriodId(int i11) {
            this(i11, -1L);
        }

        public MediaPeriodId(int i11, int i12, int i13, long j11) {
            this.periodIndex = i11;
            this.adGroupIndex = i12;
            this.adIndexInAdGroup = i13;
            this.windowSequenceNumber = j11;
        }

        public MediaPeriodId(int i11, long j11) {
            this(i11, -1, -1, j11);
        }

        public MediaPeriodId copyWithPeriodIndex(int i11) {
            return this.periodIndex == i11 ? this : new MediaPeriodId(i11, this.adGroupIndex, this.adIndexInAdGroup, this.windowSequenceNumber);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || MediaPeriodId.class != obj.getClass()) {
                return false;
            }
            MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
            return this.periodIndex == mediaPeriodId.periodIndex && this.adGroupIndex == mediaPeriodId.adGroupIndex && this.adIndexInAdGroup == mediaPeriodId.adIndexInAdGroup && this.windowSequenceNumber == mediaPeriodId.windowSequenceNumber;
        }

        public int hashCode() {
            return ((((((this.periodIndex + 527) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + ((int) this.windowSequenceNumber);
        }

        public boolean isAd() {
            return this.adGroupIndex != -1;
        }
    }

    public interface SourceInfoRefreshListener {
        void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline, @Nullable Object obj);
    }

    void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    MediaPeriod createPeriod(MediaPeriodId mediaPeriodId, Allocator allocator);

    void maybeThrowSourceInfoRefreshError() throws IOException;

    void prepareSource(ExoPlayer exoPlayer, boolean z10, SourceInfoRefreshListener sourceInfoRefreshListener);

    void releasePeriod(MediaPeriod mediaPeriod);

    void releaseSource(SourceInfoRefreshListener sourceInfoRefreshListener);

    void removeEventListener(MediaSourceEventListener mediaSourceEventListener);
}
