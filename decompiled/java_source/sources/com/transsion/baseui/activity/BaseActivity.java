package com.transsion.baseui.activity;

import ak.x;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.gyf.immersionbar.ImmersionBar;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.transsion.room.api.IFloatingApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0011\u0010\u0006J\u0019\u0010\u0012\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001b\u0010\u0016J\u000f\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001c\u0010\u0016J\u000f\u0010\u001d\u001a\u00020\tH\u0014¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b \u0010\u0016J!\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u00142\b\b\u0002\u0010\"\u001a\u00020\u0014H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u0006J\u001d\u0010)\u001a\u00020(2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u0014¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\u0006J\u0017\u0010-\u001a\u00020\t2\b\u0010,\u001a\u0004\u0018\u00010(¢\u0006\u0004\b-\u0010.J\u0019\u00101\u001a\u00020\u00142\b\u00100\u001a\u0004\u0018\u00010/H\u0016¢\u0006\u0004\b1\u00102J'\u00108\u001a\u00020\t2\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u000205H\u0016¢\u0006\u0004\b8\u00109J4\u0010?\u001a\u00020\t2#\u0010>\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(=\u0012\u0004\u0012\u00020\t\u0018\u00010:H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0014H\u0016¢\u0006\u0004\bA\u0010\u0016J\u000f\u0010B\u001a\u00020\tH\u0016¢\u0006\u0004\bB\u0010\u0006R\u001d\u0010H\u001a\u0004\u0018\u00010C8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u0016\u0010I\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010K\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010J¨\u0006L"}, d2 = {"Lcom/transsion/baseui/activity/BaseActivity;", "Lg4/a;", "T", "Lcom/transsion/baseui/activity/BaseMusicFloatActivity;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "Landroid/content/Context;", "newBase", "", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "setView", TmcConstants.NAVIGATION_ON_START, "initView", "setStatusBar", "", "setImmersionStatusBar", "()Z", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "onStop", "onDestroy", "onResume", "isAttach", "isWhiteFont", "isHomeFragment", "changeStatusFontColor", "(ZZ)V", "onPause", "context", "showNoNetwork", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;Z)Landroid/view/View;", "retryLoadData", "bottomView", "fitAndroidV", "(Landroid/view/View;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "", EventConstants.KEY_ACTION, "", "distance", NotificationCompat.CATEGORY_PROGRESS, "onAction", "(Ljava/lang/String;FF)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "state", "callback", "setStateCallback", "(Lkotlin/jvm/functions/Function1;)V", "hasAd", "loadTwoLevelAd", "Lhj/b;", "logViewConfig$delegate", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "downY", "F", "moveY", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseActivity<T extends g4.a> extends BaseMusicFloatActivity<T> implements com.transsion.baselib.report.g {
    public static final int $stable = 8;
    private float downY;

    /* JADX INFO: renamed from: logViewConfig$delegate, reason: from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0() { // from class: com.transsion.baseui.activity.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BaseActivity.d0(this.f43399a);
        }
    });
    private float moveY;

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat b0(View view, BaseActivity baseActivity, View view2, WindowInsetsCompat insets) {
        Intrinsics.h(insets, "insets");
        int iB = insets.isVisible(WindowInsetsCompat.Type.navigationBars()) ? insets.getInsets(WindowInsetsCompat.Type.navigationBars()).f79128d : dk.a.b(8);
        if (iB > 0) {
            if (view != null) {
                view.getLayoutParams().height = iB;
                view.setVisibility(0);
            } else {
                if (view2 != null) {
                    view2.setPadding(0, 0, 0, iB);
                }
                if (view2 != null) {
                    view2.setBackgroundColor(androidx.core.content.b.getColor(baseActivity, R$color.bg_01));
                }
            }
        }
        WindowInsetsController windowInsetsController = baseActivity.getWindow().getDecorView().getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.setSystemBarsAppearance(0, 16);
        }
        ViewCompat.setOnApplyWindowInsetsListener(baseActivity.getWindow().getDecorView(), null);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(BaseActivity baseActivity, DefaultView defaultView, View view) {
        baseActivity.retryLoadData();
        defaultView.setVisibility(8);
    }

    public static /* synthetic */ void changeStatusFontColor$default(BaseActivity baseActivity, boolean z10, boolean z11, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: changeStatusFontColor");
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        baseActivity.changeStatusFontColor(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b d0(BaseActivity baseActivity) {
        return baseActivity.newLogViewConfig();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        if (newBase == null) {
            super.attachBaseContext(newBase);
        } else {
            com.transsion.baselib.locale.d.b bVar = com.transsion.baselib.locale.d.f43297f;
            super.attachBaseContext(bVar.k(newBase, bVar.e().j()));
        }
    }

    public void changeStatusFontColor(boolean isWhiteFont, boolean isHomeFragment) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (!isWhiteFont && !x.f658a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10);
        immersionBarWith.init();
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        IFloatingApi iFloatingApi;
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.downY = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawY = event.getRawY();
            this.moveY = rawY;
            if (Math.abs(rawY - this.downY) > 50.0f && (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) != null) {
                iFloatingApi.b();
            }
        }
        return super.dispatchTouchEvent(event);
    }

    public final void fitAndroidV(final View bottomView) {
        if (Build.VERSION.SDK_INT >= 35) {
            ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), new OnApplyWindowInsetsListener() { // from class: com.transsion.baseui.activity.c
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return BaseActivity.b0(bottomView, this, view, windowInsetsCompat);
                }
            });
        }
    }

    public final View getEmptyView(Context context, boolean showNoNetwork) {
        Intrinsics.h(context, "context");
        final DefaultView defaultView = new DefaultView(context);
        defaultView.setDefaultImageViewVisibility(0);
        if (showNoNetwork) {
            defaultView.setDefaultImage(R$mipmap.ic_no_network);
            String string = context.getString(R$string.no_network_toast);
            Intrinsics.g(string, "getString(...)");
            defaultView.setDescText(string);
        } else {
            defaultView.setDefaultImage(R$mipmap.ic_no_content);
            String string2 = context.getString(R$string.no_content);
            Intrinsics.g(string2, "getString(...)");
            defaultView.setDescText(string2);
        }
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string3 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string3, "getString(...)");
        defaultView.setBtnText(string3);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseActivity.c0(this.f43397a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    @Override // com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return (hj.b) this.logViewConfig.getValue();
    }

    public boolean hasAd() {
        return false;
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

    public void loadTwoLevelAd() {
    }

    public hj.b newLogViewConfig() {
        return com.transsion.baselib.report.g.a.a(this);
    }

    public void onAction(String action, float distance, float progress) {
        Intrinsics.h(action, "action");
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStatusBar();
        initView(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.transsion.baselib.report.g.a.b(this);
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        IFloatingApi iFloatingApi;
        super.onResume();
        com.transsion.baselib.report.g.a.c(this);
        if (!isAttach() || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.g(new WeakReference(this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
        if (iFloatingApi != null) {
            iFloatingApi.i(new WeakReference(this));
        }
    }

    public void retryLoadData() {
    }

    public boolean setImmersionStatusBar() {
        return true;
    }

    public void setStateCallback(Function1<? super String, Unit> callback) {
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
            }
            immersionBarWith.init();
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    protected void setView() {
        setContentView(R$layout.base_layout_with_no_network);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.llRootView);
        if (frameLayout != null) {
            frameLayout.addView(getMViewBinding().getRoot());
        }
    }

    public int statusColor() {
        return R$color.bg_01;
    }
}
