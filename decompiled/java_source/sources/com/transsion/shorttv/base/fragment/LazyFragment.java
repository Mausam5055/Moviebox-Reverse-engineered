package com.transsion.shorttv.base.fragment;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Metadata;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0005J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0006H&¢\u0006\u0004\b\u0010\u0010\u0005R\u0016\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0018\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcom/transsion/shorttv/base/fragment/LazyFragment;", "Lg4/a;", "T", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "<init>", "()V", "", "f0", "onResume", "onDestroyView", "", "isVisibleToUser", "setUserVisibleHint", "(Z)V", "hidden", "onHiddenChanged", "lazyLoadData", "i", "Z", "isLoaded", "j", CampaignEx.JSON_KEY_AD_K, "isCallResume", "l", "isCallUserVisibleHint", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class LazyFragment<T extends g4.a> extends PageStatusFragment<T> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isLoaded;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isVisibleToUser;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isCallResume;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isCallUserVisibleHint;

    private final void f0() {
        if (!this.isLoaded && this.isVisibleToUser && this.isCallResume) {
            this.isLoaded = true;
            if (m.f70474a.e()) {
                lazyLoadData();
            }
            String simpleName = getClass().getSimpleName();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("TraditionLazyFragment --> ");
            sb2.append(simpleName);
            sb2.append(" lazyInit:!!!!!!!");
        }
    }

    public abstract void lazyLoadData();

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.isLoaded = false;
        this.isVisibleToUser = false;
        this.isCallUserVisibleHint = false;
        this.isCallResume = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        this.isVisibleToUser = !hidden;
        f0();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.isCallResume = true;
        if (!this.isCallUserVisibleHint) {
            this.isVisibleToUser = true ^ isHidden();
        }
        f0();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        this.isVisibleToUser = isVisibleToUser;
        this.isCallUserVisibleHint = true;
        f0();
    }
}
