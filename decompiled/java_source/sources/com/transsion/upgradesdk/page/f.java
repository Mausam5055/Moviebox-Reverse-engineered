package com.transsion.upgradesdk.page;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
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
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import bw.l;
import bw.n;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.R$id;
import com.transsion.upgradesdk.R$layout;
import com.transsion.upgradesdk.R$string;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import java.math.BigDecimal;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/upgradesdk/page/f;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "upgradesdk_release"}, k = 1, mv = {1, 9, 0})
public final class f extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f56609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f56610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f56611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f56612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f56613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f56614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f56615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public UpgradeData f56616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f56617i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f56618j = LazyKt.b(new a(this));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f56619k = LazyKt.b(new b(this));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Lazy f56620l = LazyKt.b(new e(this));

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Lazy f56621m = LazyKt.b(new c(this));

    public static void X() {
        new Handler().postDelayed(new Runnable() { // from class: aw.d
            @Override // java.lang.Runnable
            public final void run() {
                com.transsion.upgradesdk.page.f.c0();
            }
        }, 300L);
    }

    public static final void a0(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        UpgradeData upgradeData = this$0.f56616h;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            l.e(this$0.f56617i, ((Boolean) this$0.f56620l.getValue()).booleanValue(), "later", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(3);
            }
            this$0.dismiss();
            return;
        }
        l.e(this$0.f56617i, ((Boolean) this$0.f56620l.getValue()).booleanValue(), "exitapp", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback2 != null) {
            upgradeDialogCallback2.onDialogClick(2);
        }
        this$0.dismiss();
        X();
    }

    public static final boolean b0(f this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        UpgradeData upgradeData = this$0.f56616h;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        if (upgradeData.isForceUpdate()) {
            l.e(this$0.f56617i, ((Boolean) this$0.f56620l.getValue()).booleanValue(), "back_exit", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(5);
            }
            X();
            return false;
        }
        l.e(this$0.f56617i, ((Boolean) this$0.f56620l.getValue()).booleanValue(), "back", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback2 == null) {
            return false;
        }
        upgradeDialogCallback2.onDialogClick(4);
        return false;
    }

    public static final void c0() {
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static final void d0(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        l.e(this$0.f56617i, ((Boolean) this$0.f56620l.getValue()).booleanValue(), "update", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogClick(1);
        }
        UpgradeData upgradeData = this$0.f56616h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        String pkg = upgradeData.getPkg();
        UpgradeData upgradeData3 = this$0.f56616h;
        if (upgradeData3 == null) {
            Intrinsics.z("upgradeData");
            upgradeData3 = null;
        }
        int directDwl = upgradeData3.getDirectDwl();
        UpgradeData upgradeData4 = this$0.f56616h;
        if (upgradeData4 == null) {
            Intrinsics.z("upgradeData");
        } else {
            upgradeData2 = upgradeData4;
        }
        n.c(pkg, directDwl, upgradeData2.getHoverBtn(), new d(this$0));
    }

    /* JADX WARN: Code duplicated, block: B:75:0x019f  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a0 A[Catch: Exception -> 0x008f, TRY_LEAVE, TryCatch #1 {Exception -> 0x008f, blocks: (B:10:0x0079, B:12:0x0087, B:14:0x008b, B:17:0x0092, B:21:0x0099, B:23:0x00ae, B:24:0x00b2, B:25:0x00c0, B:39:0x012b, B:46:0x013f, B:48:0x0145, B:55:0x0159, B:58:0x015e, B:71:0x0190, B:72:0x0198, B:68:0x018a, B:51:0x014a, B:53:0x014e, B:54:0x0152, B:73:0x019b, B:76:0x01a0, B:42:0x0130, B:44:0x0134, B:45:0x0138, B:28:0x00c5, B:30:0x00da, B:31:0x00de, B:33:0x00e9, B:38:0x0103, B:36:0x00f8, B:37:0x00fe, B:59:0x0167, B:61:0x0176, B:64:0x0181, B:66:0x0185), top: B:83:0x0079, inners: #0 }] */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x018e, code lost:
    
        r11 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void Y(View view) {
        double d11;
        String str;
        TextView textView;
        String string;
        ImageView imageView;
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.icon_stub);
        UpgradeData upgradeData = this.f56616h;
        if (upgradeData == null) {
            Intrinsics.z("upgradeData");
            upgradeData = null;
        }
        viewStub.setLayoutResource(Intrinsics.c(upgradeData.getPkg(), "com.transsion.phonemaster") ? R$layout.layout_icon_pm_style : R$layout.layout_icon_sdk_default);
        this.f56611c = (ImageView) viewStub.inflate().findViewById(R$id.iv_icon);
        this.f56609a = (TextView) view.findViewById(R$id.tv_name);
        this.f56610b = (TextView) view.findViewById(R$id.tv_version);
        this.f56612d = (TextView) view.findViewById(R$id.tv_size);
        this.f56613e = (TextView) view.findViewById(R$id.tv_message);
        this.f56614f = (TextView) view.findViewById(R$id.tv_cancel);
        this.f56615g = (TextView) view.findViewById(R$id.tv_ok);
        try {
            Drawable drawable = yv.f.f79067o.a().e().f77449b;
            if (drawable != null && (imageView = this.f56611c) != null) {
                imageView.setImageDrawable(drawable);
            }
            TextView textView2 = this.f56610b;
            if (textView2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getString(R$string.upgrade_sdk_text_version));
                sb2.append(":  ");
                UpgradeData upgradeData2 = this.f56616h;
                if (upgradeData2 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData2 = null;
                }
                sb2.append(upgradeData2.getPkgVersionName());
                textView2.setText(sb2.toString());
            }
            TextView textView3 = this.f56612d;
            if (textView3 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getString(R$string.upgrade_sdk_text_size));
                sb3.append(":  ");
                UpgradeData upgradeData3 = this.f56616h;
                if (upgradeData3 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData3 = null;
                }
                long pkgSize = upgradeData3.getPkgSize();
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
            TextView textView4 = this.f56613e;
            if (textView4 != null) {
                UpgradeData upgradeData4 = this.f56616h;
                if (upgradeData4 == null) {
                    Intrinsics.z("upgradeData");
                    upgradeData4 = null;
                }
                textView4.setText(upgradeData4.getUpgradeMessage());
            }
            Context context = getContext();
            if (context == null) {
                textView = this.f56613e;
                if (textView == null) {
                    textView.setMovementMethod(new ScrollingMovementMethod());
                }
            } else {
                TextView textView5 = this.f56614f;
                if (textView5 != null) {
                    UpgradeData upgradeData5 = this.f56616h;
                    if (upgradeData5 == null) {
                        Intrinsics.z("upgradeData");
                        upgradeData5 = null;
                    }
                    textView5.setText(upgradeData5.getCancelButtonText(context));
                }
                TextView textView6 = this.f56609a;
                if (textView6 != null) {
                    Intrinsics.h(context, "context");
                    try {
                        ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo;
                        int i11 = applicationInfo.labelRes;
                        if (i11 != 0) {
                            string = context.getResources().getString(i11);
                        } else {
                            CharSequence charSequence = applicationInfo.nonLocalizedLabel;
                            string = charSequence != null ? charSequence.toString() : null;
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    textView6.setText(string != null ? StringsKt.n1(string).toString() : null);
                }
                textView = this.f56613e;
                if (textView == null) {
                    textView.setMovementMethod(new ScrollingMovementMethod());
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            dismiss();
        }
        e0();
    }

    public final void Z(FragmentManager manager) {
        Intrinsics.h(manager, "manager");
        if (manager.L0() || manager.T0()) {
            return;
        }
        Fragment fragmentK0 = manager.k0("UpgradeBottomDialog");
        if ((fragmentK0 == null || !fragmentK0.isAdded()) && !isAdded()) {
            show(manager, "UpgradeBottomDialog");
        }
    }

    public final void e0() {
        TextView textView = this.f56614f;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: aw.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.transsion.upgradesdk.page.f.a0(this.f16153a, view);
                }
            });
        }
        TextView textView2 = this.f56615g;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: aw.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.transsion.upgradesdk.page.f.d0(this.f16154a, view);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(((Number) this.f56621m.getValue()).intValue() == 1 ? R$layout.upgradesdk_layout_dialog_os16 : R$layout.upgradesdk_layout_dialog_os15, viewGroup, false);
        try {
            UpgradeData upgradeData = yv.f.f79067o.a().f79070b;
            Intrinsics.e(upgradeData);
            this.f56616h = upgradeData;
            if (upgradeData == null) {
                Intrinsics.z("upgradeData");
                upgradeData = null;
            }
            this.f56617i = upgradeData.isForceUpdate() ? 2 : 1;
            Intrinsics.e(viewInflate);
            Y(viewInflate);
        } catch (Exception unused) {
            dismiss();
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        yv.f fVarA = yv.f.f79067o.a();
        Intrinsics.h(this, "dialog");
        if (fVarA.f79077i == this) {
            fVarA.f79077i = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogDismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
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
        if (context2 == null || ((Boolean) this.f56620l.getValue()).booleanValue()) {
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

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: aw.a
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                    return com.transsion.upgradesdk.page.f.b0(this.f16152a, dialogInterface, i11, keyEvent);
                }
            });
        }
        Integer num = (Integer) this.f56618j.getValue();
        if (num != null) {
            int iIntValue = num.intValue();
            TextView textView = this.f56614f;
            if (textView != null) {
                textView.setTextColor(iIntValue);
            }
        }
        Integer num2 = (Integer) this.f56619k.getValue();
        if (num2 != null) {
            int iIntValue2 = num2.intValue();
            TextView textView2 = this.f56615g;
            if (textView2 != null) {
                textView2.setTextColor(iIntValue2);
            }
        }
        l.d(this.f56617i, ((Boolean) this.f56620l.getValue()).booleanValue(), com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = yv.f.f79067o.a().f79075g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogShow();
        }
    }
}
