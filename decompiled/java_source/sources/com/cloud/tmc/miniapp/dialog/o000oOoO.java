package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.cloud.tmc.miniapp.R;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class o000oOoO extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<o000oOoO> {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public o0OoOo0 OooO0o;
    public final Lazy OooO0o0;

    public static final class OooO extends Lambda implements Function0<TextView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000oOoO.this.findViewById(R.id.txt_common_dialog_title);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<TextView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000oOoO.this.findViewById(R.id.btn_common_dialog_left);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000oOoO.this.findViewById(R.id.btn_common_dialog_right);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<TextView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000oOoO.this.findViewById(R.id.tv_download_size);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000oOoO.this.findViewById(R.id.txt_common_dialog_describe);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o000oOoO(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO());
        this.OooO0O0 = LazyKt.b(new OooO0o());
        this.OooO0OO = LazyKt.b(new OooO00o());
        this.OooO0Oo = LazyKt.b(new OooO0O0());
        this.OooO0o0 = LazyKt.b(new OooO0OO());
        setContentView(R.layout.layout_fw_update_tips);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setAnimStyle(-1);
        TextView textViewOooO00o = OooO00o();
        if (textViewOooO00o != null) {
            textViewOooO00o.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o000oOoO.OooO00o(this.f23554a, view);
                }
            });
        }
        TextView textViewOooO0O0 = OooO0O0();
        if (textViewOooO0O0 != null) {
            textViewOooO0O0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o000oOoO.OooO0O0(this.f23555a, view);
                }
            });
        }
    }

    public static final void OooO00o(o000oOoO this$0, View it) {
        Intrinsics.h(this$0, "this$0");
        o0OoOo0 o0oooo0 = this$0.OooO0o;
        if (o0oooo0 != null) {
            Intrinsics.g(it, "it");
            o0oooo0.OooO00o(it);
        }
    }

    public static final void OooO0O0(o000oOoO this$0, View it) {
        Intrinsics.h(this$0, "this$0");
        o0OoOo0 o0oooo0 = this$0.OooO0o;
        if (o0oooo0 != null) {
            Intrinsics.g(it, "it");
            o0oooo0.OooO0O0(it);
        }
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final String OooO00o(long j11) {
        float f11 = j11 / 1000.0f;
        if (f11 < 1000.0f) {
            return ((int) f11) + " KB";
        }
        DecimalFormat decimalFormat = new DecimalFormat("0.##");
        decimalFormat.setRoundingMode(RoundingMode.FLOOR);
        String str = decimalFormat.format(f11 / 1000.0f);
        Intrinsics.g(str, "format.format(number)");
        return str + " MB";
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
}
