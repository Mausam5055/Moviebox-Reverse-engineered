package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes4.dex */
public final class SupportRequestBarManagerFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImmersionDelegate f33060a;

    public ImmersionBar V(Activity activity, Dialog dialog) {
        if (this.f33060a == null) {
            this.f33060a = new ImmersionDelegate(activity, dialog);
        }
        return this.f33060a.get();
    }

    public ImmersionBar W(Object obj) {
        if (this.f33060a == null) {
            this.f33060a = new ImmersionDelegate(obj);
        }
        return this.f33060a.get();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.f33060a;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.f33060a;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ImmersionDelegate immersionDelegate = this.f33060a;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.f33060a = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.f33060a;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }
}
