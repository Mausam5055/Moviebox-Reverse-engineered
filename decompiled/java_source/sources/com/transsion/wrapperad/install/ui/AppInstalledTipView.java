package com.transsion.wrapperad.install.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b!\u0010 J\r\u0010\"\u001a\u00020\u0012¢\u0006\u0004\b\"\u0010\u001dJ\r\u0010#\u001a\u00020\u0012¢\u0006\u0004\b#\u0010\u001dR\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010/¨\u00061"}, d2 = {"Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/wrapperad/install/ui/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/app/Activity;", "activity", "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "appChangeInfo", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/app/Activity;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V", "widthPX", "f", "(I)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onAppInstalledTipEnd", "()V", "onAppInstalledTipStart", "onActivityResume", "(Landroid/app/Activity;)V", "onActivityPause", "checkShow", "reset", "Ljava/lang/ref/WeakReference;", "a", "Ljava/lang/ref/WeakReference;", "mActivityRef", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "Landroid/view/View;", "c", "Landroid/view/View;", "tipView", "", "Z", "isShowingNotified", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppInstalledTipView extends FrameLayout implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private WeakReference mActivityRef;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private AppChangeInfo appChangeInfo;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private View tipView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isShowingNotified;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
    }

    public /* synthetic */ AppInstalledTipView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(AppInstalledTipView appInstalledTipView) {
        appInstalledTipView.setVisibility(8);
        ii.b.f65248a.e("AppInstallTip", true);
        return Unit.f67061a;
    }

    private final void d(final Activity activity, final AppChangeInfo appChangeInfo) {
        TextView textView;
        Object objM454constructorimpl;
        FrameLayout frameLayout;
        ShapeableImageView shapeableImageView;
        Object objM454constructorimpl2;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            com.transsion.wrapperad.install.a.f58174a.a(getClassTag() + " --> showView() --> activity == null || activity.isFinishing || activity.isDestroyed");
            return;
        }
        if (this.tipView == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.base_ui_app_installed_tip_view_layout, (ViewGroup) null);
            this.tipView = viewInflate;
            addView(viewInflate);
        }
        com.transsion.wrapperad.install.a.f58174a.a(getClassTag() + " --> showView() --> 展示");
        View view = this.tipView;
        if (view != null && (shapeableImageView = (ShapeableImageView) view.findViewById(R$id.ivIcon)) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(Glide.with(getContext()).load2(appChangeInfo.getIcon()).into(shapeableImageView));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl2);
        }
        View view2 = this.tipView;
        if (view2 != null && (frameLayout = (FrameLayout) view2.findViewById(R$id.flContainer)) != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.wrapperad.install.ui.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    AppInstalledTipView.e(this.f58206a, appChangeInfo, activity, view3);
                }
            });
        }
        View view3 = this.tipView;
        if (view3 == null || (textView = (TextView) view3.findViewById(R$id.tvTitle)) == null) {
            return;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            String str = appChangeInfo.getAppName() + " app installed.";
            yx.a aVar = yx.a.f79085a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            String appName = appChangeInfo.getAppName();
            if (appName == null) {
                appName = "";
            }
            textView.setText(aVar.b(context, appName, str));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th3));
        }
        Result.m453boximpl(objM454constructorimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(AppInstalledTipView appInstalledTipView, AppChangeInfo appChangeInfo, Activity activity, View view) {
        boolean z10;
        if (ti.e.f76254a.b(appInstalledTipView.getContext(), appChangeInfo.getPackageName())) {
            com.transsion.wrapperad.install.a.f58174a.a(appInstalledTipView.getClassTag() + " --> showView() --> 已安装应用被打开");
            z10 = true;
        } else {
            com.transsion.wrapperad.install.a.f58174a.a(appInstalledTipView.getClassTag() + " --> showView() --> 打开应用失败");
            z10 = false;
        }
        HashMap map = new HashMap();
        map.put("dialog_name", "ad_active");
        map.put("activity_name", activity.getClass().getSimpleName());
        map.put("package_name", appChangeInfo.getPackageName());
        map.put("is_success", String.valueOf(z10));
        hj.i iVar = hj.i.f64505a;
        String simpleName = activity.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        iVar.s(simpleName, "click", map);
        d.f58199a.h(true);
        ii.b.f65248a.e("AppInstallTip", true);
    }

    private final void f(int widthPX) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = widthPX;
        setLayoutParams(layoutParams);
    }

    private final String getClassTag() {
        String simpleName = AppInstalledTipView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void checkShow() {
        Activity activity;
        setVisibility(8);
        ii.b bVar = ii.b.f65248a;
        if (bVar.a("AppInstallTip")) {
            AppChangeInfo appChangeInfoJ = d.f58199a.j();
            WeakReference weakReference = this.mActivityRef;
            if (weakReference != null && (activity = (Activity) weakReference.get()) != null && !Intrinsics.c(appChangeInfoJ, this.appChangeInfo) && appChangeInfoJ != null) {
                HashMap map = new HashMap();
                map.put("dialog_name", "ad_active");
                map.put("activity_name", activity.getClass().getSimpleName());
                map.put("module_name", PushConstants.PUSH_SERVICE_TYPE_SHOW);
                map.put("package_name", appChangeInfoJ.getPackageName());
                hj.i iVar = hj.i.f64505a;
                String simpleName = activity.getClass().getSimpleName();
                Intrinsics.g(simpleName, "getSimpleName(...)");
                iVar.s(simpleName, "dialog_show", map);
            }
            this.appChangeInfo = appChangeInfoJ;
            if (appChangeInfoJ == null) {
                if (this.isShowingNotified) {
                    this.isShowingNotified = false;
                }
                ii.b.d(bVar, "AppInstallTip", false, 2, null);
                setVisibility(8);
                return;
            }
            if (!bVar.a("AppInstallTip")) {
                setVisibility(8);
                return;
            }
            AppChangeInfo appChangeInfo = this.appChangeInfo;
            if (appChangeInfo != null) {
                setVisibility(0);
                this.isShowingNotified = true;
                bVar.f("AppInstallTip", new Function0() { // from class: com.transsion.wrapperad.install.ui.e
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AppInstalledTipView.c(this.f58205a);
                    }
                });
                WeakReference weakReference2 = this.mActivityRef;
                d(weakReference2 != null ? (Activity) weakReference2.get() : null, appChangeInfo);
            }
        }
    }

    public final void onActivityPause(Activity activity) {
        Intrinsics.h(activity, "activity");
        com.transsion.wrapperad.install.a.f58174a.a(getClassTag() + " --> onActivityPause " + activity);
        this.mActivityRef = null;
        reset();
    }

    public final void onActivityResume(Activity activity) {
        com.transsion.wrapperad.install.a.f58174a.a(getClassTag() + " --> onActivityResume " + activity);
        this.mActivityRef = activity != null ? new WeakReference(activity) : null;
        d.f58199a.l(this);
        checkShow();
    }

    @Override // com.transsion.wrapperad.install.ui.a
    public void onAppInstalledTipEnd() {
        Activity activity;
        String packageName;
        WeakReference weakReference = this.mActivityRef;
        if (weakReference != null && (activity = (Activity) weakReference.get()) != null && this.appChangeInfo != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "ad_active");
            map.put("activity_name", activity.getClass().getSimpleName());
            AppChangeInfo appChangeInfo = this.appChangeInfo;
            if (appChangeInfo == null || (packageName = appChangeInfo.getPackageName()) == null) {
                packageName = " appChangeInfo == null";
            }
            map.put("package_name", packageName);
            map.put("module_name", "auto_close");
            hj.i iVar = hj.i.f64505a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            iVar.s(simpleName, "dialog_show", map);
        }
        reset();
        ii.b.f65248a.e("AppInstallTip", true);
    }

    @Override // com.transsion.wrapperad.install.ui.a
    public void onAppInstalledTipStart() {
        checkShow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i11 = newConfig.orientation;
        if (i11 == 1) {
            lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onConfigurationChanged() --> 竖屏 模式", false, 2, null);
            f(y.e() - (a0.a(12.0f) * 2));
            return;
        }
        if (i11 != 2) {
            return;
        }
        lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onConfigurationChanged() --> 横屏 模式", false, 2, null);
        f(a0.a(336.0f));
    }

    public final void reset() {
        d.f58199a.d();
    }
}
