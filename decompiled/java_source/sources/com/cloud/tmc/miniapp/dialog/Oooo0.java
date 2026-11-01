package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class Oooo0 extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<Oooo0> {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;

    public static final class OooO extends Lambda implements Function0<View> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return Oooo0.this.findViewById(R.id.view_line);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<ProgressBar> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ProgressBar) Oooo0.this.findViewById(R.id.pb_download_progress);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo0.this.findViewById(R.id.tv_cancel);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<TextView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo0.this.findViewById(R.id.tv_progress);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) Oooo0.this.findViewById(R.id.tv_title);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Oooo0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        LazyKt.b(new OooO0o());
        this.OooO00o = LazyKt.b(new OooO0OO());
        this.OooO0O0 = LazyKt.b(new OooO00o());
        LazyKt.b(new OooO());
        this.OooO0OO = LazyKt.b(new OooO0O0());
        setContentView(R.layout.layout_fw_update_progress);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setAnimStyle(-1);
        setOnClickListener(OooO00o());
    }

    public static final void OooO00o(Oooo0 this$0, int i11) {
        Intrinsics.h(this$0, "this$0");
        TextView textView = (TextView) this$0.OooO00o.getValue();
        if (textView != null) {
            textView.setText(i11 + "%");
        }
        ProgressBar progressBar = (ProgressBar) this$0.OooO0O0.getValue();
        if (progressBar == null) {
            return;
        }
        progressBar.setProgress(i11);
    }

    public final TextView OooO00o() {
        return (TextView) this.OooO0OO.getValue();
    }

    public final void OooO00o(final int i11) {
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.h
            @Override // java.lang.Runnable
            public final void run() {
                Oooo0.OooO00o(this.f23552a, i11);
            }
        });
    }

    @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (Intrinsics.c(view, (TextView) this.OooO0OO.getValue())) {
            Context context = getContext();
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity != null) {
                miniAppActivity.killActivity();
            }
        }
    }
}
