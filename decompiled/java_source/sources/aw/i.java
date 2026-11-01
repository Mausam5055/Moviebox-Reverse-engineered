package aw;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import bw.l;
import bw.n;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.R$id;
import com.transsion.upgradesdk.R$layout;
import com.transsion.upgradesdk.R$string;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.page.j;
import com.transsion.upgradesdk.page.k;
import java.math.BigDecimal;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f16158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f16159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f16160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f16161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f16162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f16163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f16164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public UpgradeData f16165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16166i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f16167j = LazyKt.b(new com.transsion.upgradesdk.page.g(this));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f16168k = LazyKt.b(new com.transsion.upgradesdk.page.h(this));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Lazy f16169l = LazyKt.b(new k(this));

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Lazy f16170m = LazyKt.b(new com.transsion.upgradesdk.page.i(this));

    public static void a() {
        new Handler().postDelayed(new Runnable() { // from class: aw.h
            @Override // java.lang.Runnable
            public final void run() {
                i.e();
            }
        }, 300L);
    }

    public static final void c(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        UpgradeData upgradeData = this$0.f16165h;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            l.e(this$0.f16166i, ((Boolean) this$0.f16169l.getValue()).booleanValue(), "later", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(3);
            }
            this$0.dismiss();
            return;
        }
        l.e(this$0.f16166i, ((Boolean) this$0.f16169l.getValue()).booleanValue(), "exitapp", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback2 != null) {
            upgradeDialogCallback2.onDialogClick(2);
        }
        this$0.dismiss();
        a();
    }

    public static final boolean d(i this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        UpgradeData upgradeData = this$0.f16165h;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        if (upgradeData.isForceUpdate()) {
            l.e(this$0.f16166i, ((Boolean) this$0.f16169l.getValue()).booleanValue(), "back_exit", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(5);
            }
            a();
            return false;
        }
        l.e(this$0.f16166i, ((Boolean) this$0.f16169l.getValue()).booleanValue(), "back", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback2 == null) {
            return false;
        }
        upgradeDialogCallback2.onDialogClick(4);
        return false;
    }

    public static final void e() {
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static final void f(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        l.e(this$0.f16166i, ((Boolean) this$0.f16169l.getValue()).booleanValue(), "update", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogClick(1);
        }
        UpgradeData upgradeData = this$0.f16165h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        String pkg = upgradeData.getPkg();
        UpgradeData upgradeData3 = this$0.f16165h;
        if (upgradeData3 == null) {
            Intrinsics.z("upgradeData");
            upgradeData3 = null;
        }
        int directDwl = upgradeData3.getDirectDwl();
        UpgradeData upgradeData4 = this$0.f16165h;
        if (upgradeData4 == null) {
            Intrinsics.z("upgradeData");
        } else {
            upgradeData2 = upgradeData4;
        }
        n.c(pkg, directDwl, upgradeData2.getHoverBtn(), new j(this$0));
    }

    public final void b(View view) {
        double d11;
        String str;
        ImageView imageView;
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.icon_stub);
        UpgradeData upgradeData = this.f16165h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        viewStub.setLayoutResource(Intrinsics.c(upgradeData.getPkg(), "com.transsion.phonemaster") ? R$layout.layout_icon_pm_style : R$layout.layout_icon_sdk_default);
        this.f16160c = (ImageView) viewStub.inflate().findViewById(R$id.iv_icon);
        this.f16158a = (TextView) view.findViewById(R$id.tv_name);
        this.f16159b = (TextView) view.findViewById(R$id.tv_version);
        this.f16161d = (TextView) view.findViewById(R$id.tv_size);
        this.f16162e = (TextView) view.findViewById(R$id.tv_message);
        this.f16163f = (TextView) view.findViewById(R$id.tv_cancel);
        this.f16164g = (TextView) view.findViewById(R$id.tv_ok);
        try {
            TextView textView = this.f16158a;
            if (textView != null) {
                textView.setText(StringsKt.n1(yv.f.f79067o.a().e().f77450c).toString());
            }
            Drawable drawable = yv.f.f79067o.a().e().f77449b;
            if (drawable != null && (imageView = this.f16160c) != null) {
                imageView.setImageDrawable(drawable);
            }
            TextView textView2 = this.f16159b;
            if (textView2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getString(R$string.upgrade_sdk_text_version));
                sb2.append(":  ");
                UpgradeData upgradeData3 = this.f16165h;
                if (upgradeData3 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData3 = null;
                }
                sb2.append(upgradeData3.getPkgVersionName());
                textView2.setText(sb2.toString());
            }
            TextView textView3 = this.f16161d;
            if (textView3 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getString(R$string.upgrade_sdk_text_size));
                sb3.append(":  ");
                UpgradeData upgradeData4 = this.f16165h;
                if (upgradeData4 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData4 = null;
                }
                long pkgSize = upgradeData4.getPkgSize();
                if (pkgSize < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                    d11 = pkgSize / 1024;
                    str = "K";
                } else if (pkgSize < 1073741824) {
                    d11 = pkgSize / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    str = "M";
                } else {
                    d11 = pkgSize / 1073741824;
                    str = "G";
                }
                sb3.append(new BigDecimal(d11).setScale(1, 4).doubleValue() + str);
                textView3.setText(sb3.toString());
            }
            TextView textView4 = this.f16162e;
            if (textView4 != null) {
                UpgradeData upgradeData5 = this.f16165h;
                if (upgradeData5 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData5 = null;
                }
                textView4.setText(upgradeData5.getUpgradeMessage());
            }
            TextView textView5 = this.f16163f;
            if (textView5 != null) {
                UpgradeData upgradeData6 = this.f16165h;
                if (upgradeData6 == null) {
                    Intrinsics.z("upgradeData");
                } else {
                    upgradeData2 = upgradeData6;
                }
                Context context = textView5.getContext();
                Intrinsics.g(context, "getContext(...)");
                textView5.setText(upgradeData2.getCancelButtonText(context));
            }
            TextView textView6 = this.f16162e;
            if (textView6 != null) {
                textView6.setMovementMethod(new ScrollingMovementMethod());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            dismiss();
        }
        g();
    }

    public final void g() {
        TextView textView = this.f16163f;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: aw.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.c(this.f16155a, view);
                }
            });
        }
        TextView textView2 = this.f16164g;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: aw.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.f(this.f16156a, view);
                }
            });
        }
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(((Number) this.f16170m.getValue()).intValue() == 1 ? R$layout.upgradesdk_layout_dialog_os16 : R$layout.upgradesdk_layout_dialog_os15, viewGroup, false);
        try {
            UpgradeData upgradeData = yv.f.f79067o.a().f79070b;
            Intrinsics.e(upgradeData);
            this.f16165h = upgradeData;
            if (upgradeData == null) {
                Intrinsics.z("upgradeData");
                upgradeData = null;
            }
            this.f16166i = upgradeData.isForceUpdate() ? 2 : 1;
            Intrinsics.e(viewInflate);
            b(viewInflate);
        } catch (Exception unused) {
            dismiss();
        }
        return viewInflate;
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        yv.f fVarA = yv.f.f79067o.a();
        Intrinsics.h(this, "dialog");
        if (fVarA.f79078j == this) {
            fVarA.f79078j = null;
        }
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogDismiss();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        Window window;
        Context context;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (context = getContext()) != null) {
            Intrinsics.e(context);
            bw.d.a(window, context);
        }
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Context context2 = getContext();
        if (context2 == null || ((Boolean) this.f16169l.getValue()).booleanValue()) {
            return;
        }
        bw.h hVar = bw.i.f16941b;
        bw.i iVarA = hVar.a(context2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.h("KV_UPGRADE_POPUP_LAST_TIME", "key");
        MMKV mmkv = iVarA.f16943a;
        if (mmkv != null) {
            mmkv.t("KV_UPGRADE_POPUP_LAST_TIME", jCurrentTimeMillis);
        }
        bw.i iVarA2 = hVar.a(context2);
        Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
        MMKV mmkv2 = iVarA2.f16943a;
        int iG = (mmkv2 != null ? mmkv2.g("KV_UPGRADE_POPUP_TIMES", 0) : 0) + 1;
        bw.i iVarA3 = hVar.a(context2);
        Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
        MMKV mmkv3 = iVarA3.f16943a;
        if (mmkv3 != null) {
            mmkv3.s("KV_UPGRADE_POPUP_TIMES", iG);
        }
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: aw.g
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                    return i.d(this.f16157a, dialogInterface, i11, keyEvent);
                }
            });
        }
        Integer num = (Integer) this.f16167j.getValue();
        if (num != null) {
            int iIntValue = num.intValue();
            TextView textView = this.f16163f;
            if (textView != null) {
                textView.setTextColor(iIntValue);
            }
        }
        Integer num2 = (Integer) this.f16168k.getValue();
        if (num2 != null) {
            int iIntValue2 = num2.intValue();
            TextView textView2 = this.f16164g;
            if (textView2 != null) {
                textView2.setTextColor(iIntValue2);
            }
        }
        l.d(this.f16166i, ((Boolean) this.f16169l.getValue()).booleanValue(), com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogShow();
        }
    }
}
