package com.cloud.tmc.miniapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.AddScreenView;
import com.cloud.tmc.miniapp.widget.ImmersiveTitleBarView;
import com.cloud.tmc.miniapp.widget.PageContainerView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniapp.widget.TabBarView;
import g4.a;
import g4.b;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o implements a {

    @NonNull
    public final ConstraintLayout OooO00o;

    @NonNull
    public final PageContainerView OooO0O0;

    @NonNull
    public final FrameLayout OooO0OO;

    @NonNull
    public final ImageView OooO0Oo;

    @NonNull
    public final TabBarView OooO0o;

    @NonNull
    public final ProgressBar OooO0o0;

    @NonNull
    public final ImmersiveTitleBarView OooO0oO;

    @NonNull
    public final View OooO0oo;

    public OooO00o(@NonNull ConstraintLayout constraintLayout, @NonNull AddScreenView addScreenView, @NonNull PageContainerView pageContainerView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ProgressBar progressBar, @NonNull StatusLayout statusLayout, @NonNull TabBarView tabBarView, @NonNull ImmersiveTitleBarView immersiveTitleBarView, @NonNull View view) {
        this.OooO00o = constraintLayout;
        this.OooO0O0 = pageContainerView;
        this.OooO0OO = frameLayout;
        this.OooO0Oo = imageView;
        this.OooO0o0 = progressBar;
        this.OooO0o = tabBarView;
        this.OooO0oO = immersiveTitleBarView;
        this.OooO0oo = view;
    }

    @NonNull
    public static OooO00o OooO00o(@NonNull LayoutInflater layoutInflater) {
        View viewA;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mini, (ViewGroup) null, false);
        int i11 = R.id.addScreenView;
        AddScreenView addScreenView = (AddScreenView) b.a(viewInflate, i11);
        if (addScreenView != null) {
            i11 = R.id.f23493fl;
            PageContainerView pageContainerView = (PageContainerView) b.a(viewInflate, i11);
            if (pageContainerView != null) {
                i11 = R.id.fl_fullscreen;
                FrameLayout frameLayout = (FrameLayout) b.a(viewInflate, i11);
                if (frameLayout != null) {
                    i11 = R.id.fl_loading_mask;
                    FrameLayout frameLayout2 = (FrameLayout) b.a(viewInflate, i11);
                    if (frameLayout2 != null) {
                        i11 = R.id.iv_fullscreen_back;
                        ImageView imageView = (ImageView) b.a(viewInflate, i11);
                        if (imageView != null) {
                            i11 = R.id.iv_loading;
                            ImageView imageView2 = (ImageView) b.a(viewInflate, i11);
                            if (imageView2 != null) {
                                i11 = R.id.f23494pb;
                                ProgressBar progressBar = (ProgressBar) b.a(viewInflate, i11);
                                if (progressBar != null) {
                                    i11 = R.id.sl_status;
                                    StatusLayout statusLayout = (StatusLayout) b.a(viewInflate, i11);
                                    if (statusLayout != null) {
                                        i11 = R.id.tabBar;
                                        TabBarView tabBarView = (TabBarView) b.a(viewInflate, i11);
                                        if (tabBarView != null) {
                                            i11 = R.id.titleBar;
                                            ImmersiveTitleBarView immersiveTitleBarView = (ImmersiveTitleBarView) b.a(viewInflate, i11);
                                            if (immersiveTitleBarView != null && (viewA = b.a(viewInflate, (i11 = R.id.view_mask))) != null) {
                                                return new OooO00o((ConstraintLayout) viewInflate, addScreenView, pageContainerView, frameLayout, frameLayout2, imageView, imageView2, progressBar, statusLayout, tabBarView, immersiveTitleBarView, viewA);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    @NonNull
    public View getRoot() {
        return this.OooO00o;
    }
}
