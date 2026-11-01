package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.adapter.NormalBaseAdapter;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o extends NormalBaseAdapter<BottomActionSheetDialog$ActionItem> {
    public final Lazy OooO00o;
    public String OooO0O0;
    public String OooO0OO;

    public final class OooO00o extends NormalBaseAdapter<BottomActionSheetDialog$ActionItem>.NormalViewHolder {
        public final Lazy OooO00o;
        public final Lazy OooO0O0;
        public final Lazy OooO0OO;

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.dialog.OooO0o$OooO00o$OooO00o, reason: collision with other inner class name */
        public static final class C0323OooO00o extends Lambda implements Function0<AppCompatImageView> {
            public C0323OooO00o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (AppCompatImageView) OooO00o.this.findViewById(R.id.iv_icon);
            }
        }

        public static final class OooO0O0 extends Lambda implements Function0<RelativeLayout> {
            public OooO0O0() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (RelativeLayout) OooO00o.this.findViewById(R.id.rl_container);
            }
        }

        public static final class OooO0OO extends Lambda implements Function0<TextView> {
            public OooO0OO() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                return (TextView) OooO00o.this.findViewById(R.id.tv_name);
            }
        }

        public OooO00o() {
            super(R.layout.mini_item_bottom_action_sheet_dialog);
            this.OooO00o = LazyKt.b(new OooO0O0());
            this.OooO0O0 = LazyKt.b(new C0323OooO00o());
            this.OooO0OO = LazyKt.b(new OooO0OO());
        }

        public final RelativeLayout OooO00o() {
            return (RelativeLayout) this.OooO00o.getValue();
        }

        @Override // com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder
        public void onBindView(int i11) {
            RelativeLayout relativeLayoutOooO00o;
            String icon;
            BottomActionSheetDialog$ActionItem item = OooO0o.this.getItem(i11);
            boolean z10 = (!Intrinsics.c(OooO0o.this.OooO0O0, RewardPlus.ICON) || (icon = item.getIcon()) == null || icon.length() == 0) ? false : true;
            boolean z11 = OooO0o.this.getCount() - 1 == i11 && Intrinsics.c(item.getId(), "Cancel");
            AppCompatImageView appCompatImageView = (AppCompatImageView) this.OooO0O0.getValue();
            if (appCompatImageView != null) {
                OooO0o oooO0o = OooO0o.this;
                if (z11) {
                    ViewExtKt.toGone(appCompatImageView);
                } else {
                    ViewExtKt.toVisibleOrGone(appCompatImageView, z10);
                    if (z10) {
                        String icon2 = item.getIcon();
                        String str = oooO0o.OooO0OO;
                        com.cloud.tmc.miniapp.dialog.OooO0OO oooO0OO = new com.cloud.tmc.miniapp.dialog.OooO0OO(appCompatImageView);
                        if (icon2 == null || icon2.length() == 0) {
                            oooO0OO.invoke(null);
                        } else if (!RegexUtils.isURL(icon2) || StringsKt.c0(icon2, ".miniapp.transsion.com", false, 2, null)) {
                            Object value = OooO0o.this.OooO00o.getValue();
                            Intrinsics.g(value, "<get-processor>(...)");
                            File file = ((IResourceProcessor) value).get(icon2, str);
                            oooO0OO.invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
                        } else {
                            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new OooO(OooO0o.this, icon2, str, this, oooO0OO, null), 3, null);
                        }
                    }
                }
            }
            TextView textView = (TextView) this.OooO0OO.getValue();
            if (textView != null) {
                textView.setText(StringExtKt.orDefault(item.getText(), ""));
                try {
                    if (item.getEnable()) {
                        String color = item.getColor();
                        if (color != null && color.length() != 0) {
                            textView.setTextColor(Color.parseColor(item.getColor()));
                        }
                    } else if (item.getDisabledColor().length() > 0) {
                        textView.setTextColor(Color.parseColor(item.getDisabledColor()));
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("BottomActionSheetDialog", th2);
                }
            }
            try {
                if (z11) {
                    RelativeLayout relativeLayoutOooO00o2 = OooO00o();
                    if (relativeLayoutOooO00o2 != null) {
                        relativeLayoutOooO00o2.setGravity(17);
                    }
                } else {
                    RelativeLayout relativeLayoutOooO00o3 = OooO00o();
                    if (relativeLayoutOooO00o3 != null) {
                        relativeLayoutOooO00o3.setGravity(z10 ? GravityCompat.START : 17);
                    }
                }
                if (item.getEnable() && (relativeLayoutOooO00o = OooO00o()) != null) {
                    StateListDrawable stateListDrawable = new StateListDrawable();
                    stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(Color.parseColor(StringExtKt.orDefault(item.getMaskColor(), "#0F191F2B"))));
                    stateListDrawable.addState(new int[]{-16842919}, new ColorDrawable(0));
                    relativeLayoutOooO00o.setForeground(stateListDrawable);
                }
            } catch (Throwable th3) {
                TmcLogger.e("BottomActionSheetDialog", th3);
            }
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<IResourceProcessor> {
        public static final OooO0O0 OooO00o = new OooO0O0();

        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0o(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(OooO0O0.OooO00o);
        this.OooO0O0 = MimeTypes.BASE_TYPE_TEXT;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new OooO00o();
    }
}
