package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public final class o extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImmersionDelegate f33127a;

    public ImmersionBar a(Activity activity, Dialog dialog) {
        if (this.f33127a == null) {
            this.f33127a = new ImmersionDelegate(activity, dialog);
        }
        return this.f33127a.get();
    }

    public ImmersionBar b(Object obj) {
        if (this.f33127a == null) {
            this.f33127a = new ImmersionDelegate(obj);
        }
        return this.f33127a.get();
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.f33127a;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.f33127a;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ImmersionDelegate immersionDelegate = this.f33127a;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.f33127a = null;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.f33127a;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }
}
