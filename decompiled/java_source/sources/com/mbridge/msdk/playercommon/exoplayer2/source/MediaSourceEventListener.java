package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public interface MediaSourceEventListener {

    public static final class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        private final long mediaTimeOffsetMs;
        public final int windowIndex;

        private static final class ListenerAndHandler {
            public final Handler handler;
            public final MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j11) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i11;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaTimeOffsetMs = j11;
        }

        private long adjustMediaTime(long j11) {
            long jUsToMs = C.usToMs(j11);
            return jUsToMs == C.TIME_UNSET ? C.TIME_UNSET : this.mediaTimeOffsetMs + jUsToMs;
        }

        private void postOrRun(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkArgument((handler == null || mediaSourceEventListener == null) ? false : true);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void downstreamFormatChanged(int i11, @Nullable Format format, int i12, @Nullable Object obj, long j11) {
            downstreamFormatChanged(new MediaLoadData(1, i11, format, i12, obj, adjustMediaTime(j11), C.TIME_UNSET));
        }

        public void downstreamFormatChanged(final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.9
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onDownstreamFormatChanged(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        public void loadCanceled(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.5
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onLoadCanceled(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadCanceled(DataSpec dataSpec, int i11, int i12, @Nullable Format format, int i13, @Nullable Object obj, long j11, long j12, long j13, long j14, long j15) {
            loadCanceled(new LoadEventInfo(dataSpec, j13, j14, j15), new MediaLoadData(i11, i12, format, i13, obj, adjustMediaTime(j11), adjustMediaTime(j12)));
        }

        public void loadCanceled(DataSpec dataSpec, int i11, long j11, long j12, long j13) {
            loadCanceled(dataSpec, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13);
        }

        public void loadCompleted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onLoadCompleted(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadCompleted(DataSpec dataSpec, int i11, int i12, @Nullable Format format, int i13, @Nullable Object obj, long j11, long j12, long j13, long j14, long j15) {
            loadCompleted(new LoadEventInfo(dataSpec, j13, j14, j15), new MediaLoadData(i11, i12, format, i13, obj, adjustMediaTime(j11), adjustMediaTime(j12)));
        }

        public void loadCompleted(DataSpec dataSpec, int i11, long j11, long j12, long j13) {
            loadCompleted(dataSpec, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13);
        }

        public void loadError(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z10) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.6
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onLoadError(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z10);
                    }
                });
            }
        }

        public void loadError(DataSpec dataSpec, int i11, int i12, @Nullable Format format, int i13, @Nullable Object obj, long j11, long j12, long j13, long j14, long j15, IOException iOException, boolean z10) {
            loadError(new LoadEventInfo(dataSpec, j13, j14, j15), new MediaLoadData(i11, i12, format, i13, obj, adjustMediaTime(j11), adjustMediaTime(j12)), iOException, z10);
        }

        public void loadError(DataSpec dataSpec, int i11, long j11, long j12, long j13, IOException iOException, boolean z10) {
            loadError(dataSpec, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13, iOException, z10);
        }

        public void loadStarted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.3
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onLoadStarted(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadStarted(DataSpec dataSpec, int i11, int i12, @Nullable Format format, int i13, @Nullable Object obj, long j11, long j12, long j13) {
            loadStarted(new LoadEventInfo(dataSpec, j13, 0L, 0L), new MediaLoadData(i11, i12, format, i13, obj, adjustMediaTime(j11), adjustMediaTime(j12)));
        }

        public void loadStarted(DataSpec dataSpec, int i11, long j11) {
            loadStarted(dataSpec, i11, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j11);
        }

        public void mediaPeriodCreated() {
            Assertions.checkState(this.mediaPeriodId != null);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onMediaPeriodCreated(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId);
                    }
                });
            }
        }

        public void mediaPeriodReleased() {
            Assertions.checkState(this.mediaPeriodId != null);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onMediaPeriodReleased(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId);
                    }
                });
            }
        }

        public void readingStarted() {
            Assertions.checkState(this.mediaPeriodId != null);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.7
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onReadingStarted(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId);
                    }
                });
            }
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                if (listenerAndHandler.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(listenerAndHandler);
                }
            }
        }

        public void upstreamDiscarded(int i11, long j11, long j12) {
            upstreamDiscarded(new MediaLoadData(1, i11, null, 3, null, adjustMediaTime(j11), adjustMediaTime(j12)));
        }

        public void upstreamDiscarded(final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener.EventDispatcher.8
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSourceEventListener mediaSourceEventListener2 = mediaSourceEventListener;
                        EventDispatcher eventDispatcher = EventDispatcher.this;
                        mediaSourceEventListener2.onUpstreamDiscarded(eventDispatcher.windowIndex, eventDispatcher.mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        @CheckResult
        public EventDispatcher withParameters(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j11) {
            return new EventDispatcher(this.listenerAndHandlers, i11, mediaPeriodId, j11);
        }
    }

    public static final class LoadEventInfo {
        public final long bytesLoaded;
        public final DataSpec dataSpec;
        public final long elapsedRealtimeMs;
        public final long loadDurationMs;

        public LoadEventInfo(DataSpec dataSpec, long j11, long j12, long j13) {
            this.dataSpec = dataSpec;
            this.elapsedRealtimeMs = j11;
            this.loadDurationMs = j12;
            this.bytesLoaded = j13;
        }
    }

    public static final class MediaLoadData {
        public final int dataType;
        public final long mediaEndTimeMs;
        public final long mediaStartTimeMs;

        @Nullable
        public final Format trackFormat;

        @Nullable
        public final Object trackSelectionData;
        public final int trackSelectionReason;
        public final int trackType;

        public MediaLoadData(int i11, int i12, @Nullable Format format, int i13, @Nullable Object obj, long j11, long j12) {
            this.dataType = i11;
            this.trackType = i12;
            this.trackFormat = format;
            this.trackSelectionReason = i13;
            this.trackSelectionData = obj;
            this.mediaStartTimeMs = j11;
            this.mediaEndTimeMs = j12;
        }
    }

    void onDownstreamFormatChanged(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z10);

    void onLoadStarted(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onMediaPeriodCreated(int i11, MediaSource.MediaPeriodId mediaPeriodId);

    void onMediaPeriodReleased(int i11, MediaSource.MediaPeriodId mediaPeriodId);

    void onReadingStarted(int i11, MediaSource.MediaPeriodId mediaPeriodId);

    void onUpstreamDiscarded(int i11, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
