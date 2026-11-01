package com.cloud.tmc.miniapp.dialog;

import android.app.UiModeManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.ext.SpannableExtKt;
import com.cloud.tmc.integration.utils.ext.TextViewExtKt;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.bridge.PrivacyBridge;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.ui.WebViewActivity;
import com.cloud.tmc.miniutils.util.BarUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.google.gson.JsonObject;
import com.transsion.gslb.Utils;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class o0O0O00 extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<oo0o0Oo> {
    public final App OooO00o;
    public final BridgeCallback OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;

    public static final class OooO extends Lambda implements Function0<TextView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0O0O00.this.findViewById(R.id.tv_privacy_agreement_title);
        }
    }

    public static final class OooO00o implements com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000 {
        public OooO00o() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
        public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            App app = o0O0O00.this.OooO00o;
            String appId = app != null ? app.getAppId() : null;
            Bundle bundle = new Bundle();
            App app2 = o0O0O00.this.OooO00o;
            bundle.putString("miniappid", app2 != null ? app2.getAppId() : null);
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(appId, "miniapp_agree_popup_ex", bundle);
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0 {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0
        public void OooO00o(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            AppContext appContext;
            try {
                App app = o0O0O00.this.OooO00o;
                Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
                MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
                if (miniAppActivity != null) {
                    miniAppActivity.capsuleSetOnRightClick(true);
                }
            } catch (Throwable th2) {
                TmcLogger.e("PrivacyAgreementSimpleDialog", th2);
            }
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<TextView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0O0O00.this.findViewById(R.id.tv_privacy_agree);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0O0O00.this.findViewById(R.id.tv_privacy_agreement_please_read);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<TextView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0O0O00.this.findViewById(R.id.tv_privacy_cancel);
        }
    }

    public static final class OooOO0O extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ o0O0O00 OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooOO0O(String str, o0O0O00 o0o0o00) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = o0o0o00;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            WebViewActivity.Companion.launch$default(WebViewActivity.Companion, this.OooO0O0.getContext(), UrlKt.appendCommonParamUrl(TextUtils.isEmpty(this.OooO00o) ? UrlKt.AGREEMENT_URL : this.OooO00o, this.OooO0O0.getContext()), null, null, 12, null);
            return Unit.f67061a;
        }
    }

    public static final class OooOOO extends Lambda implements Function0<View> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return o0O0O00.this.findViewById(R.id.view_navigetion_bar);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function1<View, Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ o0O0O00 OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooOOO0(String str, o0O0O00 o0o0o00) {
            super(1);
            this.OooO00o = str;
            this.OooO0O0 = o0o0o00;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            WebViewActivity.Companion.launch$default(WebViewActivity.Companion, this.OooO0O0.getContext(), UrlKt.appendCommonParamUrl(TextUtils.isEmpty(this.OooO00o) ? UrlKt.PRIVACY_URL : this.OooO00o, this.OooO0O0.getContext()), null, null, 12, null);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0O0O00(Context context, App app, BridgeCallback bridgeCallback) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = app;
        this.OooO0O0 = bridgeCallback;
        this.OooO0OO = LazyKt.b(new OooO());
        this.OooO0Oo = LazyKt.b(new OooO0o());
        this.OooO0o0 = LazyKt.b(new OooOO0());
        this.OooO0o = LazyKt.b(new OooO0OO());
        this.OooO0oO = LazyKt.b(new OooOOO());
        try {
            setContentView(R.layout.mini_layout_privacy_agreement_smiple_dialog);
            setBackgroundDimEnabled(true);
            setCancelable(true);
            TextView textViewOooO00o = OooO00o();
            if (textViewOooO00o != null) {
                textViewOooO00o.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.m
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o0O0O00.OooO00o(this.f23558a, view);
                    }
                });
            }
            TextView textViewOooO0OO = OooO0OO();
            if (textViewOooO0OO != null) {
                textViewOooO0OO.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        o0O0O00.OooO0O0(this.f23559a, view);
                    }
                });
            }
            addOnShowListener(new OooO00o());
            addOnCancelListener(new OooO0O0());
        } catch (Throwable th2) {
            TmcLogger.e("PrivacyAgreementSimpleDialog", "updateDialogLayout", th2);
        }
    }

    public static final void OooO00o(o0O0O00 this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        App app = this$0.OooO00o;
        BridgeCallback bridgeCallback = this$0.OooO0O0;
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        try {
            try {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(app != null ? app.getAppId() : null, "privacy_click", new Bundle());
                DeviceUtil.INSTANCE.updateIsNewUserStatus("");
            } catch (Throwable th2) {
                TmcLogger.e("PrivacyAgreementSimpleDialog", th2);
            }
            if (app != null) {
                try {
                    AppContext appContext = app.getAppContext();
                    if (appContext != null && appContext.getContext() != null) {
                        PrivacyBridge.Companion.getClass();
                        if (PrivacyBridge.OooO0OO.containsKey(app.getAppId())) {
                            PrivacyBridge.OooO0OO.remove(app.getAppId());
                            PermissionDialogPoint permissionDialogPoint = (PermissionDialogPoint) ExtensionPoint.as(PermissionDialogPoint.class).create();
                            String appId = app.getAppId();
                            Intrinsics.g(appId, "app.appId");
                            permissionDialogPoint.privacyDialogDismiss(appId, app.getStartToken());
                        }
                    }
                } catch (Throwable th3) {
                    TmcLogger.e("PrivacyAgreementSimpleDialog", "privacyDialogDismiss", th3);
                }
            }
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NotificationCompat.CATEGORY_STATUS, "agreeClick");
                jsonObject.addProperty("clickBtn", "1");
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            if (bridgeCallback != null) {
                bridgeCallback.close();
            }
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String appId2 = app != null ? app.getAppId() : null;
            Bundle bundle = new Bundle();
            bundle.putString("miniappid", app != null ? app.getAppId() : null);
            bundle.putString("content", "1");
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(appId2, "miniapp_agree_popup_click", bundle);
        } catch (Throwable th4) {
            try {
                TmcLogger.e("PrivacyAgreementSimpleDialog", "callback error", th4);
            } finally {
                this$0.dismiss();
            }
        }
    }

    public static final void OooO0O0(o0O0O00 this$0, View view) {
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
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                App app = this$0.OooO00o;
                String appId = app != null ? app.getAppId() : null;
                Bundle bundle = new Bundle();
                App app2 = this$0.OooO00o;
                bundle.putString("miniappid", app2 != null ? app2.getAppId() : null);
                bundle.putString("content", "0");
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(appId, "miniapp_agree_popup_click", bundle);
            } catch (Throwable unused) {
            }
            this$0.dismiss();
            PrivacyBridge.Companion.getClass();
            ConcurrentHashMap concurrentHashMap = PrivacyBridge.OooO0OO;
            App app3 = this$0.OooO00o;
            if (concurrentHashMap.containsKey(app3 != null ? app3.getAppId() : null)) {
                ConcurrentHashMap concurrentHashMap2 = PrivacyBridge.OooO0OO;
                App app4 = this$0.OooO00o;
                TypeIntrinsics.d(concurrentHashMap2).remove(app4 != null ? app4.getAppId() : null);
            }
        } catch (Throwable th2) {
            TmcLogger.e("PrivacyAgreementSimpleDialog", "tvPrivacyCancel error", th2);
        }
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0o.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0096 A[PHI: r2
  0x0096: PHI (r2v10 java.lang.String) = (r2v9 java.lang.String), (r2v12 java.lang.String) binds: [B:44:0x009e, B:40:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b0 A[PHI: r2
  0x00b0: PHI (r2v15 java.lang.String) = (r2v14 java.lang.String), (r2v17 java.lang.String) binds: [B:54:0x00b8, B:50:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    public final o0O0O00 OooO00o(String title, String str, String str2, String userAgreementContent, String privacyPolocyUrl, String userAgreementUrl, String str3, String str4, int i11, boolean z10, boolean z11) {
        String string;
        String string2;
        String string3;
        String str5;
        TextView textViewOooO00o;
        TextView textViewOooO0OO;
        TextView textView;
        Intrinsics.h(title, "title");
        String privacyPolocyContent = str2;
        Intrinsics.h(privacyPolocyContent, "privacyPolocyContent");
        Intrinsics.h(userAgreementContent, "userAgreementContent");
        Intrinsics.h(privacyPolocyUrl, "privacyPolocyUrl");
        Intrinsics.h(userAgreementUrl, "userAgreementUrl");
        try {
            TextView textView2 = (TextView) this.OooO0OO.getValue();
            if (textView2 != null) {
                textView2.setText(title);
            }
            if (i11 != 0 && (textView = (TextView) this.OooO0OO.getValue()) != null) {
                textView.setMaxLines(i11);
            }
            if (str3 != null && str3.length() > 0 && (textViewOooO0OO = OooO0OO()) != null) {
                textViewOooO0OO.setText(str3);
            }
            if (str4 != null && str4.length() > 0 && (textViewOooO00o = OooO00o()) != null) {
                textViewOooO00o.setText(str4);
            }
            if (z10) {
                string = str;
            } else {
                if (z11) {
                    string = getString(R.string.mini_privacy_reading_notice_only_en);
                    if (string == null) {
                        string = "";
                    }
                    return this;
                }
                string = getString(R.string.mini_privacy_reading_notice);
                if (string == null) {
                    string = "";
                }
            }
            if (!z10) {
                if (z11) {
                    string2 = getString(R.string.mini_privacy_privacy_policy_only_en);
                    if (string2 == null) {
                        privacyPolocyContent = "";
                    } else {
                        privacyPolocyContent = string2;
                    }
                } else {
                    string2 = getString(R.string.mini_privacy_privacy_policy);
                    if (string2 == null) {
                        privacyPolocyContent = "";
                    } else {
                        privacyPolocyContent = string2;
                    }
                }
            }
            if (z10) {
                str5 = userAgreementContent;
            } else if (z11) {
                string3 = getString(R.string.mini_privacy_user_agreement_only_en);
                if (string3 == null) {
                    str5 = "";
                } else {
                    str5 = string3;
                }
            } else {
                string3 = getString(R.string.mini_privacy_user_agreement);
                if (string3 == null) {
                    str5 = "";
                } else {
                    str5 = string3;
                }
            }
            if (string != null) {
                OooO00o(string, StringsKt.o0(string, Utils.SEPARATOR, 0, false, 6, null), privacyPolocyContent, privacyPolocyUrl, StringsKt.v0(string, Utils.SEPARATOR, 0, false, 6, null), StringsKt.o0(string, "*", 0, false, 6, null), str5, userAgreementUrl, StringsKt.v0(string, "*", 0, false, 6, null));
            }
            TextView textViewOooO00o2 = OooO00o();
            if (textViewOooO00o2 != null) {
                textViewOooO00o2.setText(str4);
            }
            TextView textViewOooO0OO2 = OooO0OO();
            if (textViewOooO0OO2 != null) {
                textViewOooO0OO2.setText(str3);
            }
            TextView textViewOooO0O0 = OooO0O0();
            if (textViewOooO0O0 != null) {
                textViewOooO0O0.setMovementMethod(LinkMovementMethod.getInstance());
            }
            TextView textViewOooO0O1 = OooO0O0();
            if (textViewOooO0O1 != null) {
                TextViewExtKt.transparentHighlightColor(textViewOooO0O1);
            }
        } catch (Throwable unused) {
        }
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

    public final void OooO00o(String str, int i11, String str2, String str3, int i12, int i13, String str4, String str5, int i14) {
        TextView textViewOooO0O0 = OooO0O0();
        if (textViewOooO0O0 == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(str.subSequence(0, i11));
        SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str4), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new OooOO0O(str5, this));
        try {
            spannableStringBuilder.setSpan(new StyleSpan(1), i11, str4.length() + i11, 33);
        } catch (Throwable unused) {
        }
        try {
            spannableStringBuilder.append(str.subSequence(i12 + 1, i13));
        } catch (Throwable unused2) {
        }
        SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(str2), Integer.valueOf(getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new OooOOO0(str3, this));
        try {
            int length = (i13 + str4.length()) - 4;
            spannableStringBuilder.setSpan(new StyleSpan(1), length, str2.length() + length, 33);
        } catch (Throwable unused3) {
        }
        try {
            spannableStringBuilder.append(str.subSequence(i14 + 1, str.length()));
        } catch (Throwable unused4) {
        }
        textViewOooO0O0.setText(new SpannedString(spannableStringBuilder));
    }

    public final TextView OooO0O0() {
        return (TextView) this.OooO0Oo.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0o0.getValue();
    }

    public final void OooO0Oo() {
        Window window;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                int navBarHeight = BarUtils.getNavBarHeight();
                if (navBarHeight <= 50) {
                    SizeUtils.dp2px(28.0f);
                    return;
                }
                com.cloud.tmc.miniapp.dialog.OooO0O0 dialog = getDialog();
                if (dialog == null || (window = dialog.getWindow()) == null) {
                    return;
                }
                OooO00o(window);
                View view = (View) this.OooO0oO.getValue();
                ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                int iDp2px = navBarHeight + SizeUtils.dp2px(16.0f);
                if (layoutParams != null) {
                    layoutParams.height = iDp2px;
                }
                View view2 = (View) this.OooO0oO.getValue();
                if (view2 != null) {
                    view2.setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("PrivacyAgreementSimpleDialog", th2);
        }
    }
}
