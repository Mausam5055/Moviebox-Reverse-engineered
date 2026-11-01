package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.R;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOo00 extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<OooOo00> {
    public final Lazy OooO;
    public final boolean OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public final Lazy OooOO0;
    public final Lazy OooOO0O;
    public OooOo OooOO0o;

    public static final class OooO extends Lambda implements Function0<FrameLayout> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (FrameLayout) OooOo00.this.findViewById(R.id.fl_text_panel);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<View> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return OooOo00.this.findViewById(R.id.view_halving_line);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooOo00.this.findViewById(R.id.btn_common_dialog_left);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<TextView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooOo00.this.findViewById(R.id.btn_common_dialog_right);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<FrameLayout> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (FrameLayout) OooOo00.this.findViewById(R.id.fl_edit_panel);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<TextView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooOo00.this.findViewById(R.id.txt_common_dialog_describe);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooOo00.this.findViewById(R.id.txt_common_dialog_edit);
        }
    }

    public static final class OooOOO extends Lambda implements Function0<View> {
        public OooOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return OooOo00.this.findViewById(R.id.view_line_bottom);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<TextView> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) OooOo00.this.findViewById(R.id.txt_common_dialog_title);
        }
    }

    public static final class OooOOOO extends Lambda implements Function0<View> {
        public OooOOOO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return OooOo00.this.findViewById(R.id.view_line_top);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooOo00(Context context, boolean z10) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = z10;
        this.OooO0O0 = LazyKt.b(new OooOOOO());
        this.OooO0OO = LazyKt.b(new OooOOO());
        this.OooO0Oo = LazyKt.b(new OooO());
        this.OooO0o0 = LazyKt.b(new OooO0o());
        this.OooO0o = LazyKt.b(new OooOOO0());
        this.OooO0oO = LazyKt.b(new OooOO0());
        this.OooO0oo = LazyKt.b(new OooOO0O());
        this.OooO = LazyKt.b(new OooO0O0());
        this.OooOO0 = LazyKt.b(new OooO0OO());
        this.OooOO0O = LazyKt.b(new OooO00o());
        setContentView(z10 ? R.layout.layout_common_tip_confirm_dialog : R.layout.layout_common_tip_confirm_normal_dialog);
        setBackgroundDimAmount(0.2f);
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            textViewOooO0Oo.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OooOo00.OooO00o(this.f23548a, view);
                }
            });
        }
        TextView textViewOooO0o0 = OooO0o0();
        if (textViewOooO0o0 != null) {
            textViewOooO0o0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OooOo00.OooO0O0(this.f23549a, view);
                }
            });
        }
        TextView textViewOooO0o = OooO0o();
        if (textViewOooO0o != null) {
            textViewOooO0o.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.cloud.tmc.miniapp.dialog.f
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                    OooOo00.OooO00o(this.f23550a, view, i11, i12, i13, i14);
                }
            });
        }
    }

    public static final void OooO00o(OooOo00 this_apply) {
        Intrinsics.h(this_apply, "$this_apply");
        TextView textViewOooO0o = this_apply.OooO0o();
        if ((textViewOooO0o != null ? textViewOooO0o.getHeight() : 0) >= ((int) this_apply.getResources().getDimension(R.dimen.mini_dp_216))) {
            View viewOooOO0 = this_apply.OooOO0();
            if (viewOooOO0 != null) {
                ViewExtKt.toInvisible(viewOooOO0);
            }
            View viewOooO = this_apply.OooO();
            if (viewOooO != null) {
                ViewExtKt.toVisible(viewOooO);
                return;
            }
            return;
        }
        View viewOooOO1 = this_apply.OooOO0();
        if (viewOooOO1 != null) {
            ViewExtKt.toGone(viewOooOO1);
        }
        View viewOooO2 = this_apply.OooO();
        if (viewOooO2 != null) {
            ViewExtKt.toGone(viewOooO2);
        }
    }

    public static final void OooO00o(OooOo00 this$0, View it) {
        Intrinsics.h(this$0, "this$0");
        OooOo oooOo = this$0.OooOO0o;
        if (oooOo != null) {
            Intrinsics.g(it, "it");
            oooOo.OooO00o(it);
        }
        this$0.dismiss();
    }

    public static final void OooO00o(OooOo00 this$0, View view, int i11, int i12, int i13, int i14) {
        View viewOooOO0;
        View viewOooOO1;
        View viewOooO;
        View viewOooO2;
        View viewOooO3;
        View viewOooOO2;
        Intrinsics.h(this$0, "this$0");
        if (i12 <= 0) {
            View viewOooOO3 = this$0.OooOO0();
            if ((viewOooOO3 == null || viewOooOO3.getVisibility() != 4) && (viewOooOO2 = this$0.OooOO0()) != null) {
                ViewExtKt.toInvisible(viewOooOO2);
            }
        } else {
            View viewOooOO4 = this$0.OooOO0();
            if (i12 <= (viewOooOO4 != null ? viewOooOO4.getHeight() : 1)) {
                View viewOooOO5 = this$0.OooOO0();
                if ((viewOooOO5 == null || viewOooOO5.getVisibility() != 0) && (viewOooOO1 = this$0.OooOO0()) != null) {
                    ViewExtKt.toVisible(viewOooOO1);
                }
                float f11 = i12;
                View viewOooOO6 = this$0.OooOO0();
                float height = f11 / (viewOooOO6 != null ? viewOooOO6.getHeight() : 1);
                View viewOooOO7 = this$0.OooOO0();
                if (viewOooOO7 != null) {
                    viewOooOO7.setAlpha(1 * height);
                }
            } else {
                View viewOooOO8 = this$0.OooOO0();
                if (!Intrinsics.b(viewOooOO8 != null ? Float.valueOf(viewOooOO8.getAlpha()) : null, 1.0f) && (viewOooOO0 = this$0.OooOO0()) != null) {
                    viewOooOO0.setAlpha(1.0f);
                }
            }
        }
        TextView textViewOooO0o = this$0.OooO0o();
        int lineHeight = textViewOooO0o != null ? textViewOooO0o.getLineHeight() : 1;
        TextView textViewOooO0o2 = this$0.OooO0o();
        int lineCount = (lineHeight * (textViewOooO0o2 != null ? textViewOooO0o2.getLineCount() : 1)) - view.getHeight();
        if (i12 >= lineCount) {
            View viewOooO4 = this$0.OooO();
            if ((viewOooO4 == null || viewOooO4.getVisibility() != 4) && (viewOooO3 = this$0.OooO()) != null) {
                ViewExtKt.toInvisible(viewOooO3);
                return;
            }
            return;
        }
        int i15 = lineCount - i12;
        View viewOooO5 = this$0.OooO();
        if (i15 > (viewOooO5 != null ? viewOooO5.getHeight() : 1)) {
            View viewOooO6 = this$0.OooO();
            if (Intrinsics.b(viewOooO6 != null ? Float.valueOf(viewOooO6.getAlpha()) : null, 1.0f) || (viewOooO = this$0.OooO()) == null) {
                return;
            }
            viewOooO.setAlpha(1.0f);
            return;
        }
        View viewOooO7 = this$0.OooO();
        if ((viewOooO7 == null || viewOooO7.getVisibility() != 0) && (viewOooO2 = this$0.OooO()) != null) {
            ViewExtKt.toVisible(viewOooO2);
        }
        float f12 = i15;
        View viewOooO8 = this$0.OooO();
        float height2 = f12 / (viewOooO8 != null ? viewOooO8.getHeight() : 1);
        View viewOooO9 = this$0.OooO();
        if (viewOooO9 == null) {
            return;
        }
        viewOooO9.setAlpha(1 * height2);
    }

    public static final void OooO0O0(OooOo00 this$0, View it) {
        Intrinsics.h(this$0, "this$0");
        OooOo oooOo = this$0.OooOO0o;
        if (oooOo != null) {
            Intrinsics.g(it, "it");
            oooOo.OooO0O0(it);
        }
        this$0.dismiss();
    }

    public final View OooO() {
        return (View) this.OooO0OO.getValue();
    }

    public final OooOo00 OooO00o(int i11) {
        if (i11 > 0) {
            TextView textViewOooO0o = OooO0o();
            if (textViewOooO0o != null) {
                textViewOooO0o.setMaxLines(i11);
            }
            TextView textViewOooO0o2 = OooO0o();
            if (textViewOooO0o2 != null) {
                textViewOooO0o2.setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            OooO00o(true);
        }
        return this;
    }

    public final OooOo00 OooO00o(OooOo listener) {
        Intrinsics.h(listener, "listener");
        this.OooOO0o = listener;
        return this;
    }

    public final OooOo00 OooO00o(String str) {
        TextView textViewOooO0oO;
        FrameLayout frameLayout = (FrameLayout) this.OooO0Oo.getValue();
        if (frameLayout == null || !ViewExtKt.getVisible(frameLayout)) {
            FrameLayout frameLayout2 = (FrameLayout) this.OooO0o0.getValue();
            if (frameLayout2 != null && ViewExtKt.getVisible(frameLayout2) && (textViewOooO0oO = OooO0oO()) != null) {
                textViewOooO0oO.setText(str);
            }
        } else {
            TextView textViewOooO0o = OooO0o();
            if (textViewOooO0o != null) {
                textViewOooO0o.setText(str);
            }
            TextView textViewOooO0o2 = OooO0o();
            if (textViewOooO0o2 != null) {
                ViewExtKt.toVisible(textViewOooO0o2);
            }
            OooO0OO();
            TextView textViewOooO0o3 = OooO0o();
            if (textViewOooO0o3 != null) {
                textViewOooO0o3.postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooOo00.OooO00o(this.f23551a);
                    }
                }, 10L);
            }
        }
        return this;
    }

    public final OooOo00 OooO00o(boolean z10) {
        if (z10) {
            TextView textViewOooO0o = OooO0o();
            if (textViewOooO0o != null) {
                textViewOooO0o.setMovementMethod(ScrollingMovementMethod.getInstance());
            }
        } else {
            TextView textViewOooO0o2 = OooO0o();
            if (textViewOooO0o2 != null) {
                textViewOooO0o2.setMovementMethod(null);
            }
        }
        return this;
    }

    public final String OooO00o(String str, int i11) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (str.length() < i11) {
            return str;
        }
        String strSubstring = str.substring(0, i11);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring + "...";
    }

    public final void OooO00o() {
        TextView textViewOooO0o0;
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo == null || !ViewExtKt.getVisible(textViewOooO0Oo) || (textViewOooO0o0 = OooO0o0()) == null || !ViewExtKt.getVisible(textViewOooO0o0)) {
            TextView textViewOooO0o1 = OooO0o0();
            if (textViewOooO0o1 != null) {
                textViewOooO0o1.setBackgroundResource(this.OooO00o ? R.drawable.shape_mini_common_tip_confirm_dialog_click : R.drawable.shape_mini_common_tip_confirm_normal_dialog_click);
                return;
            }
            return;
        }
        TextView textViewOooO0o2 = OooO0o0();
        if (textViewOooO0o2 != null) {
            textViewOooO0o2.setBackgroundResource(this.OooO00o ? R.drawable.shape_mini_common_tip_confirm_dialog_right_click : R.drawable.shape_mini_common_tip_confirm_normal_dialog_right_click);
        }
    }

    public final OooOo00 OooO0O0(int i11) {
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            textViewOooO0Oo.setTextColor(i11);
        }
        return this;
    }

    public final OooOo00 OooO0O0(String str) {
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            textViewOooO0Oo.setText(OooO00o(str, 12));
        }
        return this;
    }

    public final OooOo00 OooO0O0(boolean z10) {
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            ViewExtKt.toVisibleOrGone(textViewOooO0Oo, z10);
        }
        OooO00o();
        OooO0O0();
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    public final void OooO0O0() {
        boolean z10;
        TextView textViewOooO0Oo = OooO0Oo();
        if (textViewOooO0Oo != null) {
            z10 = ViewExtKt.getVisible(textViewOooO0Oo);
        }
        View view = (View) this.OooOO0O.getValue();
        if (view != null) {
            ViewExtKt.toVisibleOrGone(view, z10);
        }
    }

    public final OooOo00 OooO0OO(int i11) {
        TextView textViewOooO0o0 = OooO0o0();
        if (textViewOooO0o0 != null) {
            textViewOooO0o0.setTextColor(i11);
        }
        return this;
    }

    public final OooOo00 OooO0OO(String str) {
        TextView textViewOooO0o0 = OooO0o0();
        if (textViewOooO0o0 != null) {
            TextView textViewOooO0Oo = OooO0Oo();
            textViewOooO0o0.setText(OooO00o(str, (textViewOooO0Oo == null || !ViewExtKt.getVisible(textViewOooO0Oo)) ? 24 : 12));
        }
        OooO00o();
        OooO0O0();
        return this;
    }

    public final void OooO0OO() {
        TextView textViewOooO0o;
        TextView textViewOooO0o2;
        TextView textViewOooO0o3;
        TextView textViewOooO0oo = OooO0oo();
        if (textViewOooO0oo != null && ViewExtKt.getVisible(textViewOooO0oo) && (textViewOooO0o3 = OooO0o()) != null && ViewExtKt.getVisible(textViewOooO0o3)) {
            TextView textViewOooO0oo2 = OooO0oo();
            if (textViewOooO0oo2 != null) {
                textViewOooO0oo2.setTextColor(getColor(this.OooO00o ? R.color.mini_confirm_dialog_title_color : R.color.mini_confirm_normal_dialog_title_color));
            }
            TextView textViewOooO0o4 = OooO0o();
            if (textViewOooO0o4 != null) {
                textViewOooO0o4.setTextColor(getColor(this.OooO00o ? R.color.mini_confirm_dialog_describe_color : R.color.mini_confirm_normal_dialog_describe_color));
                return;
            }
            return;
        }
        TextView textViewOooO0oo3 = OooO0oo();
        if (textViewOooO0oo3 == null || ViewExtKt.getVisible(textViewOooO0oo3) || (textViewOooO0o = OooO0o()) == null || !ViewExtKt.getVisible(textViewOooO0o) || (textViewOooO0o2 = OooO0o()) == null) {
            return;
        }
        textViewOooO0o2.setTextColor(getColor(this.OooO00o ? R.color.mini_confirm_dialog_title_color : R.color.mini_confirm_normal_dialog_title_color));
    }

    public final TextView OooO0Oo() {
        return (TextView) this.OooO.getValue();
    }

    public final OooOo00 OooO0Oo(String str) {
        TextView textViewOooO0oo = OooO0oo();
        if (textViewOooO0oo != null) {
            textViewOooO0oo.setText(str);
        }
        TextView textViewOooO0oo2 = OooO0oo();
        if (textViewOooO0oo2 != null) {
            ViewExtKt.toVisible(textViewOooO0oo2);
        }
        OooO0OO();
        return this;
    }

    public final TextView OooO0o() {
        return (TextView) this.OooO0oO.getValue();
    }

    public final TextView OooO0o0() {
        return (TextView) this.OooOO0.getValue();
    }

    public final TextView OooO0oO() {
        return (TextView) this.OooO0oo.getValue();
    }

    public final TextView OooO0oo() {
        return (TextView) this.OooO0o.getValue();
    }

    public final View OooOO0() {
        return (View) this.OooO0O0.getValue();
    }
}
