package com.transsion.shorttv.base.dialog;

import android.app.Dialog;
import android.content.Context;
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
import com.blankj.utilcode.util.d;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.base.dialog.BaseDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ds.e;
import hj.b;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import z0.c;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007J!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0003¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0015\u0010\u000eJ#\u0010\u0016\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u0011\u0010 \u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b \u0010!R\u001d\u0010'\u001a\u0004\u0018\u00010\"8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/shorttv/base/dialog/BaseDialog;", "Landroidx/fragment/app/DialogFragment;", "Lds/e;", "<init>", "()V", "", "contentLayoutId", "(I)V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "tag", "", "k0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "d0", "Landroid/content/Context;", "context", "b0", "(Landroid/content/Context;)I", "manager", PushConstants.PUSH_SERVICE_TYPE_SHOW, "i0", "(Landroid/content/Context;Ljava/lang/String;)V", "Landroidx/fragment/app/Fragment;", "fragment", "j0", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", TmcConstants.NAVIGATION_ON_START, "onResume", "onPause", "onDestroy", "c0", "()Ljava/lang/String;", "Lhj/b;", "a", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseDialog extends DialogFragment implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig;

    public BaseDialog() {
        this.logViewConfig = LazyKt.b(new Function0() { // from class: wr.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseDialog.g0(this.f77936a);
            }
        });
    }

    public BaseDialog(int i11) {
        super(i11);
        this.logViewConfig = LazyKt.b(new Function0() { // from class: wr.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BaseDialog.g0(this.f77936a);
            }
        });
    }

    private final int b0(Context context) {
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
    private final void d0() {
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
        final int iB0 = b0(contextRequireContext);
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
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() { // from class: wr.c
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return BaseDialog.e0(iB0, view, view2, windowInsetsCompat);
            }
        });
        if (iB0 > 0) {
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
                if (paddingBottom >= iB0) {
                    iB0 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != iB0) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, iB0);
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
        decorView.postDelayed(new Runnable() { // from class: wr.d
            @Override // java.lang.Runnable
            public final void run() {
                BaseDialog.f0(decorView);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    public static final WindowInsetsCompat e0(int i11, View view, View v11, WindowInsetsCompat insets) {
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
    public static final void f0(View view) {
        ViewCompat.requestApplyInsets(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b g0(BaseDialog baseDialog) {
        return baseDialog.newLogViewConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(BaseDialog baseDialog) {
        baseDialog.d0();
    }

    private final void k0(FragmentManager fragmentManager, String tag) {
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

    public String c0() {
        return null;
    }

    @Override // ds.e
    public b getLogViewConfig() {
        return (b) this.logViewConfig.getValue();
    }

    public void i0(Context context, String tag) {
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                k0(supportFragmentManager, tag);
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public void j0(Fragment fragment, String tag) {
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
        return e.a.a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        wr.e.f77941a.a(c0());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        e.a.b(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        e.a.c(this);
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
        window.getDecorView().post(new Runnable() { // from class: wr.b
            @Override // java.lang.Runnable
            public final void run() {
                BaseDialog.h0(this.f77937a);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        try {
            manager.g0();
            if (!isAdded() && manager.k0(tag) == null) {
                super.show(manager, tag);
                wr.e.f77941a.b(c0());
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }
}
