package com.cloud.hisavana.sdk.common.util;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$style;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class v extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f22197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f22198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f22199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f22200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f22201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f22202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f22203g;

    public interface a {

        /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.util.v$a$a, reason: collision with other inner class name */
        public static final class C0305a {
            public static void a(a aVar) {
            }

            public static void b(a aVar) {
            }

            public static void c(a aVar) {
            }
        }

        void a();

        void b();

        void c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(Context context, a aVar) {
        super(context, R$style.HSDialogTheme);
        Intrinsics.h(context, "context");
        this.f22197a = aVar;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.hs_confirm_dialog_layout, (ViewGroup) null);
        setContentView(viewInflate);
        setCancelable(false);
        this.f22198b = (TextView) viewInflate.findViewById(R$id.title);
        this.f22199c = (TextView) viewInflate.findViewById(R$id.content);
        TextView textView = (TextView) viewInflate.findViewById(R$id.positive);
        this.f22200d = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.util.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v.d(this.f22194a, view);
                }
            });
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.negative);
        this.f22201e = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.util.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v.e(this.f22195a, view);
                }
            });
        }
        this.f22203g = viewInflate.findViewById(R$id.separator_v);
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.confirm);
        this.f22202f = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.util.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    v.f(this.f22196a, view);
                }
            });
        }
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f22197a;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f22197a;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f22197a;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void g(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.f22202f;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void h(String content) {
        Intrinsics.h(content, "content");
        TextView textView = this.f22199c;
        if (textView != null) {
            textView.setText(content);
        }
    }

    public final void i(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.f22200d;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void j(boolean z10) {
        TextView textView = this.f22202f;
        if (textView != null) {
            textView.setVisibility(z10 ? 0 : 8);
        }
        TextView textView2 = this.f22200d;
        if (textView2 != null) {
            textView2.setVisibility(z10 ? 8 : 0);
        }
        TextView textView3 = this.f22201e;
        if (textView3 != null) {
            textView3.setVisibility(z10 ? 8 : 0);
        }
        View view = this.f22203g;
        if (view == null) {
            return;
        }
        view.setVisibility(z10 ? 8 : 0);
    }

    public final void k(String title) {
        Intrinsics.h(title, "title");
        TextView textView = this.f22198b;
        if (textView != null) {
            textView.setText(title);
        }
    }

    public final void l() {
        float f11 = getContext().getResources().getConfiguration().orientation == 2 ? 0.5f : 0.9f;
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) (getContext().getResources().getDisplayMetrics().widthPixels * f11), -2);
        }
    }
}
