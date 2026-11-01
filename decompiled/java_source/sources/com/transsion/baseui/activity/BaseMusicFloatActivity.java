package com.transsion.baseui.activity;

import android.app.Activity;
import android.view.MotionEvent;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.ImmersionBar;
import com.transsion.baseui.music.MusicFloatManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\tJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0006J\r\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0006J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\fJ\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/transsion/baseui/activity/BaseMusicFloatActivity;", "Lg4/a;", "T", "Lcom/transsion/baseui/activity/BaseCommonActivity;", "", "<init>", "()V", "", "isMusicFloatingAttach", "()Z", "", "getMarginBottom", "()I", "getMarginLeft", "getMarginRight", "getMarginTop", "isShowedMusicFloatView", "", "onResume", "showMusicFloating", "onCloseMusicFloating", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "getTipViewBottomMargin", "isShowMemberPushViewTip", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseMusicFloatActivity<T extends g4.a> extends BaseCommonActivity<T> {
    public static final int $stable = 8;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev2) {
        Integer numValueOf = ev2 != null ? Integer.valueOf(ev2.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            MusicFloatManager.f43454h.b().i(this, ev2);
        }
        return super.dispatchTouchEvent(ev2);
    }

    public int getMarginBottom() {
        return 0;
    }

    public int getMarginLeft() {
        return 0;
    }

    public int getMarginRight() {
        return 0;
    }

    public int getMarginTop() {
        return 0;
    }

    public int getTipViewBottomMargin() {
        return ImmersionBar.hasNavigationBar((Activity) this) ? a0.a(12.0f) + ImmersionBar.getNavigationBarHeight((Activity) this) : a0.a(12.0f);
    }

    public boolean isMusicFloatingAttach() {
        return true;
    }

    public boolean isShowMemberPushViewTip() {
        return false;
    }

    public boolean isShowedMusicFloatView() {
        return MusicFloatManager.f43454h.b().x(this);
    }

    public void onCloseMusicFloating() {
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (isMusicFloatingAttach()) {
            MusicFloatManager.f43454h.b().l(this, getMarginBottom());
        }
    }

    public final void showMusicFloating() {
        MusicFloatManager.f43454h.b().l(this, getMarginBottom());
    }
}
