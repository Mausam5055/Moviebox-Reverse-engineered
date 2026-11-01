package com.mbridge.msdk.playercommon.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProgressiveDownloadHelper extends DownloadHelper {

    @Nullable
    private final String customCacheKey;
    private final Uri uri;

    public ProgressiveDownloadHelper(Uri uri) {
        this(uri, null);
    }

    public ProgressiveDownloadHelper(Uri uri, @Nullable String str) {
        this.uri = uri;
        this.customCacheKey = str;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadHelper
    public DownloadAction getDownloadAction(@Nullable byte[] bArr, List<TrackKey> list) {
        return new ProgressiveDownloadAction(this.uri, false, bArr, this.customCacheKey);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadHelper
    public int getPeriodCount() {
        return 1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadHelper
    public DownloadAction getRemoveAction(@Nullable byte[] bArr) {
        return new ProgressiveDownloadAction(this.uri, true, bArr, this.customCacheKey);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadHelper
    public TrackGroupArray getTrackGroups(int i11) {
        return TrackGroupArray.EMPTY;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadHelper
    protected void prepareInternal() {
    }
}
