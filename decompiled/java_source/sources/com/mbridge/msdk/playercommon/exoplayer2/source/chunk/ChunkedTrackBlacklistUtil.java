package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource;

/* JADX INFO: loaded from: classes5.dex */
public final class ChunkedTrackBlacklistUtil {
    public static final long DEFAULT_TRACK_BLACKLIST_MS = 60000;
    private static final String TAG = "ChunkedTrackBlacklist";

    private ChunkedTrackBlacklistUtil() {
    }

    public static boolean maybeBlacklistTrack(TrackSelection trackSelection, int i11, Exception exc) {
        return maybeBlacklistTrack(trackSelection, i11, exc, 60000L);
    }

    public static boolean maybeBlacklistTrack(TrackSelection trackSelection, int i11, Exception exc, long j11) {
        if (!shouldBlacklist(exc)) {
            return false;
        }
        boolean zBlacklist = trackSelection.blacklist(i11, j11);
        int i12 = ((HttpDataSource.InvalidResponseCodeException) exc).responseCode;
        if (zBlacklist) {
            Log.w(TAG, "Blacklisted: duration=" + j11 + ", responseCode=" + i12 + ", format=" + trackSelection.getFormat(i11));
        } else {
            Log.w(TAG, "Blacklisting failed (cannot blacklist last enabled track): responseCode=" + i12 + ", format=" + trackSelection.getFormat(i11));
        }
        return zBlacklist;
    }

    public static boolean shouldBlacklist(Exception exc) {
        if (!(exc instanceof HttpDataSource.InvalidResponseCodeException)) {
            return false;
        }
        int i11 = ((HttpDataSource.InvalidResponseCodeException) exc).responseCode;
        return i11 == 404 || i11 == 410;
    }
}
