package com.mbridge.msdk.playercommon.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoRendererEventListener {

    public static final class EventDispatcher {

        @Nullable
        private final Handler handler;

        @Nullable
        private final VideoRendererEventListener listener;

        public EventDispatcher(@Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public void decoderInitialized(final String str, final long j11, final long j12) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.2
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onVideoDecoderInitialized(str, j11, j12);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.7
                    @Override // java.lang.Runnable
                    public void run() {
                        decoderCounters.ensureUpdated();
                        EventDispatcher.this.listener.onVideoDisabled(decoderCounters);
                    }
                });
            }
        }

        public void droppedFrames(final int i11, final long j11) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.4
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onDroppedFrames(i11, j11);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onVideoEnabled(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.3
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onVideoInputFormatChanged(format);
                    }
                });
            }
        }

        public void renderedFirstFrame(final Surface surface) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.6
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onRenderedFirstFrame(surface);
                    }
                });
            }
        }

        public void videoSizeChanged(final int i11, final int i12, final int i13, final float f11) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener.EventDispatcher.5
                    @Override // java.lang.Runnable
                    public void run() {
                        EventDispatcher.this.listener.onVideoSizeChanged(i11, i12, i13, f11);
                    }
                });
            }
        }
    }

    void onDroppedFrames(int i11, long j11);

    void onRenderedFirstFrame(Surface surface);

    void onVideoDecoderInitialized(String str, long j11, long j12);

    void onVideoDisabled(DecoderCounters decoderCounters);

    void onVideoEnabled(DecoderCounters decoderCounters);

    void onVideoInputFormatChanged(Format format);

    void onVideoSizeChanged(int i11, int i12, int i13, float f11);
}
