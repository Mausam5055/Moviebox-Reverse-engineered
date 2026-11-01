package com.bumptech.glide.integration.recyclerview;

import android.app.Activity;
import android.app.Fragment;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.RequestManager;

/* JADX INFO: loaded from: classes2.dex */
public final class RecyclerViewPreloader<T> extends RecyclerView.r {
    private final RecyclerToListViewScrollListener recyclerScrollListener;

    public RecyclerViewPreloader(@NonNull Activity activity, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this(Glide.with(activity), preloadModelProvider, preloadSizeProvider, i11);
    }

    @Deprecated
    public RecyclerViewPreloader(@NonNull Fragment fragment, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this(Glide.with(fragment), preloadModelProvider, preloadSizeProvider, i11);
    }

    public RecyclerViewPreloader(@NonNull androidx.fragment.app.Fragment fragment, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this(Glide.with(fragment), preloadModelProvider, preloadSizeProvider, i11);
    }

    public RecyclerViewPreloader(@NonNull FragmentActivity fragmentActivity, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this(Glide.with(fragmentActivity), preloadModelProvider, preloadSizeProvider, i11);
    }

    public RecyclerViewPreloader(@NonNull RequestManager requestManager, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i11) {
        this.recyclerScrollListener = new RecyclerToListViewScrollListener(new ListPreloader(requestManager, preloadModelProvider, preloadSizeProvider, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        this.recyclerScrollListener.onScrolled(recyclerView, i11, i12);
    }
}
