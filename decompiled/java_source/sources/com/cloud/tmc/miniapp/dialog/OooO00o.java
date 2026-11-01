package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.callback.LocalAuthPermissionCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.AnimAction;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.StringUtils;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<OooO00o> {
    public final Lazy OooO;
    public LocalAuthPermissionCallback OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;
    public boolean OooO0oo;
    public final Lazy OooOO0;
    public String OooOO0O;
    public String OooOO0o;

    public static final class OooO extends Lambda implements Function0<AppCompatImageView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_dialog_mini_app_logo);
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.dialog.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0319OooO00o implements com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000 {
        public C0319OooO00o() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
        public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String str = OooO00o.this.OooOO0o;
            Bundle bundle = new Bundle();
            bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, OooO00o.this.OooOO0O);
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(str, "second_add_ex", bundle);
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0 {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0
        public void OooO00o(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            LocalAuthPermissionCallback localAuthPermissionCallback = OooO00o.this.OooO00o;
            if (localAuthPermissionCallback != null) {
                localAuthPermissionCallback.onDenied();
            }
        }
    }

    public static final class OooO0OO implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00 {
        public OooO0OO() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00
        public void onDismiss(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            OooO00o.this.OooO00o = null;
        }
    }

    public static final class OooO0o extends Lambda implements Function0<ImageView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) OooO00o.this.findViewById(R.id.iv_check_show_again);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<AppCompatImageView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooO00o.this.findViewById(R.id.tv_allow);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<TextView> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooO00o.this.findViewById(R.id.tv_dialog_mini_app_name);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<TextView> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooO00o.this.findViewById(R.id.tv_deny);
        }
    }

    public static final class OooOOOO extends Lambda implements Function0<TextView> {
        public OooOOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooO00o.this.findViewById(R.id.tv_title);
        }
    }

    public static final class OooOo00 extends Lambda implements Function0<View> {
        public OooOo00() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return OooO00o.this.findViewById(R.id.view_click_show_again_check);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO00o(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO0O0 = LazyKt.b(new OooOO0());
        this.OooO0OO = LazyKt.b(new OooOO0O());
        this.OooO0Oo = LazyKt.b(new OooOOOO());
        this.OooO0o0 = LazyKt.b(new OooOOO0());
        this.OooO0o = LazyKt.b(new OooOOO());
        this.OooO0oO = LazyKt.b(new OooO0o());
        this.OooO = LazyKt.b(new OooOo00());
        this.OooOO0 = LazyKt.b(new OooO());
        this.OooOO0O = "";
        this.OooOO0o = "";
        setContentView(R.layout.mini_addhome_confirm_layout);
        setAnimStyle(AnimAction.Companion.getANIM_BOTTOM());
        setBackgroundDimEnabled(true);
        setOnClickListener(OooO00o(), OooO0O0(), OooO0OO());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        addOnShowListener(new C0319OooO00o());
        addOnCancelListener(new OooO0O0());
        addOnDismissListener(new OooO0OO());
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final OooO00o OooO00o(String str) {
        if (str != null) {
            try {
                AppCompatImageView appCompatImageView = (AppCompatImageView) this.OooO0O0.getValue();
                if (appCompatImageView != null) {
                    ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                    Context context = getContext();
                    int iDp2px = SizeUtils.dp2px(4.0f);
                    int i11 = R.drawable.drawable_app_icon_place_holder;
                    imageLoaderProxy.loadImgRoundCorners(context, str, appCompatImageView, iDp2px, i11, i11);
                }
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) this.OooOO0.getValue();
                if (appCompatImageView2 != null) {
                    ImageLoaderProxy imageLoaderProxy2 = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                    Context context2 = getContext();
                    int iDp2px2 = SizeUtils.dp2px(16.0f);
                    int i12 = R.drawable.drawable_app_icon_place_holder;
                    imageLoaderProxy2.loadImgRoundCorners(context2, str, appCompatImageView2, iDp2px2, i12, i12);
                }
            } catch (Throwable th2) {
                TmcLogger.e("PermissionDialog", th2);
            }
        }
        return this;
    }

    public final TextView OooO0O0() {
        return (TextView) this.OooO0o0.getValue();
    }

    public final OooO00o OooO0O0(String str) {
        try {
            TextView textView = (TextView) this.OooO0Oo.getValue();
            if (textView != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String string = StringUtils.getString(R.string.mini_permission_dialog_title);
                Intrinsics.g(string, "getString(R.string.mini_permission_dialog_title)");
                String str2 = String.format(string, Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.g(str2, "format(format, *args)");
                textView.setText(str2);
            }
            TextView textView2 = (TextView) this.OooO0o.getValue();
            if (textView2 != null) {
                textView2.setText(str);
            }
        } catch (Throwable th2) {
            TmcLogger.e("setAppTitle", th2);
        }
        return this;
    }

    public final View OooO0OO() {
        return (View) this.OooO.getValue();
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        super.onClick(view);
        if (Intrinsics.c(view, (TextView) this.OooO0OO.getValue())) {
            LocalAuthPermissionCallback localAuthPermissionCallback = this.OooO00o;
            if (localAuthPermissionCallback != null) {
                localAuthPermissionCallback.onGranted(null);
            }
            dismiss();
            return;
        }
        if (Intrinsics.c(view, (TextView) this.OooO0o0.getValue())) {
            LocalAuthPermissionCallback localAuthPermissionCallback2 = this.OooO00o;
            if (localAuthPermissionCallback2 != null) {
                localAuthPermissionCallback2.onDenied();
            }
            dismiss();
            return;
        }
        if (Intrinsics.c(view, (View) this.OooO.getValue())) {
            this.OooO0oo = !this.OooO0oo;
            ImageView imageView = (ImageView) this.OooO0oO.getValue();
            if (imageView != null) {
                imageView.setSelected(this.OooO0oo);
            }
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(getContext(), this.OooOO0o, TmcConstants.KEY_STORAGE_ADD_HOME_TIME_STAMP, this.OooO0oo ? System.currentTimeMillis() : 0L);
        }
    }
}
