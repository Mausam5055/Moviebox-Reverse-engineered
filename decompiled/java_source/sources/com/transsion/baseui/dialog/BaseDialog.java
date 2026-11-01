package com.transsion.baseui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import ck.g;
import ck.u;
import com.blankj.utilcode.util.d;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.a;
import hj.b;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import z0.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007J!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0017\u0010\u000eJ#\u0010\u0018\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\fH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\fH\u0016¢\u0006\u0004\b!\u0010\u0004J\u0011\u0010\"\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\"\u0010\u0015J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\f2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-R\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u001d\u00105\u001a\u0004\u0018\u0001008VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsion/baseui/dialog/BaseDialog;", "Landroidx/fragment/app/DialogFragment;", "Lhj/a;", "<init>", "()V", "", "contentLayoutId", "(I)V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "tag", "", "m0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "e0", "Landroid/content/Context;", "context", "c0", "(Landroid/content/Context;)I", "getClassTag", "()Ljava/lang/String;", "manager", PushConstants.PUSH_SERVICE_TYPE_SHOW, "k0", "(Landroid/content/Context;Ljava/lang/String;)V", "Landroidx/fragment/app/Fragment;", "fragment", "l0", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "onResume", TmcConstants.NAVIGATION_ON_START, "onPause", "onDestroy", "d0", "", "b0", "()Z", "Landroid/content/DialogInterface$OnDismissListener;", "dismissListener", "j0", "(Landroid/content/DialogInterface$OnDismissListener;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "a", "Landroid/content/DialogInterface$OnDismissListener;", "Lhj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "base-dialog_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseDialog extends DialogFragment implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private DialogInterface.OnDismissListener dismissListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig;

    public BaseDialog() {
        this.logViewConfig = LazyKt.b(new Function0() { // from class: ck.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseDialog.h0(this.f17233a);
            }
        });
    }

    public BaseDialog(int i11) {
        super(i11);
        this.logViewConfig = LazyKt.b(new Function0() { // from class: ck.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseDialog.h0(this.f17233a);
            }
        });
    }

    private final int c0(Context context) {
        try {
            return d.a();
        } catch (Exception unused) {
            int dimensionPixelSize = 0;
            try {
                Resources resources = context.getResources();
                int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
                if (identifier > 0) {
                    dimensionPixelSize = resources.getDimensionPixelSize(identifier);
                }
            } catch (Exception unused2) {
            }
            return dimensionPixelSize;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a  */
    private final void e0() {
        Window window;
        final View decorView;
        final View view;
        ViewGroup viewGroup;
        Drawable background;
        Drawable background2;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null || (decorView = window.getDecorView()) == null || (view = getView()) == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final int iC0 = c0(contextRequireContext);
        boolean z10 = view instanceof ViewGroup;
        if (z10) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            viewGroup2.setFitsSystemWindows(false);
            if (viewGroup2.getBackground() == null) {
                View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
                if (childAt == null || (background2 = childAt.getBackground()) == null) {
                    view.setBackgroundColor(0);
                } else {
                    viewGroup2.setBackground(background2);
                }
            }
        }
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() { // from class: ck.c
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return BaseDialog.f0(iC0, view, view2, windowInsetsCompat);
            }
        });
        if (iC0 > 0) {
            if (z10) {
                ViewGroup viewGroup3 = (ViewGroup) view;
                if (viewGroup3.getChildCount() > 0) {
                    View childAt2 = viewGroup3.getChildAt(0);
                    if (childAt2 instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt2;
                    } else {
                        viewGroup = null;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                } else {
                    viewGroup = null;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= iC0) {
                    iC0 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != iC0) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, iC0);
                }
            }
            if (z10) {
                ViewGroup viewGroup4 = (ViewGroup) view;
                if (viewGroup4.getBackground() == null) {
                    View childAt3 = viewGroup4.getChildCount() > 0 ? viewGroup4.getChildAt(0) : null;
                    if (childAt3 != null && (background = childAt3.getBackground()) != null) {
                        viewGroup4.setBackground(background);
                    }
                }
            }
        }
        ViewCompat.requestApplyInsets(decorView);
        decorView.postDelayed(new Runnable() { // from class: ck.d
            @Override // java.lang.Runnable
            public final void run() {
                BaseDialog.g0(decorView);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    public static final WindowInsetsCompat f0(int i11, View view, View v11, WindowInsetsCompat insets) {
        Intrinsics.h(v11, "v");
        Intrinsics.h(insets, "insets");
        c insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.g(insets2, "getInsets(...)");
        c insets3 = insets.getInsets(WindowInsetsCompat.Type.systemGestures());
        Intrinsics.g(insets3, "getInsets(...)");
        int i12 = insets2.f79128d;
        if (i12 > 0 || (i12 = insets3.f79128d) > 0) {
            i11 = i12;
        } else if (i11 <= 0) {
            i11 = 0;
        }
        v11.setPadding(0, 0, 0, 0);
        if (i11 > 0) {
            boolean z10 = view instanceof ViewGroup;
            ViewGroup viewGroup = null;
            if (z10) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                if (viewGroup2.getChildCount() > 0) {
                    View childAt = viewGroup2.getChildAt(0);
                    if (childAt instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= i11) {
                    i11 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != i11) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, i11);
                }
            }
        }
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(View view) {
        ViewCompat.requestApplyInsets(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b h0(BaseDialog baseDialog) {
        return baseDialog.newLogViewConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(BaseDialog baseDialog) {
        baseDialog.e0();
    }

    private final void m0(FragmentManager fragmentManager, String tag) {
        try {
            fragmentManager.g0();
            if (!isAdded() && fragmentManager.k0(tag) == null) {
                show(fragmentManager, tag);
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public boolean b0() {
        return true;
    }

    public String d0() {
        return null;
    }

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override // hj.a
    public b getLogViewConfig() {
        return (b) this.logViewConfig.getValue();
    }

    public void j0(DialogInterface.OnDismissListener dismissListener) {
        Intrinsics.h(dismissListener, "dismissListener");
        this.dismissListener = dismissListener;
    }

    public void k0(Context context, String tag) {
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                m0(supportFragmentManager, tag);
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public void l0(Fragment fragment, String tag) {
        Intrinsics.h(fragment, "fragment");
        try {
            FragmentManager childFragmentManager = fragment.getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            show(childFragmentManager, tag);
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public b newLogViewConfig() {
        return a.C0778a.a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        g.f17240a.a(d0());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        DialogInterface.OnDismissListener onDismissListener = this.dismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialog);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        a.C0778a.b(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        a.C0778a.c(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Dialog dialog;
        Window window;
        super.onStart();
        if (Build.VERSION.SDK_INT < 35 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, false);
        window.setNavigationBarColor(0);
        window.setStatusBarColor(0);
        window.getDecorView().post(new Runnable() { // from class: ck.b
            @Override // java.lang.Runnable
            public final void run() {
                BaseDialog.i0(this.f17234a);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        try {
            manager.g0();
            if (!isAdded() && manager.k0(tag) == null) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("show dialog hasShownAnyDialogInSession ");
                sb2.append(this);
                sb2.append(" :");
                u uVar = u.f17263a;
                sb2.append(uVar.b());
                lg.a.C0828a.g(c0828a, sb2.toString(), false, 2, null);
                if (!uVar.b()) {
                    uVar.c(true);
                } else if (!b0()) {
                    return;
                }
                super.show(manager, tag);
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }
}
