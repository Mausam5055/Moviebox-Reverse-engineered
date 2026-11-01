package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.adapter.NormalBaseAdapter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class o00O0O extends NormalBaseAdapter<o00Oo0> {

    public final class OooO00o extends NormalBaseAdapter<o00Oo0>.NormalViewHolder {
        public final Lazy OooO00o;
        public final Lazy OooO0O0;
        public final Lazy OooO0OO;
        public final Lazy OooO0Oo;
        public final Lazy OooO0o0;

        public static final class OooO extends Lambda implements Function0<AppCompatTextView> {
            public OooO() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatTextView) OooO00o.this.findViewById(R.id.tv_image_album_remark);
            }
        }

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.dialog.o00O0O$OooO00o$OooO00o, reason: collision with other inner class name */
        public static final class C0327OooO00o extends Lambda implements Function0<ImageLoaderProxy> {
            public static final C0327OooO00o OooO00o = new C0327OooO00o();

            public C0327OooO00o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            }
        }

        public static final class OooO0O0 extends Lambda implements Function0<AppCompatImageView> {
            public OooO0O0() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_image_album);
            }
        }

        public static final class OooO0OO extends Lambda implements Function0<LinearLayout> {
            public OooO0OO() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (LinearLayout) OooO00o.this.findViewById(R.id.ll_album_item);
            }
        }

        public static final class OooO0o extends Lambda implements Function0<AppCompatTextView> {
            public OooO0o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatTextView) OooO00o.this.findViewById(R.id.tv_image_album_name);
            }
        }

        public OooO00o() {
            super(R.layout.item_mini_image_album);
            this.OooO00o = LazyKt.b(C0327OooO00o.OooO00o);
            this.OooO0O0 = LazyKt.b(new OooO0O0());
            this.OooO0OO = LazyKt.b(new OooO0OO());
            this.OooO0Oo = LazyKt.b(new OooO0o());
            this.OooO0o0 = LazyKt.b(new OooO());
        }

        @Override // com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder
        public void onBindView(int i11) {
            o00Oo0 item = o00O0O.this.getItem(i11);
            if (item != null) {
                o00O0O o00o0o = o00O0O.this;
                AppCompatImageView appCompatImageView = (AppCompatImageView) this.OooO0O0.getValue();
                if (appCompatImageView != null) {
                    Object value = this.OooO00o.getValue();
                    Intrinsics.g(value, "<get-imageLoder>(...)");
                    ((ImageLoaderProxy) value).loadImgRoundCornersCenterCrop(o00o0o.getContext(), item.OooO00o, appCompatImageView, 8);
                }
                AppCompatTextView appCompatTextView = (AppCompatTextView) this.OooO0Oo.getValue();
                if (appCompatTextView != null) {
                    appCompatTextView.setText(item.OooO0O0);
                }
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) this.OooO0o0.getValue();
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setText(item.OooO0Oo);
                }
                if (item.OooO0o0) {
                    LinearLayout linearLayout = (LinearLayout) this.OooO0OO.getValue();
                    if (linearLayout != null) {
                        linearLayout.setBackgroundColor(o00o0o.getColor(R.color.mini_color_0affffff));
                        return;
                    }
                    return;
                }
                LinearLayout linearLayout2 = (LinearLayout) this.OooO0OO.getValue();
                if (linearLayout2 != null) {
                    linearLayout2.setBackgroundColor(0);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o00O0O(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new OooO00o();
    }
}
