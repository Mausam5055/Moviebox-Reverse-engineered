package com.cloud.tmc.miniapp.dialog;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.core.widget.NestedScrollView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.athena.Constants;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.MccMncUtils;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.integration.utils.ext.SpannableExtKt;
import com.cloud.tmc.integration.utils.ext.TextViewExtKt;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.bridge.PrivacyBridge;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.ui.WebViewActivity;
import com.cloud.tmc.miniutils.util.BarUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.google.gson.JsonObject;
import com.transsion.gslb.Utils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class oo0o0Oo extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<oo0o0Oo> {
    public final int OooO;
    public final App OooO00o;
    public final BridgeCallback OooO0O0;
    public String OooO0OO;
    public boolean OooO0Oo;
    public boolean OooO0o;
    public boolean OooO0o0;
    public final String OooO0oO;
    public final int OooO0oo;
    public final String OooOO0;
    public final String OooOO0O;
    public final Lazy OooOO0o;
    public final Lazy OooOOO;
    public final Lazy OooOOO0;
    public final Lazy OooOOOO;
    public final Lazy OooOOOo;
    public final Lazy OooOOo;
    public final Lazy OooOOo0;
    public final Lazy OooOOoo;
    public final Lazy OooOo;
    public final Lazy OooOo0;
    public final Lazy OooOo00;
    public final Lazy OooOo0O;
    public final Lazy OooOo0o;
    public final Lazy OooOoO;
    public final Lazy OooOoO0;
    public final Lazy OooOoOO;
    public final Lazy OooOoo;
    public final Lazy OooOoo0;
    public final Lazy OooOooO;
    public final Lazy OooOooo;
    public boolean Oooo;
    public final Lazy Oooo0;
    public final Lazy Oooo000;
    public final Lazy Oooo00O;
    public final Lazy Oooo00o;
    public final Lazy Oooo0O0;
    public final Lazy Oooo0OO;
    public final Lazy Oooo0o;
    public final Lazy Oooo0o0;
    public final Lazy Oooo0oO;
    public final Lazy Oooo0oo;
    public int OoooO0;
    public boolean OoooO00;

    public static final class OooO extends Lambda implements Function0<Group> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) oo0o0Oo.this.findViewById(R.id.group_addhome_btn);
        }
    }

    public static final class OooO00o implements com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000 {
        public OooO00o() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
        public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            oo0o0Oo oo0o0oo = oo0o0Oo.this;
            if (Intrinsics.c(oo0o0oo.OooO0OO, oo0o0oo.OooOO0)) {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                App app = oo0o0Oo.this.OooO00o;
                String appId = app != null ? app.getAppId() : null;
                Bundle bundle = new Bundle();
                App app2 = oo0o0Oo.this.OooO00o;
                bundle.putString("miniappid", app2 != null ? app2.getAppId() : null);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(appId, "miniapp_agreemix_popup_ex", bundle);
                return;
            }
            oo0o0Oo oo0o0oo2 = oo0o0Oo.this;
            if (Intrinsics.c(oo0o0oo2.OooO0OO, oo0o0oo2.OooOO0O)) {
                PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                App app3 = oo0o0Oo.this.OooO00o;
                String appId2 = app3 != null ? app3.getAppId() : null;
                Bundle bundle2 = new Bundle();
                App app4 = oo0o0Oo.this.OooO00o;
                bundle2.putString("miniappid", app4 != null ? app4.getAppId() : null);
                Unit unit2 = Unit.f67061a;
                performanceAnalyseProxy2.recordForCommon(appId2, "miniapp_agree_popup_ex", bundle2);
                return;
            }
            if (oo0o0Oo.this.OooO0Oo) {
                PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                App app5 = oo0o0Oo.this.OooO00o;
                performanceAnalyseProxy3.recordForCommon(app5 != null ? app5.getAppId() : null, "privacy_ex", new Bundle());
            }
            oo0o0Oo oo0o0oo3 = oo0o0Oo.this;
            if (oo0o0oo3.OooO0o0) {
                if (oo0o0oo3.OooO0o) {
                    PerformanceAnalyseProxy performanceAnalyseProxy4 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    App app6 = oo0o0Oo.this.OooO00o;
                    String appId3 = app6 != null ? app6.getAppId() : null;
                    Bundle bundle3 = new Bundle();
                    App app7 = oo0o0Oo.this.OooO00o;
                    bundle3.putString("miniappid", app7 != null ? app7.getAppId() : null);
                    bundle3.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
                    Unit unit3 = Unit.f67061a;
                    performanceAnalyseProxy4.recordForCommon(appId3, "appstart_add_ex", bundle3);
                    return;
                }
                ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
                App app8 = oo0o0Oo.this.OooO00o;
                String appId4 = app8 != null ? app8.getAppId() : null;
                if (appId4 == null) {
                    appId4 = "";
                }
                Bundle bundle4 = new Bundle();
                App app9 = oo0o0Oo.this.OooO00o;
                bundle4.putString("miniappid", app9 != null ? app9.getAppId() : null);
                bundle4.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "1");
                Unit unit4 = Unit.f67061a;
                reportProxy.forceAthenaReport(appId4, "appstart_add_ex", Constants.MINI_APPID, bundle4);
            }
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0 {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0
        public void OooO00o(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            AppContext appContext;
            try {
                App app = oo0o0Oo.this.OooO00o;
                Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
                MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
                if (miniAppActivity != null) {
                    miniAppActivity.capsuleSetOnRightClick(true);
                }
            } catch (Throwable th2) {
                TmcLogger.e(oo0o0Oo.this.OooO0oO, th2);
            }
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<ConstraintLayout> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ConstraintLayout) oo0o0Oo.this.findViewById(R.id.tv_privacy_agreement_container);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<ConstraintLayout> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (ConstraintLayout) viewOooO00o.findViewById(R.id.cl_two_in_one_container);
            }
            return null;
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<Group> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) oo0o0Oo.this.findViewById(R.id.group_privacy_btn);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<Group> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) oo0o0Oo.this.findViewById(R.id.group_privacy_tv);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<ImageView> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (ImageView) viewOooO00o.findViewById(R.id.iv_first_privacy_checkbox);
            }
            return null;
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<Group> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) oo0o0Oo.this.findViewById(R.id.group_add_home_layout);
        }
    }

    public static final class OooOOOO extends Lambda implements Function0<ImageView> {
        public OooOOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) oo0o0Oo.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooOo extends Lambda implements Function0<NestedScrollView> {
        public OooOo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (NestedScrollView) viewOooO00o.findViewById(R.id.ns_two_in_one_layout);
            }
            return null;
        }
    }

    public static final class OooOo00 extends Lambda implements Function0<ImageView> {
        public OooOo00() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (ImageView) viewOooO00o.findViewById(R.id.iv_second_privacy_checkbox);
            }
            return null;
        }
    }

    public static final class Oooo0 extends Lambda implements Function0<TextView> {
        public Oooo0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_agree);
        }
    }

    public static final class Oooo000 extends Lambda implements Function0<TextView> {
        public Oooo000() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_addhome_exit);
        }
    }

    public static final class o0000 extends Lambda implements Function0<View> {
        public o0000() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            ViewStub viewStub = (ViewStub) oo0o0Oo.this.findViewById(R.id.view_stub_two_in_one);
            if (viewStub != null) {
                return viewStub.inflate();
            }
            return null;
        }
    }

    public static final class o00000 extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ oo0o0Oo OooO0O0;
        public final /* synthetic */ boolean OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o00000(String str, oo0o0Oo oo0o0oo, boolean z10) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = oo0o0oo;
            this.OooO0OO = z10;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            String strAppendCommonParamUrl = TextUtils.isEmpty(this.OooO00o) ? UrlKt.AGREEMENT_URL : this.OooO00o;
            WebViewActivity.Companion companion = WebViewActivity.Companion;
            Context context = this.OooO0O0.getContext();
            if (!this.OooO0OO) {
                strAppendCommonParamUrl = UrlKt.appendCommonParamUrl(strAppendCommonParamUrl, this.OooO0O0.getContext());
            }
            WebViewActivity.Companion.launch$default(companion, context, strAppendCommonParamUrl, null, null, 12, null);
            return Unit.f67061a;
        }
    }

    public static final class o000000 extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ oo0o0Oo OooO0O0;
        public final /* synthetic */ boolean OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o000000(String str, oo0o0Oo oo0o0oo, boolean z10) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = oo0o0oo;
            this.OooO0OO = z10;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            String strAppendCommonParamUrl = TextUtils.isEmpty(this.OooO00o) ? UrlKt.AGREEMENT_URL : this.OooO00o;
            WebViewActivity.Companion companion = WebViewActivity.Companion;
            Context context = this.OooO0O0.getContext();
            if (!this.OooO0OO) {
                strAppendCommonParamUrl = UrlKt.appendCommonParamUrl(strAppendCommonParamUrl, this.OooO0O0.getContext());
            }
            WebViewActivity.Companion.launch$default(companion, context, strAppendCommonParamUrl, null, null, 12, null);
            return Unit.f67061a;
        }
    }

    public static final class o000000O extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ oo0o0Oo OooO0O0;
        public final /* synthetic */ boolean OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o000000O(String str, oo0o0Oo oo0o0oo, boolean z10) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = oo0o0oo;
            this.OooO0OO = z10;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            String strAppendCommonParamUrl = TextUtils.isEmpty(this.OooO00o) ? UrlKt.PRIVACY_URL : this.OooO00o;
            WebViewActivity.Companion companion = WebViewActivity.Companion;
            Context context = this.OooO0O0.getContext();
            if (!this.OooO0OO) {
                strAppendCommonParamUrl = UrlKt.appendCommonParamUrl(strAppendCommonParamUrl, this.OooO0O0.getContext());
            }
            WebViewActivity.Companion.launch$default(companion, context, strAppendCommonParamUrl, null, null, 12, null);
            return Unit.f67061a;
        }
    }

    public static final class o00000O extends Lambda implements Function0<View> {
        public o00000O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return viewOooO00o.findViewById(R.id.view_first_click);
            }
            return null;
        }
    }

    public static final class o00000O0 extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ oo0o0Oo OooO0O0;
        public final /* synthetic */ boolean OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o00000O0(String str, oo0o0Oo oo0o0oo, boolean z10) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = oo0o0oo;
            this.OooO0OO = z10;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            String strAppendCommonParamUrl = TextUtils.isEmpty(this.OooO00o) ? UrlKt.PRIVACY_URL : this.OooO00o;
            WebViewActivity.Companion companion = WebViewActivity.Companion;
            Context context = this.OooO0O0.getContext();
            if (!this.OooO0OO) {
                strAppendCommonParamUrl = UrlKt.appendCommonParamUrl(strAppendCommonParamUrl, this.OooO0O0.getContext());
            }
            WebViewActivity.Companion.launch$default(companion, context, strAppendCommonParamUrl, null, null, 12, null);
            return Unit.f67061a;
        }
    }

    public static final class o00000OO extends Lambda implements Function0<View> {
        public o00000OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return oo0o0Oo.this.findViewById(R.id.view_navigetion_bar);
        }
    }

    public static final class o0000Ooo extends Lambda implements Function0<View> {
        public o0000Ooo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return viewOooO00o.findViewById(R.id.view_second_click);
            }
            return null;
        }
    }

    public static final class o000OOo extends Lambda implements Function0<TextView> {
        public o000OOo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_two_in_one_title);
            }
            return null;
        }
    }

    public static final class o000oOoO extends Lambda implements Function0<TextView> {
        public o000oOoO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_app_name);
        }
    }

    public static final class o00O0O extends Lambda implements Function0<TextView> {
        public o00O0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_first_privacy_title);
            }
            return null;
        }
    }

    public static final class o00Oo0 extends Lambda implements Function0<TextView> {
        public o00Oo0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_privacy_agree);
        }
    }

    public static final class o00Ooo extends Lambda implements Function0<TextView> {
        public o00Ooo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_privacy_agreement_please_read);
        }
    }

    public static final class o00oO0o extends Lambda implements Function0<TextView> {
        public o00oO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_privacy_cancel);
        }
    }

    public static final class o0O0O00 extends Lambda implements Function0<TextView> {
        public o0O0O00() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_two_in_one_gdpr_content);
            }
            return null;
        }
    }

    public static final class o0OO00O extends Lambda implements Function0<TextView> {
        public o0OO00O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_two_in_one_agree);
            }
            return null;
        }
    }

    public static final class o0OOO0o extends Lambda implements Function0<TextView> {
        public o0OOO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_second_privacy_content);
            }
            return null;
        }
    }

    public static final class o0Oo0oo extends Lambda implements Function0<TextView> {
        public o0Oo0oo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_second_privacy_title);
            }
            return null;
        }
    }

    public static final class o0OoOo0 extends Lambda implements Function0<TextView> {
        public o0OoOo0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_first_privacy_content);
            }
            return null;
        }
    }

    public static final class o0ooOOo extends Lambda implements Function0<TextView> {
        public o0ooOOo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_privacy_gdpr_content);
        }
    }

    public static final class oo000o extends Lambda implements Function0<TextView> {
        public oo000o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) oo0o0Oo.this.findViewById(R.id.tv_privacy_agreement_title);
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.dialog.oo0o0Oo$oo0o0Oo, reason: collision with other inner class name */
    public static final class C0328oo0o0Oo extends Lambda implements Function0<TextView> {
        public C0328oo0o0Oo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            View viewOooO00o = oo0o0Oo.OooO00o(oo0o0Oo.this);
            if (viewOooO00o != null) {
                return (TextView) viewOooO00o.findViewById(R.id.tv_two_in_one_cancel);
            }
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oo0o0Oo(Context context, App app, BridgeCallback bridgeCallback) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = app;
        this.OooO0O0 = bridgeCallback;
        this.OooO0OO = "";
        this.OooO0oO = "PrivacyAgreementDialog";
        this.OooO0oo = 1;
        this.OooO = 2;
        this.OooOO0 = "1";
        this.OooOO0O = "2";
        this.OooOO0o = LazyKt.b(new OooO0OO());
        this.OooOOO0 = LazyKt.b(new oo000o());
        this.OooOOO = LazyKt.b(new o00Ooo());
        this.OooOOOO = LazyKt.b(new OooOOO0());
        this.OooOOOo = LazyKt.b(new OooOOOO());
        this.OooOOo0 = LazyKt.b(new Oooo0());
        this.OooOOo = LazyKt.b(new Oooo000());
        this.OooOOoo = LazyKt.b(new o000oOoO());
        this.OooOo00 = LazyKt.b(new OooOO0O());
        this.OooOo0 = LazyKt.b(new OooOO0());
        this.OooOo0O = LazyKt.b(new o0ooOOo());
        this.OooOo0o = LazyKt.b(new o00Oo0());
        this.OooOo = LazyKt.b(new o00oO0o());
        this.OooOoO0 = LazyKt.b(new o00000OO());
        this.OooOoO = LazyKt.b(new OooO());
        this.OooOoOO = LazyKt.b(new o0000());
        this.OooOoo0 = LazyKt.b(new OooO0o());
        this.OooOoo = LazyKt.b(new OooOo());
        this.OooOooO = LazyKt.b(new o000OOo());
        this.OooOooo = LazyKt.b(new o0OO00O());
        this.Oooo000 = LazyKt.b(new C0328oo0o0Oo());
        this.Oooo00O = LazyKt.b(new OooOOO());
        this.Oooo00o = LazyKt.b(new o00O0O());
        this.Oooo0 = LazyKt.b(new o0OoOo0());
        this.Oooo0O0 = LazyKt.b(new OooOo00());
        this.Oooo0OO = LazyKt.b(new o0Oo0oo());
        this.Oooo0o0 = LazyKt.b(new o0OOO0o());
        this.Oooo0o = LazyKt.b(new o0O0O00());
        this.Oooo0oO = LazyKt.b(new o00000O());
        this.Oooo0oo = LazyKt.b(new o0000Ooo());
        try {
            setContentView(R.layout.mini_layout_privacy_agreement_dialog);
            setBackgroundDimEnabled(true);
            setCancelable(true);
            TextView textViewOooO0o0 = OooO0o0();
            if (textViewOooO0o0 != null) {
                textViewOooO0o0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.x
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        oo0o0Oo.OooO00o(this.f23570a, view);
                    }
                });
            }
            TextView textViewOooO0oO = OooO0oO();
            if (textViewOooO0oO != null) {
                textViewOooO0oO.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.y
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        oo0o0Oo.OooO0O0(this.f23571a, view);
                    }
                });
            }
            TextView textViewOooO0Oo = OooO0Oo();
            if (textViewOooO0Oo != null) {
                textViewOooO0Oo.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.z
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        oo0o0Oo.OooO0OO(this.f23572a, view);
                    }
                });
            }
            TextView textViewOooO0OO = OooO0OO();
            if (textViewOooO0OO != null) {
                textViewOooO0OO.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.a0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        oo0o0Oo.OooO0Oo(this.f23545a, view);
                    }
                });
            }
            addOnShowListener(new OooO00o());
            addOnCancelListener(new OooO0O0());
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0oO, "updateDialogLayout", th2);
        }
    }

    public static final View OooO00o(oo0o0Oo oo0o0oo) {
        return (View) oo0o0oo.OooOoOO.getValue();
    }

    public static final void OooO00o(oo0o0Oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.OooO00o(this$0.OooO00o, this$0.OooO0O0, this$0.OooO);
    }

    public static final void OooO00o(Ref.BooleanRef autoSelect, oo0o0Oo this$0) {
        Intrinsics.h(autoSelect, "$autoSelect");
        Intrinsics.h(this$0, "this$0");
        if (autoSelect.element) {
            this$0.Oooo = true;
            this$0.OoooO00 = true;
            ImageView imageViewOooO00o = this$0.OooO00o();
            if (imageViewOooO00o != null) {
                imageViewOooO00o.setImageResource(R.drawable.mini_sel_privacy_checkbox_checked);
            }
            ImageView imageViewOooO0O0 = this$0.OooO0O0();
            if (imageViewOooO0O0 != null) {
                imageViewOooO0O0.setImageResource(R.drawable.mini_sel_privacy_checkbox_checked);
            }
        }
        this$0.OooOO0();
    }

    public static final void OooO0O0(final oo0o0Oo this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            String mcc = MccMncUtils.getMcc(this$0.getContext());
            TmcLogger.d(this$0.OooO0oO, "initAutoCheckStatus mcc:" + mcc);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            if (mcc.length() == 0) {
                booleanRef.element = true;
            } else {
                if (!StringsKt.c0(MiniAppConfigHelper.DEFAULT_TWO_IN_ONE_AUTO_SELECT, mcc, false, 2, null)) {
                    booleanRef.element = true;
                }
                MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
                String configTargetStr = miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRIVACY_AUTO_BLACK_COUNTRY, "");
                if (configTargetStr.length() <= 0 || !StringsKt.c0(configTargetStr, mcc, false, 2, null)) {
                    String configTargetStr2 = miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_PRIVACY_AUTO_WHITE_COUNTRY, "");
                    if (configTargetStr2.length() > 0 && StringsKt.c0(configTargetStr2, mcc, false, 2, null)) {
                        booleanRef.element = true;
                    }
                } else {
                    booleanRef.element = false;
                }
            }
            ExecutorUtils.execute(ExecutorType.UI, new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.v
                @Override // java.lang.Runnable
                public final void run() {
                    oo0o0Oo.OooO00o(booleanRef, this$0);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static final void OooO0O0(oo0o0Oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            BridgeCallback bridgeCallback = this$0.OooO0O0;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, "cancel");
                jsonObject.addProperty("clickBtn", "2");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            BridgeCallback bridgeCallback2 = this$0.OooO0O0;
            if (bridgeCallback2 != null) {
                bridgeCallback2.close();
            }
            try {
                if (Intrinsics.c(this$0.OooO0OO, this$0.OooOO0O)) {
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    App app = this$0.OooO00o;
                    String appId = app != null ? app.getAppId() : null;
                    Bundle bundle = new Bundle();
                    App app2 = this$0.OooO00o;
                    bundle.putString("miniappid", app2 != null ? app2.getAppId() : null);
                    bundle.putString("content", "0");
                    Unit unit = Unit.f67061a;
                    performanceAnalyseProxy.recordForCommon(appId, "miniapp_agree_popup_click", bundle);
                }
            } catch (Throwable unused) {
            }
            this$0.dismiss();
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO0oO, "tvPrivacyCancel error", th2);
        }
    }

    public static final void OooO0OO(oo0o0Oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.OooO00o(this$0.OooO00o, this$0.OooO0O0, this$0.OooO0oo);
    }

    public static final void OooO0Oo(oo0o0Oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            BridgeCallback bridgeCallback = this$0.OooO0O0;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, "cancel");
                jsonObject.addProperty("clickBtn", "4");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            BridgeCallback bridgeCallback2 = this$0.OooO0O0;
            if (bridgeCallback2 != null) {
                bridgeCallback2.close();
            }
            this$0.dismiss();
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO0oO, "tvPrivacyCancel error", th2);
        }
    }

    public static final void OooO0o(oo0o0Oo this_apply, View view) {
        Intrinsics.h(this_apply, "$this_apply");
        if (this_apply.OoooO00) {
            ImageView imageViewOooO0O0 = this_apply.OooO0O0();
            if (imageViewOooO0O0 != null) {
                imageViewOooO0O0.setImageResource(R.drawable.mini_sel_privacy_checkbox_unchecked);
            }
        } else {
            ImageView imageViewOooO0O1 = this_apply.OooO0O0();
            if (imageViewOooO0O1 != null) {
                imageViewOooO0O1.setImageResource(R.drawable.mini_sel_privacy_checkbox_checked);
            }
        }
        this_apply.OoooO00 = !this_apply.OoooO00;
        this_apply.OooOO0();
    }

    public static final void OooO0o0(oo0o0Oo this_apply, View view) {
        Intrinsics.h(this_apply, "$this_apply");
        if (this_apply.Oooo) {
            ImageView imageViewOooO00o = this_apply.OooO00o();
            if (imageViewOooO00o != null) {
                imageViewOooO00o.setImageResource(R.drawable.mini_sel_privacy_checkbox_unchecked);
            }
        } else {
            ImageView imageViewOooO00o2 = this_apply.OooO00o();
            if (imageViewOooO00o2 != null) {
                imageViewOooO00o2.setImageResource(R.drawable.mini_sel_privacy_checkbox_checked);
            }
        }
        this_apply.Oooo = !this_apply.Oooo;
        this_apply.OooOO0();
    }

    public static final void OooO0oO(oo0o0Oo this_apply, View view) {
        Intrinsics.h(this_apply, "$this_apply");
        if (this_apply.Oooo && this_apply.OoooO00) {
            this_apply.OooO00o(this_apply.OooO00o, this_apply.OooO0O0, this_apply.OooO);
        }
    }

    public static final void OooO0oo(oo0o0Oo this_apply, View view) {
        Intrinsics.h(this_apply, "$this_apply");
        try {
            BridgeCallback bridgeCallback = this_apply.OooO0O0;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, "cancel");
                jsonObject.addProperty("clickBtn", "2");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            BridgeCallback bridgeCallback2 = this_apply.OooO0O0;
            if (bridgeCallback2 != null) {
                bridgeCallback2.close();
            }
            this_apply.dismiss();
        } catch (Throwable th2) {
            TmcLogger.e(this_apply.OooO0oO, "tvPrivacyCancel error", th2);
        }
    }

    public final void OooO() {
        Window window;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                int navBarHeight = BarUtils.getNavBarHeight();
                if (navBarHeight <= 50) {
                    this.OoooO0 = SizeUtils.dp2px(28.0f);
                    return;
                }
                com.cloud.tmc.miniapp.dialog.OooO0O0 dialog = getDialog();
                if (dialog == null || (window = dialog.getWindow()) == null) {
                    return;
                }
                OooO00o(window);
                View view = (View) this.OooOoO0.getValue();
                ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                int iDp2px = navBarHeight + SizeUtils.dp2px(16.0f);
                this.OoooO0 = iDp2px;
                if (layoutParams != null) {
                    layoutParams.height = iDp2px;
                }
                View view2 = (View) this.OooOoO0.getValue();
                if (view2 != null) {
                    view2.setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0oO, th2);
        }
    }

    public final ImageView OooO00o() {
        return (ImageView) this.Oooo00O.getValue();
    }

    public final oo0o0Oo OooO00o(String title, int i11, String baseContent, String privacyPolocyContent, String userAgreementContent, String buttonText, String privacyPolocyUrl, String userAgreementUrl, boolean z10, boolean z11, boolean z12, boolean z13, String str, String str2, String str3, String str4, boolean z14, boolean z15) {
        Intrinsics.h(title, "title");
        Intrinsics.h(baseContent, "baseContent");
        Intrinsics.h(privacyPolocyContent, "privacyPolocyContent");
        Intrinsics.h(userAgreementContent, "userAgreementContent");
        Intrinsics.h(buttonText, "buttonText");
        Intrinsics.h(privacyPolocyUrl, "privacyPolocyUrl");
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        OooO00o(title, i11, baseContent, privacyPolocyContent, userAgreementContent, buttonText, privacyPolocyUrl, userAgreementUrl, z10, z11, z12, z13, str, str2, str3, str4, this.OooO00o, z14, z15);
        return this;
    }

    public final oo0o0Oo OooO00o(String privacyDialogType, String title, String privacyTitle, String str, String str2, String userAgreementContent, String str3, String str4, String secondPrivacyTitle, String secondBaseContent, String str5, String secondUserAgreementContent, String secondPrivacyPolocyUrl, String secondUserAgreementUrl, String gdprNoticeContent, String highlightContent, String privacyCancelTv, String privacyAgreeTv, int i11, boolean z10, boolean z11) {
        String str6;
        String str7;
        int i12;
        int i13;
        String string;
        String string2;
        String string3;
        TextView textView;
        TextView textView2;
        TextView textView3;
        Intrinsics.h(privacyDialogType, "privacyDialogType");
        Intrinsics.h(title, "title");
        Intrinsics.h(privacyTitle, "privacyTitle");
        String baseContent = str;
        Intrinsics.h(baseContent, "baseContent");
        String privacyPolocyContent = str2;
        Intrinsics.h(privacyPolocyContent, "privacyPolocyContent");
        Intrinsics.h(userAgreementContent, "userAgreementContent");
        String privacyPolocyUrl = str3;
        Intrinsics.h(privacyPolocyUrl, "privacyPolocyUrl");
        String userAgreementUrl = str4;
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        Intrinsics.h(secondPrivacyTitle, "secondPrivacyTitle");
        Intrinsics.h(secondBaseContent, "secondBaseContent");
        String secondPrivacyPolocyContent = str5;
        Intrinsics.h(secondPrivacyPolocyContent, "secondPrivacyPolocyContent");
        Intrinsics.h(secondUserAgreementContent, "secondUserAgreementContent");
        Intrinsics.h(secondPrivacyPolocyUrl, "secondPrivacyPolocyUrl");
        Intrinsics.h(secondUserAgreementUrl, "secondUserAgreementUrl");
        Intrinsics.h(gdprNoticeContent, "gdprNoticeContent");
        Intrinsics.h(highlightContent, "highlightContent");
        Intrinsics.h(privacyCancelTv, "privacyCancelTv");
        Intrinsics.h(privacyAgreeTv, "privacyAgreeTv");
        this.OooO0OO = privacyDialogType;
        if (Intrinsics.c(privacyDialogType, "") ? true : Intrinsics.c(privacyDialogType, this.OooOO0O)) {
            OooO00o(title, i11, str, str2, userAgreementContent, "", str3, str4, false, true, false, z10, gdprNoticeContent, privacyCancelTv, privacyAgreeTv, "", true, z11);
            return this;
        }
        if (!Intrinsics.c(privacyDialogType, this.OooOO0)) {
            return this;
        }
        this.OooO0Oo = true;
        this.OooO0o0 = false;
        this.OooO0o = true;
        ConstraintLayout constraintLayout = (ConstraintLayout) this.OooOO0o.getValue();
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
        if ((title.length() > 0) && (textView3 = (TextView) this.OooOooO.getValue()) != null) {
            textView3.setText(title);
        }
        if ((privacyTitle.length() > 0) && (textView2 = (TextView) this.Oooo00o.getValue()) != null) {
            textView2.setText(privacyTitle);
        }
        if ((secondPrivacyTitle.length() > 0) && (textView = (TextView) this.Oooo0OO.getValue()) != null) {
            textView.setText(secondPrivacyTitle);
        }
        try {
            int iDp2px = (getContext().getResources().getDisplayMetrics().heightPixels - SizeUtils.dp2px(260.0f)) - this.OoooO0;
            NestedScrollView nestedScrollView = (NestedScrollView) this.OooOoo.getValue();
            ViewGroup.LayoutParams layoutParams = nestedScrollView != null ? nestedScrollView.getLayoutParams() : null;
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = -2;
            TmcLogger.d(this.OooO0oO, " two in one maxPrivacyHeight:" + iDp2px);
            bVar.U = iDp2px;
            NestedScrollView nestedScrollView2 = (NestedScrollView) this.OooOoo.getValue();
            if (nestedScrollView2 != null) {
                nestedScrollView2.setLayoutParams(bVar);
            }
        } catch (Throwable unused) {
        }
        String string4 = str.length() == 0 ? getString(R.string.mini_two_in_one_first_check_content) : baseContent;
        if (userAgreementContent.length() == 0) {
            String string5 = getString(R.string.mini_two_in_one_first_check_user_agreement);
            str6 = string5 == null ? "" : string5;
        } else {
            str6 = userAgreementContent;
        }
        if (str2.length() == 0) {
            String string6 = getString(R.string.mini_two_in_one_first_check_privacy_policy);
            privacyPolocyContent = string6 == null ? "" : string6;
        }
        boolean z12 = str4.length() == 0;
        String str8 = UrlKt.AGREEMENT_URL;
        if (z12) {
            userAgreementUrl = UrlKt.AGREEMENT_URL;
        }
        boolean z13 = str3.length() == 0;
        String str9 = UrlKt.PRIVACY_URL;
        if (z13) {
            privacyPolocyUrl = UrlKt.PRIVACY_URL;
        }
        if (string4 != null) {
            try {
                str7 = "";
                i12 = 0;
                String str10 = userAgreementUrl;
                i13 = 1;
                try {
                    OooO00o((TextView) this.Oooo0.getValue(), string4, StringsKt.o0(string4, Utils.SEPARATOR, 0, false, 6, null), privacyPolocyContent, privacyPolocyUrl, StringsKt.v0(string4, Utils.SEPARATOR, 0, false, 6, null), StringsKt.o0(string4, "*", 0, false, 6, null), str6, str10, StringsKt.v0(string4, "*", 0, false, 6, null), false);
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                str7 = "";
                i13 = 1;
                i12 = 0;
            }
        } else {
            str7 = "";
            i13 = 1;
            i12 = 0;
        }
        if ((str.length() == 0 ? i13 : i12) != 0) {
            baseContent = getString(R.string.mini_two_in_one_secondt_check_content);
        }
        if ((secondUserAgreementContent.length() == 0 ? i13 : i12) != 0) {
            string = getString(R.string.mini_two_in_one_second_check_user_agreement);
            if (string == null) {
                string = str7;
            }
        } else {
            string = secondUserAgreementContent;
        }
        if ((str5.length() == 0 ? i13 : i12) != 0) {
            String string7 = getString(R.string.mini_two_in_one_second_check_privacy_policy);
            secondPrivacyPolocyContent = string7 == null ? str7 : string7;
        }
        if ((secondUserAgreementUrl.length() == 0 ? i13 : i12) == 0) {
            str8 = secondUserAgreementUrl;
        }
        if ((secondPrivacyPolocyUrl.length() == 0 ? i13 : i12) == 0) {
            str9 = secondPrivacyPolocyUrl;
        }
        if (baseContent != null) {
            try {
                OooO00o((TextView) this.Oooo0o0.getValue(), baseContent, StringsKt.o0(baseContent, Utils.SEPARATOR, 0, false, 6, null), secondPrivacyPolocyContent, str9, StringsKt.v0(baseContent, Utils.SEPARATOR, 0, false, 6, null), StringsKt.o0(baseContent, "*", 0, false, 6, null), string, str8, StringsKt.v0(baseContent, "*", 0, false, 6, null), true);
            } catch (Throwable unused4) {
            }
        }
        if ((gdprNoticeContent.length() == 0 ? i13 : i12) != 0) {
            string2 = getString(R.string.mini_two_in_one_gdpr_notice_content);
            if (string2 == null) {
                string2 = str7;
            }
        } else {
            string2 = gdprNoticeContent;
        }
        if ((highlightContent.length() == 0 ? i13 : i12) != 0) {
            string3 = getString(R.string.mini_two_in_one_gdpr_highlight);
            if (string3 == null) {
                string3 = str7;
            }
        } else {
            string3 = highlightContent;
        }
        TextView textView4 = (TextView) this.Oooo0o.getValue();
        if (textView4 != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) string2);
            try {
                int iO0 = StringsKt.o0(string2, string3, 0, false, 6, null);
                int length = string3.length() + iO0;
                if (length > iO0) {
                    spannableStringBuilder.setSpan(new StyleSpan(i13), iO0, length, 33);
                }
            } catch (Throwable unused5) {
            }
            textView4.setText(new SpannedString(spannableStringBuilder));
        }
        View view = (View) this.Oooo0oO.getValue();
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    oo0o0Oo.OooO0o0(this.f23563a, view2);
                }
            });
        }
        View view2 = (View) this.Oooo0oo.getValue();
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    oo0o0Oo.OooO0o(this.f23564a, view3);
                }
            });
        }
        OooO0oo();
        TextView textView5 = (TextView) this.OooOooo.getValue();
        if (textView5 != null) {
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    oo0o0Oo.OooO0oO(this.f23565a, view3);
                }
            });
        }
        TextView textView6 = (TextView) this.Oooo000.getValue();
        if (textView6 == null) {
            return this;
        }
        textView6.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                oo0o0Oo.OooO0oo(this.f23566a, view3);
            }
        });
        return this;
    }

    public final void OooO00o(Window window) {
        Intrinsics.h(window, "window");
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 29) {
            window.setNavigationBarContrastEnforced(false);
        }
        window.clearFlags(ASTNode.NOJIT);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 512);
        window.setNavigationBarColor(0);
        Object systemService = getContext().getSystemService("uimode");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.UiModeManager");
        ((UiModeManager) systemService).getNightMode();
        Intrinsics.h(window, "window");
        if (i11 >= 26) {
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 16);
        }
    }

    public final void OooO00o(TextView textView, String str, int i11, String str2, String str3, int i12, int i13, String str4, String str5, int i14, boolean z10) {
        if (textView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            try {
                spannableStringBuilder.append(str.subSequence(0, i11));
            } catch (Throwable unused) {
            }
            SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str4), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new o00000(str5, this, z10));
            try {
                spannableStringBuilder.setSpan(new StyleSpan(1), i11, str4.length() + i11, 33);
            } catch (Throwable unused2) {
            }
            try {
                spannableStringBuilder.append(str.subSequence(i12 + 1, i13));
            } catch (Throwable unused3) {
            }
            SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str2), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new o00000O0(str3, this, z10));
            try {
                int length = (str4.length() + i13) - 4;
                spannableStringBuilder.setSpan(new StyleSpan(1), length, str2.length() + length, 33);
            } catch (Throwable unused4) {
            }
            try {
                spannableStringBuilder.append(str.subSequence(i14 + 1, str.length()));
            } catch (Throwable unused5) {
            }
            textView.setText(new SpannedString(spannableStringBuilder));
        }
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
        if (textView != null) {
            TextViewExtKt.transparentHighlightColor(textView);
        }
    }

    public final void OooO00o(App app, BridgeCallback bridgeCallback, int i11) {
        AppContext appContext;
        AppModel appModel;
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        try {
            try {
                if (this.OooO0Oo) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(app != null ? app.getAppId() : null, "privacy_click", new Bundle());
                    DeviceUtil.INSTANCE.updateIsNewUserStatus("");
                }
                boolean z10 = this.OooO0o0;
                if (z10) {
                    if (z10) {
                        DeviceUtil.INSTANCE.updateIsNewUserStatus(app != null ? app.getAppId() : null);
                    }
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    String appId = app != null ? app.getAppId() : null;
                    Bundle bundle = new Bundle();
                    bundle.putString("miniappid", app != null ? app.getAppId() : null);
                    bundle.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, this.OooO0o ? "2" : "1");
                    Unit unit = Unit.f67061a;
                    performanceAnalyseProxy.recordForCommon(appId, "appstart_add_click", bundle);
                }
            } catch (Throwable th2) {
                try {
                    TmcLogger.e(this.OooO0oO, "callback error", th2);
                    return;
                } finally {
                    dismiss();
                }
            }
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO0oO, th3);
        }
        try {
            MiniForceAddHomeManager.INSTANCE.noticeClickAllowBtn((app == null || (appModel = app.getAppModel()) == null) ? null : appModel.getAppId());
            if (app != null && (appContext = app.getAppContext()) != null && appContext.getContext() != null) {
                PrivacyBridge.Companion.getClass();
                if (PrivacyBridge.OooO0O0.containsKey(app.getAppId())) {
                    PrivacyBridge.OooO0O0.remove(app.getAppId());
                    PermissionDialogPoint permissionDialogPoint = (PermissionDialogPoint) ExtensionPoint.as(PermissionDialogPoint.class).create();
                    String appId2 = app.getAppId();
                    Intrinsics.g(appId2, "app.appId");
                    permissionDialogPoint.privacyDialogDismiss(appId2, app.getStartToken());
                }
            }
        } catch (Throwable th4) {
            TmcLogger.e(this.OooO0oO, "privacyDialogDismiss", th4);
        }
        if (i11 == this.OooO0oo) {
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, "agreeClick");
                jsonObject.addProperty("clickBtn", "3");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            if (bridgeCallback != null) {
                bridgeCallback.close();
            }
        } else if (i11 == this.OooO) {
            if (bridgeCallback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty(NotificationCompat.CATEGORY_STATUS, "agreeClick");
                jsonObject2.addProperty("clickBtn", "1");
                bridgeCallback.sendSuccessResponse(jsonObject2);
            }
            if (bridgeCallback != null) {
                bridgeCallback.close();
            }
        }
        if (Intrinsics.c(this.OooO0OO, this.OooOO0O)) {
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String appId3 = app != null ? app.getAppId() : null;
            Bundle bundle2 = new Bundle();
            bundle2.putString("miniappid", app != null ? app.getAppId() : null);
            bundle2.putString("content", "1");
            Unit unit2 = Unit.f67061a;
            performanceAnalyseProxy2.recordForCommon(appId3, "miniapp_agree_popup_click", bundle2);
        }
        dismiss();
    }

    public final void OooO00o(String str, int i11, String str2, String str3, int i12, int i13, String str4, String str5, int i14, boolean z10) {
        TextView textViewOooO0o = OooO0o();
        if (textViewOooO0o == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(str.subSequence(0, i11));
        SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str4), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new o000000(str5, this, z10));
        try {
            spannableStringBuilder.setSpan(new StyleSpan(1), i11, str4.length() + i11, 33);
        } catch (Throwable unused) {
        }
        try {
            spannableStringBuilder.append(str.subSequence(i12 + 1, i13));
        } catch (Throwable unused2) {
        }
        SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str2), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new o000000O(str3, this, z10));
        try {
            int length = (str4.length() + i13) - 4;
            spannableStringBuilder.setSpan(new StyleSpan(1), length, str2.length() + length, 33);
        } catch (Throwable unused3) {
        }
        try {
            spannableStringBuilder.append(str.subSequence(i14 + 1, str.length()));
        } catch (Throwable unused4) {
        }
        textViewOooO0o.setText(new SpannedString(spannableStringBuilder));
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0140 A[PHI: r1
  0x0140: PHI (r1v9 java.lang.String) = (r1v8 java.lang.String), (r1v11 java.lang.String) binds: [B:78:0x014b, B:72:0x013d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x015d A[PHI: r1
  0x015d: PHI (r1v14 java.lang.String) = (r1v13 java.lang.String), (r1v16 java.lang.String) binds: [B:88:0x0165, B:84:0x015a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:96:0x0177 A[PHI: r1
  0x0177: PHI (r1v19 java.lang.String) = (r1v18 java.lang.String), (r1v21 java.lang.String) binds: [B:98:0x017f, B:94:0x0174] A[DONT_GENERATE, DONT_INLINE]] */
    public final void OooO00o(String title, int i11, String baseContent, String privacyPolocyContent, String userAgreementContent, String buttonText, String privacyPolocyUrl, String userAgreementUrl, boolean z10, boolean z11, boolean z12, boolean z13, String str, String str2, String str3, String str4, App app, boolean z14, boolean z15) {
        int i12;
        String string;
        String str5;
        String string2;
        String str6;
        String string3;
        String str7;
        String string4;
        AppModel appModel;
        TextView textView;
        Unit unit;
        AppModel appModel2;
        String logo;
        Unit unit2;
        Intrinsics.h(title, "title");
        Intrinsics.h(baseContent, "baseContent");
        Intrinsics.h(privacyPolocyContent, "privacyPolocyContent");
        Intrinsics.h(userAgreementContent, "userAgreementContent");
        Intrinsics.h(buttonText, "buttonText");
        Intrinsics.h(privacyPolocyUrl, "privacyPolocyUrl");
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        if (z10 && app != null) {
            app.updateAddHomeShowStatus(100);
        }
        this.OooO0Oo = z11;
        this.OooO0o0 = z10;
        this.OooO0o = z12;
        if (z10) {
            Group group = (Group) this.OooOOOO.getValue();
            if (group != null) {
                group.setVisibility(0);
            }
            if (app == null || (appModel2 = app.getAppModel()) == null || (logo = appModel2.getLogo()) == null) {
                unit = null;
            } else {
                ImageView imageView = (ImageView) this.OooOOOo.getValue();
                if (imageView != null) {
                    try {
                        ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgRoundCorners(getContext(), logo, imageView, SizeUtils.dp2px(14.0f));
                    } catch (Throwable th2) {
                        TmcLogger.e(this.OooO0oO, "showAddhomeLayout", th2);
                    }
                    unit2 = Unit.f67061a;
                } else {
                    unit2 = null;
                }
                if (unit2 == null) {
                    TmcLogger.d(this.OooO0oO, "privacy dialog add home ,ivLogo is null");
                }
                unit = Unit.f67061a;
            }
            if (unit == null) {
                TmcLogger.d(this.OooO0oO, "privacy dialog add home ,logoUrl is null");
            }
        } else {
            TmcLogger.d(this.OooO0oO, "privacy dialog add home ,showAddHome is false");
            Group group2 = (Group) this.OooOOOO.getValue();
            if (group2 != null) {
                group2.setVisibility(8);
            }
        }
        TextView textView2 = (TextView) this.OooOOO0.getValue();
        if (textView2 != null) {
            textView2.setText(title);
        }
        if (i11 != 0 && (textView = (TextView) this.OooOOO0.getValue()) != null) {
            textView.setMaxLines(i11);
        }
        TextView textView3 = (TextView) this.OooOOoo.getValue();
        if (textView3 != null) {
            textView3.setText((app == null || (appModel = app.getAppModel()) == null) ? null : appModel.getName());
        }
        try {
            if (this.OooO0Oo) {
                Group group3 = (Group) this.OooOo0.getValue();
                if (group3 == null) {
                    i12 = 0;
                } else {
                    i12 = 0;
                    group3.setVisibility(0);
                }
                Group group4 = (Group) this.OooOo00.getValue();
                if (group4 != null) {
                    group4.setVisibility(i12);
                }
                Group group5 = (Group) this.OooOoO.getValue();
                if (group5 != null) {
                    group5.setVisibility(8);
                }
                if (z13) {
                    str5 = baseContent;
                } else if (z15) {
                    string = getString(R.string.mini_privacy_reading_notice_only_en);
                    if (string == null) {
                        str5 = "";
                    } else {
                        str5 = string;
                    }
                } else {
                    string = getString(R.string.mini_privacy_reading_notice);
                    if (string == null) {
                        str5 = "";
                    } else {
                        str5 = string;
                    }
                }
                if (z13) {
                    str6 = privacyPolocyContent;
                } else if (z15) {
                    string2 = getString(R.string.mini_privacy_privacy_policy_only_en);
                    if (string2 == null) {
                        str6 = "";
                    } else {
                        str6 = string2;
                    }
                } else {
                    string2 = getString(R.string.mini_privacy_privacy_policy);
                    if (string2 == null) {
                        str6 = "";
                    } else {
                        str6 = string2;
                    }
                }
                if (z13) {
                    str7 = userAgreementContent;
                } else if (z15) {
                    string3 = getString(R.string.mini_privacy_user_agreement_only_en);
                    if (string3 == null) {
                        str7 = "";
                    } else {
                        str7 = string3;
                    }
                } else {
                    string3 = getString(R.string.mini_privacy_user_agreement);
                    if (string3 == null) {
                        str7 = "";
                    } else {
                        str7 = string3;
                    }
                }
                OooO00o(str5, StringsKt.o0(str5, Utils.SEPARATOR, 0, false, 6, null), str6, privacyPolocyUrl, StringsKt.v0(str5, Utils.SEPARATOR, 0, false, 6, null), StringsKt.o0(str5, "*", 0, false, 6, null), str7, userAgreementUrl, StringsKt.v0(str5, "*", 0, false, 6, null), z14);
                TextView textView4 = (TextView) this.OooOo0O.getValue();
                if (textView4 != null) {
                    if (str != null && str.length() > 0) {
                        string4 = str;
                    } else if (z15) {
                        string4 = getString(R.string.mini_gdpr_privacy_only_en);
                        if (string4 == null) {
                            string4 = "";
                        }
                    } else {
                        string4 = getString(R.string.mini_gdpr_privacy);
                        if (string4 == null) {
                            string4 = "";
                        }
                    }
                    textView4.setText(string4);
                }
                TextView textView5 = (TextView) this.OooOo0O.getValue();
                if (textView5 != null) {
                    textView5.setMovementMethod(ScrollingMovementMethod.getInstance());
                }
                TextView textView6 = (TextView) this.OooOo0o.getValue();
                if (textView6 != null) {
                    textView6.setText(str3);
                }
                TextView textView7 = (TextView) this.OooOo.getValue();
                if (textView7 != null) {
                    textView7.setText(str2);
                }
                TextView textViewOooO0o = OooO0o();
                if (textViewOooO0o != null) {
                    textViewOooO0o.setMovementMethod(LinkMovementMethod.getInstance());
                }
                TextView textViewOooO0o2 = OooO0o();
                if (textViewOooO0o2 != null) {
                    TextViewExtKt.transparentHighlightColor(textViewOooO0o2);
                }
            } else {
                Group group6 = (Group) this.OooOo0.getValue();
                if (group6 != null) {
                    group6.setVisibility(8);
                }
                Group group7 = (Group) this.OooOo00.getValue();
                if (group7 != null) {
                    group7.setVisibility(8);
                }
                Group group8 = (Group) this.OooOoO.getValue();
                if (group8 != null) {
                    group8.setVisibility(0);
                }
                TmcLogger.d(this.OooO0oO, "privacy dialog add home ,showPrivacy is false");
            }
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO0oO, "privacy dialog add home error", th3);
        }
        TextView textView8 = (TextView) this.OooOOo0.getValue();
        if (textView8 != null) {
            textView8.setText(buttonText);
        }
        TextView textView9 = (TextView) this.OooOOo.getValue();
        if (textView9 == null) {
            return;
        }
        textView9.setText(str4);
    }

    public final void OooO00o(String privacyDialogType, String title, int i11, String baseContent, String privacyPolocyContent, String userAgreementContent, String buttonText, String privacyPolocyUrl, String userAgreementUrl, boolean z10, String str, String str2, String str3, String str4, boolean z11, App app) {
        Intrinsics.h(privacyDialogType, "privacyDialogType");
        Intrinsics.h(title, "title");
        Intrinsics.h(baseContent, "baseContent");
        Intrinsics.h(privacyPolocyContent, "privacyPolocyContent");
        Intrinsics.h(userAgreementContent, "userAgreementContent");
        Intrinsics.h(buttonText, "buttonText");
        Intrinsics.h(privacyPolocyUrl, "privacyPolocyUrl");
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        this.OooO0OO = privacyDialogType;
        ConstraintLayout constraintLayout = (ConstraintLayout) this.OooOO0o.getValue();
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
        ConstraintLayout constraintLayout2 = (ConstraintLayout) this.OooOoo0.getValue();
        if (constraintLayout2 != null) {
            constraintLayout2.setVisibility(8);
        }
        OooO00o(title, i11, baseContent, privacyPolocyContent, userAgreementContent, buttonText, privacyPolocyUrl, userAgreementUrl, false, true, false, z10, str, str2, str3, str4, app, true, z11);
    }

    public final ImageView OooO0O0() {
        return (ImageView) this.Oooo0O0.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooOOo.getValue();
    }

    public final TextView OooO0Oo() {
        return (TextView) this.OooOOo0.getValue();
    }

    public final TextView OooO0o() {
        return (TextView) this.OooOOO.getValue();
    }

    public final TextView OooO0o0() {
        return (TextView) this.OooOo0o.getValue();
    }

    public final TextView OooO0oO() {
        return (TextView) this.OooOo.getValue();
    }

    public final void OooO0oo() {
        try {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.w
                @Override // java.lang.Runnable
                public final void run() {
                    oo0o0Oo.OooO0O0(this.f23569a);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void OooOO0() {
        try {
            Drawable drawable = getDrawable(R.drawable.mini_privacy_button_unclick_bg);
            GradientDrawable gradientDrawable = drawable instanceof GradientDrawable ? (GradientDrawable) drawable : null;
            int color = (this.Oooo && this.OoooO00) ? getColor(R.color.mini_color_primary) : getColor(R.color.mini_two_in_one_agree_unchecked_bg);
            if (gradientDrawable != null) {
                gradientDrawable.setColor(color);
            }
            TextView textView = (TextView) this.OooOooo.getValue();
            if (textView == null) {
                return;
            }
            textView.setBackground(gradientDrawable);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0oO, th2);
        }
    }
}
