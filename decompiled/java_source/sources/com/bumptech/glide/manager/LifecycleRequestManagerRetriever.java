package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class LifecycleRequestManagerRetriever {

    @NonNull
    private final RequestManagerRetriever.RequestManagerFactory factory;
    final Map<androidx.p009lifecycle.Lifecycle, RequestManager> lifecycleToRequestManager = new HashMap();

    private final class SupportRequestManagerTreeNode implements RequestManagerTreeNode {
        private final FragmentManager childFragmentManager;

        SupportRequestManagerTreeNode(FragmentManager fragmentManager) {
            this.childFragmentManager = fragmentManager;
        }

        private void getChildFragmentsRecursive(FragmentManager fragmentManager, Set<RequestManager> set) {
            List listY0 = fragmentManager.y0();
            int size = listY0.size();
            for (int i11 = 0; i11 < size; i11++) {
                Fragment fragment = (Fragment) listY0.get(i11);
                getChildFragmentsRecursive(fragment.getChildFragmentManager(), set);
                RequestManager only = LifecycleRequestManagerRetriever.this.getOnly(fragment.getLifecycle());
                if (only != null) {
                    set.add(only);
                }
            }
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> getDescendants() {
            HashSet hashSet = new HashSet();
            getChildFragmentsRecursive(this.childFragmentManager, hashSet);
            return hashSet;
        }
    }

    LifecycleRequestManagerRetriever(@NonNull RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.factory = requestManagerFactory;
    }

    RequestManager getOnly(androidx.p009lifecycle.Lifecycle lifecycle) {
        Util.assertMainThread();
        return this.lifecycleToRequestManager.get(lifecycle);
    }

    RequestManager getOrCreate(Context context, Glide glide, final androidx.p009lifecycle.Lifecycle lifecycle, FragmentManager fragmentManager, boolean z10) {
        Util.assertMainThread();
        RequestManager only = getOnly(lifecycle);
        if (only != null) {
            return only;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        RequestManager requestManagerBuild = this.factory.build(glide, lifecycleLifecycle, new SupportRequestManagerTreeNode(fragmentManager), context);
        this.lifecycleToRequestManager.put(lifecycle, requestManagerBuild);
        lifecycleLifecycle.addListener(new LifecycleListener() { // from class: com.bumptech.glide.manager.LifecycleRequestManagerRetriever.1
            @Override // com.bumptech.glide.manager.LifecycleListener
            public void onDestroy() {
                LifecycleRequestManagerRetriever.this.lifecycleToRequestManager.remove(lifecycle);
            }

            @Override // com.bumptech.glide.manager.LifecycleListener
            public void onStart() {
            }

            @Override // com.bumptech.glide.manager.LifecycleListener
            public void onStop() {
            }
        });
        if (z10) {
            requestManagerBuild.onStart();
        }
        return requestManagerBuild;
    }
}
