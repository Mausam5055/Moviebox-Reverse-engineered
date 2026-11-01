package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.PlayerMessage;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ConcatenatingMediaSource extends CompositeMediaSource<MediaSourceHolder> implements PlayerMessage.Target {
    private static final int MSG_ADD = 0;
    private static final int MSG_ADD_MULTIPLE = 1;
    private static final int MSG_CLEAR = 4;
    private static final int MSG_MOVE = 3;
    private static final int MSG_NOTIFY_LISTENER = 5;
    private static final int MSG_ON_COMPLETION = 6;
    private static final int MSG_REMOVE = 2;
    private final boolean isAtomic;
    private boolean listenerNotificationScheduled;
    private final Map<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    private final List<MediaSourceHolder> mediaSourceHolders;
    private final List<MediaSourceHolder> mediaSourcesPublic;
    private final List<EventDispatcher> pendingOnCompletionActions;
    private int periodCount;
    private ExoPlayer player;
    private final MediaSourceHolder query;
    private ShuffleOrder shuffleOrder;
    private final Timeline.Window window;
    private int windowCount;

    private static final class ConcatenatedTimeline extends AbstractConcatenatedTimeline {
        private final HashMap<Object, Integer> childIndexByUid;
        private final int[] firstPeriodInChildIndices;
        private final int[] firstWindowInChildIndices;
        private final int periodCount;
        private final Timeline[] timelines;
        private final Object[] uids;
        private final int windowCount;

        public ConcatenatedTimeline(Collection<MediaSourceHolder> collection, int i11, int i12, ShuffleOrder shuffleOrder, boolean z10) {
            super(z10, shuffleOrder);
            this.windowCount = i11;
            this.periodCount = i12;
            int size = collection.size();
            this.firstPeriodInChildIndices = new int[size];
            this.firstWindowInChildIndices = new int[size];
            this.timelines = new Timeline[size];
            this.uids = new Object[size];
            this.childIndexByUid = new HashMap<>();
            int i13 = 0;
            for (MediaSourceHolder mediaSourceHolder : collection) {
                this.timelines[i13] = mediaSourceHolder.timeline;
                this.firstPeriodInChildIndices[i13] = mediaSourceHolder.firstPeriodIndexInChild;
                this.firstWindowInChildIndices[i13] = mediaSourceHolder.firstWindowIndexInChild;
                Object[] objArr = this.uids;
                Object obj = mediaSourceHolder.uid;
                objArr[i13] = obj;
                this.childIndexByUid.put(obj, Integer.valueOf(i13));
                i13++;
            }
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected int getChildIndexByChildUid(Object obj) {
            Integer num = this.childIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected int getChildIndexByPeriodIndex(int i11) {
            return Util.binarySearchFloor(this.firstPeriodInChildIndices, i11 + 1, false, false);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected int getChildIndexByWindowIndex(int i11) {
            return Util.binarySearchFloor(this.firstWindowInChildIndices, i11 + 1, false, false);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected Object getChildUidByChildIndex(int i11) {
            return this.uids[i11];
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected int getFirstPeriodIndexByChildIndex(int i11) {
            return this.firstPeriodInChildIndices[i11];
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected int getFirstWindowIndexByChildIndex(int i11) {
            return this.firstWindowInChildIndices[i11];
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.periodCount;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.AbstractConcatenatedTimeline
        protected Timeline getTimelineByChildIndex(int i11) {
            return this.timelines[i11];
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getWindowCount() {
            return this.windowCount;
        }
    }

    private static final class DeferredTimeline extends ForwardingTimeline {
        private final Object replacedId;
        private static final Object DUMMY_ID = new Object();
        private static final Timeline.Period period = new Timeline.Period();
        private static final DummyTimeline dummyTimeline = new DummyTimeline();

        public DeferredTimeline() {
            this(dummyTimeline, null);
        }

        private DeferredTimeline(Timeline timeline, Object obj) {
            super(timeline);
            this.replacedId = obj;
        }

        public DeferredTimeline cloneWithNewTimeline(Timeline timeline) {
            return new DeferredTimeline(timeline, (this.replacedId != null || timeline.getPeriodCount() <= 0) ? this.replacedId : timeline.getPeriod(0, period, true).uid);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ForwardingTimeline, com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            Timeline timeline = this.timeline;
            if (DUMMY_ID.equals(obj)) {
                obj = this.replacedId;
            }
            return timeline.getIndexOfPeriod(obj);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ForwardingTimeline, com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i11, Timeline.Period period2, boolean z10) {
            this.timeline.getPeriod(i11, period2, z10);
            if (Util.areEqual(period2.uid, this.replacedId)) {
                period2.uid = DUMMY_ID;
            }
            return period2;
        }

        public Timeline getTimeline() {
            return this.timeline;
        }
    }

    private static final class DummyTimeline extends Timeline {
        private DummyTimeline() {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return obj == null ? 0 : -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i11, Timeline.Period period, boolean z10) {
            return period.set(null, null, 0, C.TIME_UNSET, 0L);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getPeriodCount() {
            return 1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Timeline.Window getWindow(int i11, Timeline.Window window, boolean z10, long j11) {
            return window.set(null, C.TIME_UNSET, C.TIME_UNSET, false, true, j11 > 0 ? C.TIME_UNSET : 0L, C.TIME_UNSET, 0, 0, 0L);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    private static final class EventDispatcher {
        public final Handler eventHandler;
        public final Runnable runnable;

        public EventDispatcher(Runnable runnable) {
            this.runnable = runnable;
            this.eventHandler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        }

        public void dispatchEvent() {
            this.eventHandler.post(this.runnable);
        }
    }

    static final class MediaSourceHolder implements Comparable<MediaSourceHolder> {
        public int childIndex;
        public int firstPeriodIndexInChild;
        public int firstWindowIndexInChild;
        public boolean isPrepared;
        public boolean isRemoved;
        public final MediaSource mediaSource;
        public DeferredTimeline timeline = new DeferredTimeline();
        public List<DeferredMediaPeriod> activeMediaPeriods = new ArrayList();
        public final Object uid = new Object();

        public MediaSourceHolder(MediaSource mediaSource) {
            this.mediaSource = mediaSource;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull MediaSourceHolder mediaSourceHolder) {
            return this.firstPeriodIndexInChild - mediaSourceHolder.firstPeriodIndexInChild;
        }

        public void reset(int i11, int i12, int i13) {
            this.childIndex = i11;
            this.firstWindowIndexInChild = i12;
            this.firstPeriodIndexInChild = i13;
            this.isPrepared = false;
            this.isRemoved = false;
            this.activeMediaPeriods.clear();
        }
    }

    private static final class MessageData<T> {

        @Nullable
        public final EventDispatcher actionOnCompletion;
        public final T customData;
        public final int index;

        public MessageData(int i11, T t11, @Nullable Runnable runnable) {
            this.index = i11;
            this.actionOnCompletion = runnable != null ? new EventDispatcher(runnable) : null;
            this.customData = t11;
        }
    }

    public ConcatenatingMediaSource() {
        this(false, (ShuffleOrder) new ShuffleOrder.DefaultShuffleOrder(0));
    }

    public ConcatenatingMediaSource(boolean z10) {
        this(z10, new ShuffleOrder.DefaultShuffleOrder(0));
    }

    public ConcatenatingMediaSource(boolean z10, ShuffleOrder shuffleOrder) {
        this(z10, shuffleOrder, new MediaSource[0]);
    }

    public ConcatenatingMediaSource(boolean z10, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        for (MediaSource mediaSource : mediaSourceArr) {
            Assertions.checkNotNull(mediaSource);
        }
        this.shuffleOrder = shuffleOrder.getLength() > 0 ? shuffleOrder.cloneAndClear() : shuffleOrder;
        this.mediaSourceByMediaPeriod = new IdentityHashMap();
        this.mediaSourcesPublic = new ArrayList();
        this.mediaSourceHolders = new ArrayList();
        this.pendingOnCompletionActions = new ArrayList();
        this.query = new MediaSourceHolder(null);
        this.isAtomic = z10;
        this.window = new Timeline.Window();
        addMediaSources(Arrays.asList(mediaSourceArr));
    }

    public ConcatenatingMediaSource(boolean z10, MediaSource... mediaSourceArr) {
        this(z10, new ShuffleOrder.DefaultShuffleOrder(0), mediaSourceArr);
    }

    public ConcatenatingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    private void addMediaSourceInternal(int i11, MediaSourceHolder mediaSourceHolder) {
        if (i11 > 0) {
            MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i11 - 1);
            mediaSourceHolder.reset(i11, mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.timeline.getWindowCount(), mediaSourceHolder2.firstPeriodIndexInChild + mediaSourceHolder2.timeline.getPeriodCount());
        } else {
            mediaSourceHolder.reset(i11, 0, 0);
        }
        correctOffsets(i11, 1, mediaSourceHolder.timeline.getWindowCount(), mediaSourceHolder.timeline.getPeriodCount());
        this.mediaSourceHolders.add(i11, mediaSourceHolder);
        prepareChildSource(mediaSourceHolder, mediaSourceHolder.mediaSource);
    }

    private void addMediaSourcesInternal(int i11, Collection<MediaSourceHolder> collection) {
        Iterator<MediaSourceHolder> it = collection.iterator();
        while (it.hasNext()) {
            addMediaSourceInternal(i11, it.next());
            i11++;
        }
    }

    private void clearInternal() {
        for (int size = this.mediaSourceHolders.size() - 1; size >= 0; size--) {
            removeMediaSourceInternal(size);
        }
    }

    private void correctOffsets(int i11, int i12, int i13, int i14) {
        this.windowCount += i13;
        this.periodCount += i14;
        while (i11 < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i11).childIndex += i12;
            this.mediaSourceHolders.get(i11).firstWindowIndexInChild += i13;
            this.mediaSourceHolders.get(i11).firstPeriodIndexInChild += i14;
            i11++;
        }
    }

    private int findMediaSourceHolderByPeriodIndex(int i11) {
        MediaSourceHolder mediaSourceHolder = this.query;
        mediaSourceHolder.firstPeriodIndexInChild = i11;
        int iBinarySearch = Collections.binarySearch(this.mediaSourceHolders, mediaSourceHolder);
        if (iBinarySearch < 0) {
            return (-iBinarySearch) - 2;
        }
        while (iBinarySearch < this.mediaSourceHolders.size() - 1) {
            int i12 = iBinarySearch + 1;
            if (this.mediaSourceHolders.get(i12).firstPeriodIndexInChild != i11) {
                break;
            }
            iBinarySearch = i12;
        }
        return iBinarySearch;
    }

    private void moveMediaSourceInternal(int i11, int i12) {
        int iMin = Math.min(i11, i12);
        int iMax = Math.max(i11, i12);
        int windowCount = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        int periodCount = this.mediaSourceHolders.get(iMin).firstPeriodIndexInChild;
        List<MediaSourceHolder> list = this.mediaSourceHolders;
        list.add(i12, list.remove(i11));
        while (iMin <= iMax) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(iMin);
            mediaSourceHolder.firstWindowIndexInChild = windowCount;
            mediaSourceHolder.firstPeriodIndexInChild = periodCount;
            windowCount += mediaSourceHolder.timeline.getWindowCount();
            periodCount += mediaSourceHolder.timeline.getPeriodCount();
            iMin++;
        }
    }

    private void notifyListener() {
        this.listenerNotificationScheduled = false;
        List listEmptyList = this.pendingOnCompletionActions.isEmpty() ? Collections.emptyList() : new ArrayList(this.pendingOnCompletionActions);
        this.pendingOnCompletionActions.clear();
        refreshSourceInfo(new ConcatenatedTimeline(this.mediaSourceHolders, this.windowCount, this.periodCount, this.shuffleOrder, this.isAtomic), null);
        if (listEmptyList.isEmpty()) {
            return;
        }
        this.player.createMessage(this).setType(6).setPayload(listEmptyList).send();
    }

    private void removeMediaSourceInternal(int i11) {
        MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceHolders.remove(i11);
        DeferredTimeline deferredTimeline = mediaSourceHolderRemove.timeline;
        correctOffsets(i11, -1, -deferredTimeline.getWindowCount(), -deferredTimeline.getPeriodCount());
        mediaSourceHolderRemove.isRemoved = true;
        if (mediaSourceHolderRemove.activeMediaPeriods.isEmpty()) {
            releaseChildSource(mediaSourceHolderRemove);
        }
    }

    private void scheduleListenerNotification(@Nullable EventDispatcher eventDispatcher) {
        if (!this.listenerNotificationScheduled) {
            this.player.createMessage(this).setType(5).send();
            this.listenerNotificationScheduled = true;
        }
        if (eventDispatcher != null) {
            this.pendingOnCompletionActions.add(eventDispatcher);
        }
    }

    private void updateMediaSourceInternal(MediaSourceHolder mediaSourceHolder, Timeline timeline) {
        if (mediaSourceHolder == null) {
            throw new IllegalArgumentException();
        }
        DeferredTimeline deferredTimeline = mediaSourceHolder.timeline;
        if (deferredTimeline.getTimeline() == timeline) {
            return;
        }
        int windowCount = timeline.getWindowCount() - deferredTimeline.getWindowCount();
        int periodCount = timeline.getPeriodCount() - deferredTimeline.getPeriodCount();
        if (windowCount != 0 || periodCount != 0) {
            correctOffsets(mediaSourceHolder.childIndex + 1, 0, windowCount, periodCount);
        }
        mediaSourceHolder.timeline = deferredTimeline.cloneWithNewTimeline(timeline);
        if (!mediaSourceHolder.isPrepared && !timeline.isEmpty()) {
            timeline.getWindow(0, this.window);
            long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs() + this.window.getDefaultPositionUs();
            for (int i11 = 0; i11 < mediaSourceHolder.activeMediaPeriods.size(); i11++) {
                DeferredMediaPeriod deferredMediaPeriod = mediaSourceHolder.activeMediaPeriods.get(i11);
                deferredMediaPeriod.setDefaultPreparePositionUs(positionInFirstPeriodUs);
                deferredMediaPeriod.createPeriod();
            }
            mediaSourceHolder.isPrepared = true;
        }
        scheduleListenerNotification(null);
    }

    public final synchronized void addMediaSource(int i11, MediaSource mediaSource) {
        addMediaSource(i11, mediaSource, null);
    }

    public final synchronized void addMediaSource(int i11, MediaSource mediaSource, @Nullable Runnable runnable) {
        try {
            Assertions.checkNotNull(mediaSource);
            MediaSourceHolder mediaSourceHolder = new MediaSourceHolder(mediaSource);
            this.mediaSourcesPublic.add(i11, mediaSourceHolder);
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.createMessage(this).setType(0).setPayload(new MessageData(i11, mediaSourceHolder, runnable)).send();
            } else if (runnable != null) {
                runnable.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void addMediaSource(MediaSource mediaSource) {
        addMediaSource(this.mediaSourcesPublic.size(), mediaSource, null);
    }

    public final synchronized void addMediaSource(MediaSource mediaSource, @Nullable Runnable runnable) {
        addMediaSource(this.mediaSourcesPublic.size(), mediaSource, runnable);
    }

    public final synchronized void addMediaSources(int i11, Collection<MediaSource> collection) {
        addMediaSources(i11, collection, null);
    }

    public final synchronized void addMediaSources(int i11, Collection<MediaSource> collection, @Nullable Runnable runnable) {
        try {
            Iterator<MediaSource> it = collection.iterator();
            while (it.hasNext()) {
                Assertions.checkNotNull(it.next());
            }
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<MediaSource> it2 = collection.iterator();
            while (it2.hasNext()) {
                arrayList.add(new MediaSourceHolder(it2.next()));
            }
            this.mediaSourcesPublic.addAll(i11, arrayList);
            if (this.player != null && !collection.isEmpty()) {
                this.player.createMessage(this).setType(1).setPayload(new MessageData(i11, arrayList, runnable)).send();
            } else if (runnable != null) {
                runnable.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void addMediaSources(Collection<MediaSource> collection) {
        addMediaSources(this.mediaSourcesPublic.size(), collection, null);
    }

    public final synchronized void addMediaSources(Collection<MediaSource> collection, @Nullable Runnable runnable) {
        addMediaSources(this.mediaSourcesPublic.size(), collection, runnable);
    }

    public final synchronized void clear() {
        clear(null);
    }

    public final synchronized void clear(@Nullable Runnable runnable) {
        try {
            this.mediaSourcesPublic.clear();
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.createMessage(this).setType(4).setPayload(runnable != null ? new EventDispatcher(runnable) : null).send();
            } else if (runnable != null) {
                runnable.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public final MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(findMediaSourceHolderByPeriodIndex(mediaPeriodId.periodIndex));
        DeferredMediaPeriod deferredMediaPeriod = new DeferredMediaPeriod(mediaSourceHolder.mediaSource, mediaPeriodId.copyWithPeriodIndex(mediaPeriodId.periodIndex - mediaSourceHolder.firstPeriodIndexInChild), allocator);
        this.mediaSourceByMediaPeriod.put(deferredMediaPeriod, mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriods.add(deferredMediaPeriod);
        if (mediaSourceHolder.isPrepared) {
            deferredMediaPeriod.createPeriod();
        }
        return deferredMediaPeriod;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource
    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSourceHolder mediaSourceHolder, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i11 = 0; i11 < mediaSourceHolder.activeMediaPeriods.size(); i11++) {
            if (mediaSourceHolder.activeMediaPeriods.get(i11).f36786id.windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodIndex(mediaPeriodId.periodIndex + mediaSourceHolder.firstPeriodIndexInChild);
            }
        }
        return null;
    }

    public final synchronized MediaSource getMediaSource(int i11) {
        return this.mediaSourcesPublic.get(i11).mediaSource;
    }

    public final synchronized int getSize() {
        return this.mediaSourcesPublic.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource
    public int getWindowIndexForChildWindowIndex(MediaSourceHolder mediaSourceHolder, int i11) {
        return i11 + mediaSourceHolder.firstWindowIndexInChild;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.PlayerMessage.Target
    public final void handleMessage(int i11, Object obj) throws ExoPlaybackException {
        switch (i11) {
            case 0:
                MessageData messageData = (MessageData) obj;
                this.shuffleOrder = this.shuffleOrder.cloneAndInsert(messageData.index, 1);
                addMediaSourceInternal(messageData.index, (MediaSourceHolder) messageData.customData);
                scheduleListenerNotification(messageData.actionOnCompletion);
                return;
            case 1:
                MessageData messageData2 = (MessageData) obj;
                this.shuffleOrder = this.shuffleOrder.cloneAndInsert(messageData2.index, ((Collection) messageData2.customData).size());
                addMediaSourcesInternal(messageData2.index, (Collection) messageData2.customData);
                scheduleListenerNotification(messageData2.actionOnCompletion);
                return;
            case 2:
                MessageData messageData3 = (MessageData) obj;
                this.shuffleOrder = this.shuffleOrder.cloneAndRemove(messageData3.index);
                removeMediaSourceInternal(messageData3.index);
                scheduleListenerNotification(messageData3.actionOnCompletion);
                return;
            case 3:
                MessageData messageData4 = (MessageData) obj;
                ShuffleOrder shuffleOrderCloneAndRemove = this.shuffleOrder.cloneAndRemove(messageData4.index);
                this.shuffleOrder = shuffleOrderCloneAndRemove;
                this.shuffleOrder = shuffleOrderCloneAndRemove.cloneAndInsert(((Integer) messageData4.customData).intValue(), 1);
                moveMediaSourceInternal(messageData4.index, ((Integer) messageData4.customData).intValue());
                scheduleListenerNotification(messageData4.actionOnCompletion);
                return;
            case 4:
                clearInternal();
                scheduleListenerNotification((EventDispatcher) obj);
                return;
            case 5:
                notifyListener();
                return;
            case 6:
                List list = (List) obj;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    ((EventDispatcher) list.get(i12)).dispatchEvent();
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    public final synchronized void moveMediaSource(int i11, int i12) {
        moveMediaSource(i11, i12, null);
    }

    public final synchronized void moveMediaSource(int i11, int i12, @Nullable Runnable runnable) {
        if (i11 == i12) {
            return;
        }
        try {
            List<MediaSourceHolder> list = this.mediaSourcesPublic;
            list.add(i12, list.remove(i11));
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.createMessage(this).setType(3).setPayload(new MessageData(i11, Integer.valueOf(i12), runnable)).send();
            } else if (runnable != null) {
                runnable.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource
    public final void onChildSourceInfoRefreshed(MediaSourceHolder mediaSourceHolder, MediaSource mediaSource, Timeline timeline, @Nullable Object obj) {
        updateMediaSourceInternal(mediaSourceHolder, timeline);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource, com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public final synchronized void prepareSourceInternal(ExoPlayer exoPlayer, boolean z10) {
        try {
            super.prepareSourceInternal(exoPlayer, z10);
            this.player = exoPlayer;
            if (this.mediaSourcesPublic.isEmpty()) {
                notifyListener();
            } else {
                this.shuffleOrder = this.shuffleOrder.cloneAndInsert(0, this.mediaSourcesPublic.size());
                addMediaSourcesInternal(0, this.mediaSourcesPublic);
                scheduleListenerNotification(null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public final void releasePeriod(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceByMediaPeriod.remove(mediaPeriod);
        ((DeferredMediaPeriod) mediaPeriod).releasePeriod();
        mediaSourceHolderRemove.activeMediaPeriods.remove(mediaPeriod);
        if (mediaSourceHolderRemove.activeMediaPeriods.isEmpty() && mediaSourceHolderRemove.isRemoved) {
            releaseChildSource(mediaSourceHolderRemove);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.CompositeMediaSource, com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public final void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.mediaSourceHolders.clear();
        this.player = null;
        this.shuffleOrder = this.shuffleOrder.cloneAndClear();
        this.windowCount = 0;
        this.periodCount = 0;
    }

    public final synchronized void removeMediaSource(int i11) {
        removeMediaSource(i11, null);
    }

    public final synchronized void removeMediaSource(int i11, @Nullable Runnable runnable) {
        try {
            this.mediaSourcesPublic.remove(i11);
            ExoPlayer exoPlayer = this.player;
            if (exoPlayer != null) {
                exoPlayer.createMessage(this).setType(2).setPayload(new MessageData(i11, null, runnable)).send();
            } else if (runnable != null) {
                runnable.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
