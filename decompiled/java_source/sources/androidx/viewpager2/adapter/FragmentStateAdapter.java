package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.b;
import androidx.collection.x;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentEventDispatcher mFragmentEventDispatcher;
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final x mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final x mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final x mSavedStates;

    private static abstract class DataSetChangeObserver extends RecyclerView.g {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeChanged(int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeChanged(int i11, int i12, @Nullable Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeInserted(int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeMoved(int i11, int i12, int i13) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeRemoved(int i11, int i12) {
            onChanged();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public @interface ExperimentalFragmentStateAdapterApi {
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class FragmentEventDispatcher {
        private List<FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

        FragmentEventDispatcher() {
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchMaxLifecyclePreUpdated(Fragment fragment, Lifecycle.State state) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentMaxLifecyclePreUpdated(fragment, state));
            }
            return arrayList;
        }

        public void dispatchPostEvents(List<FragmentTransactionCallback.OnPostEventListener> list) {
            Iterator<FragmentTransactionCallback.OnPostEventListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onPost();
            }
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreAdded(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreRemoved(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreSavedInstanceState(fragment));
            }
            return arrayList;
        }

        public void registerCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.add(fragmentTransactionCallback);
        }

        public void unregisterCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.remove(fragmentTransactionCallback);
        }
    }

    class FragmentMaxLifecycleEnforcer {
        private RecyclerView.g mDataObserver;
        private r mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;

        FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        private ViewPager2 inferViewPager(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        void register(@NonNull RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i11) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i11) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.g
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            r rVar = new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.p009lifecycle.r
                public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mLifecycleObserver = rVar;
            FragmentStateAdapter.this.mLifecycle.a(rVar);
        }

        void unregister(@NonNull RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            FragmentStateAdapter.this.mLifecycle.d(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        void updateFragmentMaxLifecycle(boolean z10) {
            int currentItem;
            Fragment fragment;
            if (FragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || FragmentStateAdapter.this.mFragments.i() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z10) && (fragment = (Fragment) FragmentStateAdapter.this.mFragments.e(itemId)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = itemId;
                w wVarP = FragmentStateAdapter.this.mFragmentManager.p();
                ArrayList arrayList = new ArrayList();
                Fragment fragment2 = null;
                for (int i11 = 0; i11 < FragmentStateAdapter.this.mFragments.n(); i11++) {
                    long j11 = FragmentStateAdapter.this.mFragments.j(i11);
                    Fragment fragment3 = (Fragment) FragmentStateAdapter.this.mFragments.o(i11);
                    if (fragment3.isAdded()) {
                        if (j11 != this.mPrimaryItemId) {
                            Lifecycle.State state = Lifecycle.State.STARTED;
                            wVarP.v(fragment3, state);
                            arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment3, state));
                        } else {
                            fragment2 = fragment3;
                        }
                        fragment3.setMenuVisibility(j11 == this.mPrimaryItemId);
                    }
                }
                if (fragment2 != null) {
                    Lifecycle.State state2 = Lifecycle.State.RESUMED;
                    wVarP.v(fragment2, state2);
                    arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment2, state2));
                }
                if (wVarP.q()) {
                    return;
                }
                wVarP.k();
                Collections.reverse(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchPostEvents((List) it.next());
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class FragmentTransactionCallback {

        @NonNull
        private static final OnPostEventListener NO_OP = new OnPostEventListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.OnPostEventListener
            public void onPost() {
            }
        };

        public interface OnPostEventListener {
            void onPost();
        }

        @NonNull
        public OnPostEventListener onFragmentMaxLifecyclePreUpdated(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreAdded(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreRemoved(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        @ExperimentalFragmentStateAdapterApi
        public OnPostEventListener onFragmentPreSavedInstanceState(@NonNull Fragment fragment) {
            return NO_OP;
        }
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.mFragments = new x();
        this.mSavedStates = new x();
        this.mItemIdToViewHolder = new x();
        this.mFragmentEventDispatcher = new FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }

    @NonNull
    private static String createKey(@NonNull String str, long j11) {
        return str + j11;
    }

    private void ensureFragment(int i11) {
        long itemId = getItemId(i11);
        if (this.mFragments.d(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i11);
        fragmentCreateFragment.setInitialSavedState((Fragment.SavedState) this.mSavedStates.e(itemId));
        this.mFragments.k(itemId, fragmentCreateFragment);
    }

    private boolean isFragmentViewBound(long j11) {
        View view;
        if (this.mItemIdToViewHolder.d(j11)) {
            return true;
        }
        Fragment fragment = (Fragment) this.mFragments.e(j11);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    private static boolean isValidKey(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long itemForViewHolder(int i11) {
        Long lValueOf = null;
        for (int i12 = 0; i12 < this.mItemIdToViewHolder.n(); i12++) {
            if (((Integer) this.mItemIdToViewHolder.o(i12)).intValue() == i11) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.j(i12));
            }
        }
        return lValueOf;
    }

    private static long parseIdFromKey(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j11) {
        ViewParent parent;
        Fragment fragment = (Fragment) this.mFragments.e(j11);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j11)) {
            this.mSavedStates.l(j11);
        }
        if (!fragment.isAdded()) {
            this.mFragments.l(j11);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j11)) {
            List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreSavedInstanceState = this.mFragmentEventDispatcher.dispatchPreSavedInstanceState(fragment);
            Fragment.SavedState savedStateB1 = this.mFragmentManager.B1(fragment);
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreSavedInstanceState);
            this.mSavedStates.k(j11, savedStateB1);
        }
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreRemoved = this.mFragmentEventDispatcher.dispatchPreRemoved(fragment);
        try {
            this.mFragmentManager.p().r(fragment).k();
            this.mFragments.l(j11);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreRemoved);
        }
    }

    private void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.mIsInGracePeriod = false;
                fragmentStateAdapter.gcFragments();
            }
        };
        this.mLifecycle.a(new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // androidx.p009lifecycle.r
            public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    uVar.getLifecycle().d(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void scheduleViewAttach(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.mFragmentManager.p1(new FragmentManager.k() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
            @Override // androidx.fragment.app.FragmentManager.k
            public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.N1(this);
                    FragmentStateAdapter.this.addViewToContainer(view, frameLayout);
                }
            }
        }, false);
    }

    void addViewToContainer(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j11) {
        return j11 >= 0 && j11 < ((long) getItemCount());
    }

    @NonNull
    public abstract Fragment createFragment(int i11);

    void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        b bVar = new b();
        for (int i11 = 0; i11 < this.mFragments.n(); i11++) {
            long j11 = this.mFragments.j(i11);
            if (!containsItem(j11)) {
                bVar.add(Long.valueOf(j11));
                this.mItemIdToViewHolder.l(j11);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i12 = 0; i12 < this.mFragments.n(); i12++) {
                long j12 = this.mFragments.j(i12);
                if (!isFragmentViewBound(j12)) {
                    bVar.add(Long.valueOf(j12));
                }
            }
        }
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i11) {
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        i.a(this.mFragmentMaxLifecycleEnforcer == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i11) {
        long itemId = fragmentViewHolder.getItemId();
        int id2 = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id2);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.l(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.k(itemId, Integer.valueOf(id2));
        ensureFragment(i11);
        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i11) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.l(lItemForViewHolder.longValue());
        }
    }

    void placeFragmentInViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = (Fragment) this.mFragments.e(fragmentViewHolder.getItemId());
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (fragment.isAdded() && view == null) {
            scheduleViewAttach(fragment, container);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.mFragmentManager.L0()) {
                return;
            }
            this.mLifecycle.a(new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                @Override // androidx.p009lifecycle.r
                public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                    if (FragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    uVar.getLifecycle().d(this);
                    if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
                        FragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(fragment, container);
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreAdded = this.mFragmentEventDispatcher.dispatchPreAdded(fragment);
        try {
            fragment.setMenuVisibility(false);
            this.mFragmentManager.p().e(fragment, "f" + fragmentViewHolder.getItemId()).v(fragment, Lifecycle.State.STARTED).k();
            this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreAdded);
        }
    }

    public void registerFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.registerCallback(fragmentTransactionCallback);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (!this.mSavedStates.i() || !this.mFragments.i()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.k(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.u0(bundle, str));
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.mSavedStates.k(idFromKey, savedState);
                }
            }
        }
        if (this.mFragments.i()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mFragments.n() + this.mSavedStates.n());
        for (int i11 = 0; i11 < this.mFragments.n(); i11++) {
            long j11 = this.mFragments.j(i11);
            Fragment fragment = (Fragment) this.mFragments.e(j11);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.o1(bundle, createKey(KEY_PREFIX_FRAGMENT, j11), fragment);
            }
        }
        for (int i12 = 0; i12 < this.mSavedStates.n(); i12++) {
            long j12 = this.mSavedStates.j(i12);
            if (containsItem(j12)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, j12), (Parcelable) this.mSavedStates.e(j12));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.T0();
    }

    public void unregisterFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.unregisterCallback(fragmentTransactionCallback);
    }
}
