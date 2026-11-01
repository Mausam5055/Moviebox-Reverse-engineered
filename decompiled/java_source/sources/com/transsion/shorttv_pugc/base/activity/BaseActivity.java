package com.transsion.shorttv_pugc.base.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import st.g;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0010\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001a\u0010\u0015J\u000f\u0010\u001b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001b\u0010\u0015J\u000f\u0010\u001c\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001f\u0010\u0015J\u000f\u0010 \u001a\u00020\bH\u0014¢\u0006\u0004\b \u0010\u0005J\u0019\u0010#\u001a\u00020\u00132\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'¨\u0006+"}, d2 = {"Lcom/transsion/shorttv_pugc/base/activity/BaseActivity;", "Lg4/a;", "T", "Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;", "<init>", "()V", "Landroid/content/Context;", "newBase", "", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "setView", TmcConstants.NAVIGATION_ON_START, "initView", "setStatusBar", "", "setImmersionStatusBar", "()Z", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "onStop", "onDestroy", "onResume", "isAttach", "onPause", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "F", "downY", "e", "moveY", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseActivity<T extends g4.a> extends BaseMusicFloatActivity<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float downY;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float moveY;

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        if (newBase == null) {
            super.attachBaseContext(newBase);
        } else {
            com.transsion.shorttv_pugc.base.locale.d.b bVar = com.transsion.shorttv_pugc.base.locale.d.f53781f;
            super.attachBaseContext(bVar.i(newBase, bVar.e().h()));
        }
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseMusicFloatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        g gVarT;
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.downY = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawY = event.getRawY();
            this.moveY = rawY;
            if (Math.abs(rawY - this.downY) > 50.0f && (gVarT = T()) != null) {
                gVarT.b();
            }
        }
        return super.dispatchTouchEvent(event);
    }

    public void initView(Bundle savedInstanceState) {
    }

    public boolean isAttach() {
        return true;
    }

    public boolean isChangeStatusBar() {
        return false;
    }

    public boolean isStatusDark() {
        return true;
    }

    public boolean isTranslucent() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStatusBar();
        initView(savedInstanceState);
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        g gVarT;
        super.onResume();
        if (!isAttach() || (gVarT = T()) == null) {
            return;
        }
        gVarT.a(new WeakReference(this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        g gVarT;
        super.onStop();
        if (!isAttach() || (gVarT = T()) == null) {
            return;
        }
        gVarT.e(new WeakReference(this));
    }

    public boolean setImmersionStatusBar() {
        return true;
    }

    public void setStatusBar() {
        if (setImmersionStatusBar()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            if (isChangeStatusBar()) {
                immersionBarWith.statusBarColor(statusColor());
            }
            if (isTranslucent()) {
                immersionBarWith.statusBarAlpha(0.0f);
            } else {
                immersionBarWith.statusBarAlpha(1.0f);
            }
            if (isStatusDark()) {
                immersionBarWith.statusBarDarkFont(true);
            } else {
                immersionBarWith.statusBarDarkFont(false);
            }
            immersionBarWith.init();
        }
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity
    protected void setView() {
        setContentView(R$layout.short_tv_base_layout_with_no_network);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.llRootView);
        if (frameLayout != null) {
            frameLayout.addView(getMViewBinding().getRoot());
        }
    }

    public int statusColor() {
        return R$color.image_skeleton;
    }
}
