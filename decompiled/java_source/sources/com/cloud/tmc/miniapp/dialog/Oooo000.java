package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class Oooo000 extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<Oooo000> {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;

    public static final class OooO00o extends Lambda implements Function0<TextView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo000.this.findViewById(R.id.btn_common_dialog_left);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo000.this.findViewById(R.id.btn_common_dialog_right);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<TextView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo000.this.findViewById(R.id.txt_common_dialog_describe);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo000.this.findViewById(R.id.txt_common_dialog_title);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Oooo000(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO0o());
        this.OooO0O0 = LazyKt.b(new OooO0OO());
        this.OooO0OO = LazyKt.b(new OooO00o());
        this.OooO0Oo = LazyKt.b(new OooO0O0());
        setContentView(R.layout.layout_fw_update_tips);
        setCanceledOnTouchOutside(false);
        setAnimStyle(-1);
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            textViewOooO0Oo.setText(getString(R.string.mini_dialog_download_error_title));
        }
        TextView textViewOooO0OO = OooO0OO();
        if (textViewOooO0OO != null) {
            textViewOooO0OO.setText(getString(R.string.mini_dialog_download_error_content));
        }
        TextView textViewOooO00o = OooO00o();
        if (textViewOooO00o != null) {
            textViewOooO00o.setText(getString(R.string.mini_text_cancel));
        }
        TextView textViewOooO0O0 = OooO0O0();
        if (textViewOooO0O0 != null) {
            textViewOooO0O0.setText(getString(R.string.mini_dialog_download_error_retry_btn));
        }
        setOnClickListener(OooO00o(), OooO0O0());
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final TextView OooO0O0() {
        return (TextView) this.OooO0Oo.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0O0.getValue();
    }

    public final TextView OooO0Oo() {
        return (TextView) this.OooO00o.getValue();
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (Intrinsics.c(view, OooO00o())) {
            Context context = getContext();
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity != null) {
                miniAppActivity.killActivity();
                return;
            }
            return;
        }
        if (Intrinsics.c(view, OooO0O0())) {
            Context context2 = getContext();
            MiniAppActivity miniAppActivity2 = context2 instanceof MiniAppActivity ? (MiniAppActivity) context2 : null;
            if (miniAppActivity2 != null) {
                MiniAppActivity.reload$default(miniAppActivity2, false, null, 3, null);
            }
            dismiss();
        }
    }
}
