package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.AnimAction;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class o0ooOOo extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<o0ooOOo> {
    public final Lazy OooO;
    public final String OooO00o;
    public o0OOO0o OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public final Lazy OooOO0;
    public final Lazy OooOO0O;
    public final Lazy OooOO0o;
    public final String OooOOO;
    public boolean OooOOO0;
    public final String OooOOOO;
    public final String OooOOOo;
    public final String OooOOo;
    public final String OooOOo0;
    public final String OooOOoo;
    public final String OooOo;
    public final String OooOo0;
    public final String OooOo00;
    public final String OooOo0O;
    public final String OooOo0o;

    public static final class OooO extends Lambda implements Function0<TextView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_btn_three);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<Group> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (Group) o0ooOOo.this.findViewById(R.id.group_check_show_again);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<ImageView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) o0ooOOo.this.findViewById(R.id.iv_check_show_again);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<AppCompatImageView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) o0ooOOo.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_btn_one);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<TextView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_btn_two);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_content);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<TextView> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_title);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<TextView> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_show_again);
        }
    }

    public static final class OooOOOO extends Lambda implements Function0<TextView> {
        public OooOOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0ooOOo.this.findViewById(R.id.tv_title_tips);
        }
    }

    public static final class OooOo00 extends Lambda implements Function0<View> {
        public OooOo00() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return o0ooOOo.this.findViewById(R.id.view_click_show_again_check);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0ooOOo(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = "MiniScopePermissionDialog";
        this.OooO0OO = LazyKt.b(new OooO0OO());
        this.OooO0Oo = LazyKt.b(new OooOOO());
        this.OooO0o0 = LazyKt.b(new OooOOOO());
        this.OooO0o = LazyKt.b(new OooOO0O());
        this.OooO0oO = LazyKt.b(new OooO0o());
        this.OooO0oo = LazyKt.b(new OooOO0());
        this.OooO = LazyKt.b(new OooO());
        this.OooOO0 = LazyKt.b(new OooO00o());
        this.OooOO0O = LazyKt.b(new OooO0O0());
        LazyKt.b(new OooOOO0());
        this.OooOO0o = LazyKt.b(new OooOo00());
        setContentView(R.layout.mini_dialog_layout_permission_scope);
        setAnimStyle(AnimAction.Companion.getANIM_BOTTOM());
        setBackgroundDimEnabled(true);
        setOnClickListener(OooO00o(), OooO0OO(), OooO0O0(), OooO0Oo());
        setCancelable(false);
        this.OooOOO = "isShow";
        this.OooOOOO = "bgcolor";
        this.OooOOOo = MimeTypes.BASE_TYPE_TEXT;
        this.OooOOo0 = "customText";
        this.OooOOo = "1";
        this.OooOOoo = "2";
        this.OooOo00 = "3";
        this.OooOo0 = "4";
        this.OooOo0O = "5";
        this.OooOo0o = "0";
        this.OooOo = "1";
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0oO.getValue();
    }

    public final void OooO00o(TextView textView, JsonObject jsonObject) {
        JsonElement jsonElement = jsonObject.get(this.OooOOO);
        if (!(jsonElement != null ? jsonElement.getAsBoolean() : false)) {
            if (textView != null) {
                textView.setVisibility(8);
            }
            TmcLogger.e(this.OooO00o, "initBtnConfig:-> btn is not show->" + (textView != null ? Integer.valueOf(textView.getId()) : null));
            return;
        }
        JsonElement jsonElement2 = jsonObject.get(this.OooOOOO);
        String asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
        if (asString == null) {
            asString = this.OooOo0o;
        }
        if (asString.length() > 0) {
            if (Intrinsics.c(asString, this.OooOo0o)) {
                if (textView != null) {
                    textView.setSelected(false);
                }
            } else if (Intrinsics.c(asString, this.OooOo) && textView != null) {
                textView.setSelected(true);
            }
        }
        JsonElement jsonElement3 = jsonObject.get(this.OooOOo0);
        String asString2 = jsonElement3 != null ? jsonElement3.getAsString() : null;
        String string = "";
        if (asString2 == null) {
            asString2 = "";
        }
        if (asString2.length() > 0) {
            if (textView == null) {
                return;
            }
            textView.setText(asString2);
            return;
        }
        JsonElement jsonElement4 = jsonObject.get(this.OooOOOo);
        Object asString3 = jsonElement4 != null ? jsonElement4.getAsString() : null;
        if (asString3 == null) {
            asString3 = "";
        }
        if (Intrinsics.c(asString3, this.OooOOo)) {
            string = getString(R.string.mini_permission_allow);
        } else if (Intrinsics.c(asString3, this.OooOOoo)) {
            string = getString(R.string.mini_permission_dont_allow);
        } else if (Intrinsics.c(asString3, this.OooOo00)) {
            string = getString(R.string.mini_permission_only_this_time);
        } else if (Intrinsics.c(asString3, this.OooOo0)) {
            string = getString(R.string.mini_permission_only_use_time);
        } else if (Intrinsics.c(asString3, this.OooOo0O)) {
            string = getString(R.string.mini_permission_dont_allow_not_show);
        }
        if (textView == null) {
            return;
        }
        textView.setText(string);
    }

    public final TextView OooO0O0() {
        return (TextView) this.OooO.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0oo.getValue();
    }

    public final View OooO0Oo() {
        return (View) this.OooOO0o.getValue();
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        super.onClick(view);
        int id2 = view.getId();
        if (id2 == R.id.tv_btn_one) {
            TmcLogger.d(this.OooO00o, "click1");
            o0OOO0o o0ooo0o = this.OooO0O0;
            if (o0ooo0o != null) {
                o0ooo0o.OooO00o(1);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.tv_btn_two) {
            TmcLogger.d(this.OooO00o, "click2");
            o0OOO0o o0ooo0o2 = this.OooO0O0;
            if (o0ooo0o2 != null) {
                o0ooo0o2.OooO00o(2);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.tv_btn_three) {
            TmcLogger.d(this.OooO00o, "click3");
            o0OOO0o o0ooo0o3 = this.OooO0O0;
            if (o0ooo0o3 != null) {
                o0ooo0o3.OooO00o(3);
            }
            dismiss();
            return;
        }
        if (id2 == R.id.view_click_show_again_check) {
            this.OooOOO0 = !this.OooOOO0;
            ImageView imageView = (ImageView) this.OooOO0O.getValue();
            if (imageView != null) {
                imageView.setSelected(this.OooOOO0);
            }
            TmcLogger.d(this.OooO00o, "isNotShowAgain = " + this.OooOOO0);
            o0OOO0o o0ooo0o4 = this.OooO0O0;
            if (o0ooo0o4 != null) {
                o0ooo0o4.clickNotShowAgagin(this.OooOOO0);
            }
        }
    }
}
