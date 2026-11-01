package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.cloud.tmc.integration.callback.LocalAuthPermissionWithNotShowAgainCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.AnimAction;
import com.cloud.tmc.miniutils.util.StringUtils;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public final class o0OO00O extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<o0OO00O> {
    public final Lazy OooO;
    public LocalAuthPermissionWithNotShowAgainCallback OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public final Lazy OooOO0;
    public boolean OooOO0O;
    public final String OooOO0o;

    public static final class OooO extends Lambda implements Function0<AppCompatImageView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) o0OO00O.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooO00o implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0 {
        public OooO00o() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOOO0
        public void OooO00o(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            LocalAuthPermissionWithNotShowAgainCallback localAuthPermissionWithNotShowAgainCallback = o0OO00O.this.OooO00o;
            if (localAuthPermissionWithNotShowAgainCallback != null) {
                localAuthPermissionWithNotShowAgainCallback.onDenied();
            }
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00 {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00
        public void onDismiss(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            o0OO00O.this.OooO00o = null;
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<Group> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) o0OO00O.this.findViewById(R.id.group_check_show_again);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<ImageView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) o0OO00O.this.findViewById(R.id.iv_check_show_again);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<TextView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0OO00O.this.findViewById(R.id.tv_allow);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0OO00O.this.findViewById(R.id.tv_content);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<TextView> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0OO00O.this.findViewById(R.id.tv_title);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<TextView> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0OO00O.this.findViewById(R.id.tv_deny);
        }
    }

    public static final class OooOOOO extends Lambda implements Function0<TextView> {
        public OooOOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0OO00O.this.findViewById(R.id.tv_title_tips);
        }
    }

    public static final class OooOo00 extends Lambda implements Function0<View> {
        public OooOo00() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return o0OO00O.this.findViewById(R.id.view_click_show_again_check);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0OO00O(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO0O0 = LazyKt.b(new OooO());
        this.OooO0OO = LazyKt.b(new OooOO0());
        this.OooO0Oo = LazyKt.b(new OooOOO());
        this.OooO0o0 = LazyKt.b(new OooOOOO());
        this.OooO0o = LazyKt.b(new OooOO0O());
        this.OooO0oO = LazyKt.b(new OooOOO0());
        this.OooO0oo = LazyKt.b(new OooO0OO());
        this.OooO = LazyKt.b(new OooOo00());
        this.OooOO0 = LazyKt.b(new OooO0o());
        this.OooOO0o = "PermissionDialog";
        setContentView(R.layout.layout_mini_login_permission);
        setAnimStyle(AnimAction.Companion.getANIM_BOTTOM());
        setBackgroundDimEnabled(true);
        setOnClickListener(OooO00o(), OooO0O0(), OooO0Oo());
        setCancelable(false);
        addOnCancelListener(new OooO00o());
        addOnDismissListener(new OooO0O0());
        try {
            TextView textViewOooO0OO = OooO0OO();
            if (textViewOooO0OO == null) {
                return;
            }
            textViewOooO0OO.setText(OooO00o(StringUtils.getString(R.string.mini_permission_dialog_title), " "));
        } catch (Throwable th2) {
            TmcLogger.e(this.OooOO0o, th2);
        }
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final String OooO00o(String str, String str2) {
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            if (str == null) {
                str = "";
            }
            String str3 = String.format(str, Arrays.copyOf(new Object[]{str2}, 1));
            Intrinsics.g(str3, "format(format, *args)");
            return str3;
        } catch (Throwable th2) {
            TmcLogger.e(this.OooOO0o, th2);
            return str2;
        }
    }

    public final TextView OooO0O0() {
        return (TextView) this.OooO0oO.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0o0.getValue();
    }

    public final View OooO0Oo() {
        return (View) this.OooO.getValue();
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        super.onClick(view);
        if (Intrinsics.c(view, (TextView) this.OooO0OO.getValue())) {
            LocalAuthPermissionWithNotShowAgainCallback localAuthPermissionWithNotShowAgainCallback = this.OooO00o;
            if (localAuthPermissionWithNotShowAgainCallback != null) {
                localAuthPermissionWithNotShowAgainCallback.onGranted(null);
            }
            dismiss();
            return;
        }
        if (Intrinsics.c(view, (TextView) this.OooO0oO.getValue())) {
            LocalAuthPermissionWithNotShowAgainCallback localAuthPermissionWithNotShowAgainCallback2 = this.OooO00o;
            if (localAuthPermissionWithNotShowAgainCallback2 != null) {
                localAuthPermissionWithNotShowAgainCallback2.onDenied();
            }
            dismiss();
            return;
        }
        if (Intrinsics.c(view, (View) this.OooO.getValue())) {
            this.OooOO0O = !this.OooOO0O;
            ImageView imageView = (ImageView) this.OooOO0.getValue();
            if (imageView != null) {
                imageView.setSelected(this.OooOO0O);
            }
            LocalAuthPermissionWithNotShowAgainCallback localAuthPermissionWithNotShowAgainCallback3 = this.OooO00o;
            if (localAuthPermissionWithNotShowAgainCallback3 != null) {
                localAuthPermissionWithNotShowAgainCallback3.clickNotShowAgagin(this.OooOO0O);
            }
        }
    }
}
