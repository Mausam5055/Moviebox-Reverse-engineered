package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.adapter.NormalBaseAdapter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOOO extends NormalBaseAdapter<BottomDialog$MenuItem> {

    public final class OooO00o extends NormalBaseAdapter<BottomDialog$MenuItem>.NormalViewHolder {
        public final Lazy OooO00o;
        public final Lazy OooO0O0;
        public final Lazy OooO0OO;
        public final Lazy OooO0Oo;

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.dialog.OooOOO$OooO00o$OooO00o, reason: collision with other inner class name */
        public static final class C0325OooO00o extends Lambda implements Function0<AppCompatImageView> {
            public C0325OooO00o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_icon);
            }
        }

        public static final class OooO0O0 extends Lambda implements Function0<AppCompatImageView> {
            public OooO0O0() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_msg_badge);
            }
        }

        public static final class OooO0OO extends Lambda implements Function0<LinearLayoutCompat> {
            public OooO0OO() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (LinearLayoutCompat) OooO00o.this.findViewById(R.id.ll_bottom_item);
            }
        }

        public static final class OooO0o extends Lambda implements Function0<TextView> {
            public OooO0o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (TextView) OooO00o.this.findViewById(R.id.tv_name);
            }
        }

        public OooO00o() {
            super(R.layout.mini_item_bottom_dialog);
            this.OooO00o = LazyKt.b(new C0325OooO00o());
            this.OooO0O0 = LazyKt.b(new OooO0o());
            this.OooO0OO = LazyKt.b(new OooO0O0());
            this.OooO0Oo = LazyKt.b(new OooO0OO());
        }

        @Override // com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder
        public void onBindView(int i11) {
            BottomDialog$MenuItem item = OooOOO.this.getItem(i11);
            if (Intrinsics.c(item.getId(), TmcConstants.COLD_OPEN_TYPE)) {
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) this.OooO0Oo.getValue();
                if (linearLayoutCompat == null) {
                    return;
                }
                linearLayoutCompat.setVisibility(4);
                return;
            }
            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) this.OooO0Oo.getValue();
            if (linearLayoutCompat2 != null) {
                linearLayoutCompat2.setVisibility(0);
            }
            AppCompatImageView appCompatImageView = (AppCompatImageView) this.OooO00o.getValue();
            if (appCompatImageView != null) {
                appCompatImageView.setImageResource(item.getIcon());
            }
            TextView textView = (TextView) this.OooO0O0.getValue();
            if (textView != null) {
                textView.setText(StringExtKt.orDefault(item.getName(), ""));
            }
            if (item.getDotBadge()) {
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) this.OooO0OO.getValue();
                if (appCompatImageView2 != null) {
                    ViewExtKt.toVisible(appCompatImageView2);
                    return;
                }
                return;
            }
            AppCompatImageView appCompatImageView3 = (AppCompatImageView) this.OooO0OO.getValue();
            if (appCompatImageView3 != null) {
                ViewExtKt.toInvisible(appCompatImageView3);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooOOO(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.cloud.tmc.miniapp.base.BaseAdapter
    public RecyclerView.m generateDefaultLayoutManager(Context context) {
        Intrinsics.h(context, "context");
        return new GridLayoutManager(context, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new OooO00o();
    }
}
