package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.RendererCapabilities;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TrackSelector {

    @Nullable
    private InvalidationListener listener;

    public interface InvalidationListener {
        void onTrackSelectionsInvalidated();
    }

    public final void init(InvalidationListener invalidationListener) {
        this.listener = invalidationListener;
    }

    protected final void invalidate() {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    public abstract void onSelectionActivated(Object obj);

    public abstract TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray) throws ExoPlaybackException;
}
