package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {
    private int lastEnd;
    private int lastStart;
    private final int maxPreload;
    private final PreloadSizeProvider<T> preloadDimensionProvider;
    private final PreloadModelProvider<T> preloadModelProvider;
    private final PreloadTargetQueue preloadTargetQueue;
    private final RequestManager requestManager;
    private int totalItemCount;
    private int lastFirstVisible = -1;
    private boolean isIncreasing = true;

    public interface PreloadModelProvider<U> {
        @NonNull
        List<U> getPreloadItems(int i11);

        @Nullable
        RequestBuilder<?> getPreloadRequestBuilder(@NonNull U u11);
    }

    public interface PreloadSizeProvider<T> {
        @Nullable
        int[] getPreloadSize(@NonNull T t11, int i11, int i12);
    }

    private static final class PreloadTarget implements Target<Object> {
        int photoHeight;
        int photoWidth;

        @Nullable
        private Request request;

        PreloadTarget() {
        }

        @Override // com.bumptech.glide.request.target.Target
        @Nullable
        public Request getRequest() {
            return this.request;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.photoWidth, this.photoHeight);
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onDestroy() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStart() {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStop() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void setRequest(@Nullable Request request) {
            this.request = request;
        }
    }

    private static final class PreloadTargetQueue {
        final Queue<PreloadTarget> queue;

        PreloadTargetQueue(int i11) {
            this.queue = Util.createQueue(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                this.queue.offer(new PreloadTarget());
            }
        }

        public PreloadTarget next(int i11, int i12) {
            PreloadTarget preloadTargetPoll = this.queue.poll();
            this.queue.offer(preloadTargetPoll);
            preloadTargetPoll.photoWidth = i11;
            preloadTargetPoll.photoHeight = i12;
            return preloadTargetPoll;
        }
    }

    public ListPreloader(@NonNull RequestManager requestManager, @NonNull PreloadModelProvider<T> preloadModelProvider, @NonNull PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this.requestManager = requestManager;
        this.preloadModelProvider = preloadModelProvider;
        this.preloadDimensionProvider = preloadSizeProvider;
        this.maxPreload = i11;
        this.preloadTargetQueue = new PreloadTargetQueue(i11 + 1);
    }

    private void cancelAll() {
        for (int i11 = 0; i11 < this.preloadTargetQueue.queue.size(); i11++) {
            this.requestManager.clear(this.preloadTargetQueue.next(0, 0));
        }
    }

    private void preload(int i11, int i12) {
        int iMin;
        int iMax;
        if (i11 < i12) {
            iMax = Math.max(this.lastEnd, i11);
            iMin = i12;
        } else {
            iMin = Math.min(this.lastStart, i11);
            iMax = i12;
        }
        int iMin2 = Math.min(this.totalItemCount, iMin);
        int iMin3 = Math.min(this.totalItemCount, Math.max(0, iMax));
        if (i11 < i12) {
            for (int i13 = iMin3; i13 < iMin2; i13++) {
                preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(i13), i13, true);
            }
        } else {
            for (int i14 = iMin2 - 1; i14 >= iMin3; i14--) {
                preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(i14), i14, false);
            }
        }
        this.lastStart = iMin3;
        this.lastEnd = iMin2;
    }

    private void preload(int i11, boolean z10) {
        if (this.isIncreasing != z10) {
            this.isIncreasing = z10;
            cancelAll();
        }
        preload(i11, (z10 ? this.maxPreload : -this.maxPreload) + i11);
    }

    private void preloadAdapterPosition(List<T> list, int i11, boolean z10) {
        int size = list.size();
        if (z10) {
            for (int i12 = 0; i12 < size; i12++) {
                preloadItem(list.get(i12), i11, i12);
            }
            return;
        }
        for (int i13 = size - 1; i13 >= 0; i13--) {
            preloadItem(list.get(i13), i11, i13);
        }
    }

    private void preloadItem(@Nullable T t11, int i11, int i12) {
        int[] preloadSize;
        RequestBuilder<?> preloadRequestBuilder;
        if (t11 == null || (preloadSize = this.preloadDimensionProvider.getPreloadSize(t11, i11, i12)) == null || (preloadRequestBuilder = this.preloadModelProvider.getPreloadRequestBuilder(t11)) == null) {
            return;
        }
        preloadRequestBuilder.into(this.preloadTargetQueue.next(preloadSize[0], preloadSize[1]));
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i11, int i12, int i13) {
        if (this.totalItemCount == 0 && i13 == 0) {
            return;
        }
        this.totalItemCount = i13;
        int i14 = this.lastFirstVisible;
        if (i11 > i14) {
            preload(i12 + i11, true);
        } else if (i11 < i14) {
            preload(i11, false);
        }
        this.lastFirstVisible = i11;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i11) {
    }
}
