package com.gyf.immersionbar;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public final class ImmersionBar implements ImmersionCallback {
    private int mActionBarHeight;
    private final Activity mActivity;
    private com.gyf.immersionbar.a mBarConfig;
    private b mBarParams;
    private ViewGroup mContentView;
    private ViewGroup mDecorView;
    private Dialog mDialog;
    private f mFitsKeyboard;
    private int mFitsStatusBarType;
    private Fragment mFragment;
    private boolean mInitialized;
    private boolean mIsActionBarBelowLOLLIPOP;
    private boolean mIsDialog;
    private boolean mIsDialogFragment;
    private boolean mIsFragment;
    private boolean mKeyboardTempEnable;
    private int mNavigationBarHeight;
    private int mNavigationBarWidth;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private ImmersionBar mParentBar;
    private androidx.fragment.app.Fragment mSupportFragment;
    private final Map<String, b> mTagMap;
    private Window mWindow;

    /* JADX INFO: loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33057a;

        static {
            int[] iArr = new int[BarHide.values().length];
            f33057a = iArr;
            try {
                iArr[BarHide.FLAG_HIDE_BAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33057a[BarHide.FLAG_HIDE_STATUS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33057a[BarHide.FLAG_HIDE_NAVIGATION_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33057a[BarHide.FLAG_SHOW_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    ImmersionBar(Activity activity) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mActivity = activity;
        initCommonParameter(activity.getWindow());
    }

    ImmersionBar(Activity activity, Dialog dialog) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mActivity = activity;
        this.mDialog = dialog;
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    ImmersionBar(DialogFragment dialogFragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    ImmersionBar(Fragment fragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        Activity activity = fragment.getActivity();
        this.mActivity = activity;
        this.mFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(activity.getWindow());
    }

    ImmersionBar(androidx.fragment.app.DialogFragment dialogFragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mSupportFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    ImmersionBar(androidx.fragment.app.Fragment fragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        FragmentActivity activity = fragment.getActivity();
        this.mActivity = activity;
        this.mSupportFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(activity.getWindow());
    }

    private void adjustDarkModeParams() {
        b bVar = this.mBarParams;
        int iD = z0.b.d(bVar.f33068a, bVar.f33085r, bVar.f33071d);
        b bVar2 = this.mBarParams;
        if (bVar2.f33080m && iD != 0) {
            statusBarDarkFont(iD > -4539718, bVar2.f33082o);
        }
        b bVar3 = this.mBarParams;
        int iD2 = z0.b.d(bVar3.f33069b, bVar3.f33086s, bVar3.f33073f);
        b bVar4 = this.mBarParams;
        if (!bVar4.f33081n || iD2 == 0) {
            return;
        }
        navigationBarDarkIcon(iD2 > -4539718, bVar4.f33083p);
    }

    private void cancelListener() {
        if (this.mActivity != null) {
            f fVar = this.mFitsKeyboard;
            if (fVar != null) {
                fVar.a();
                this.mFitsKeyboard = null;
            }
            e.b().d(this);
            j.b().d(this.mBarParams.L);
        }
    }

    public static boolean checkFitsSystemWindows(View view) {
        if (view == null) {
            return false;
        }
        if (view.getFitsSystemWindows()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (((childAt instanceof DrawerLayout) && checkFitsSystemWindows(childAt)) || childAt.getFitsSystemWindows()) {
                    return true;
                }
            }
        }
        return false;
    }

    private void checkInitWithActivity() {
        if (this.mParentBar == null) {
            this.mParentBar = with(this.mActivity);
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar == null || immersionBar.mInitialized) {
            return;
        }
        immersionBar.init();
    }

    public static void destroy(@NonNull Activity activity, @NonNull Dialog dialog) {
        getRetriever().b(activity, dialog, false);
    }

    public static void destroy(@NonNull Activity activity, @NonNull Dialog dialog, boolean z10) {
        getRetriever().b(activity, dialog, z10);
    }

    private void fitsKeyboard() {
        if (!this.mIsFragment) {
            if (this.mBarParams.F) {
                if (this.mFitsKeyboard == null) {
                    this.mFitsKeyboard = new f(this);
                }
                this.mFitsKeyboard.c(this.mBarParams.G);
                return;
            } else {
                f fVar = this.mFitsKeyboard;
                if (fVar != null) {
                    fVar.b();
                    return;
                }
                return;
            }
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (immersionBar.mBarParams.F) {
                if (immersionBar.mFitsKeyboard == null) {
                    immersionBar.mFitsKeyboard = new f(immersionBar);
                }
                ImmersionBar immersionBar2 = this.mParentBar;
                immersionBar2.mFitsKeyboard.c(immersionBar2.mBarParams.G);
                return;
            }
            f fVar2 = immersionBar.mFitsKeyboard;
            if (fVar2 != null) {
                fVar2.b();
            }
        }
    }

    private void fitsLayoutOverlap() {
        int iK = this.mBarParams.B ? this.mBarConfig.k() : 0;
        int i11 = this.mFitsStatusBarType;
        if (i11 == 1) {
            setTitleBar(this.mActivity, iK, this.mBarParams.f33093z);
        } else if (i11 == 2) {
            setTitleBarMarginTop(this.mActivity, iK, this.mBarParams.f33093z);
        } else {
            if (i11 != 3) {
                return;
            }
            setStatusBarView(this.mActivity, iK, this.mBarParams.A);
        }
    }

    private void fitsNotchScreen() {
        if (Build.VERSION.SDK_INT < 28 || this.mInitialized) {
            return;
        }
        try {
            WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.mWindow.setAttributes(attributes);
        } catch (Exception unused) {
        }
    }

    private void fitsWindows() {
        if (OSUtils.isEMUI3_x()) {
            fitsWindowsBelowLOLLIPOP();
        } else {
            fitsWindowsAboveLOLLIPOP();
        }
        fitsLayoutOverlap();
    }

    private void fitsWindowsAboveLOLLIPOP() {
        if (checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
            setPadding(0, 0, 0, 0);
            return;
        }
        int iK = (this.mBarParams.f33092y && this.mFitsStatusBarType == 4) ? this.mBarConfig.k() : 0;
        if (this.mBarParams.E) {
            iK = this.mBarConfig.k() + this.mActionBarHeight;
        }
        setPadding(0, iK, 0, 0);
    }

    private void fitsWindowsBelowLOLLIPOP() {
        if (this.mBarParams.E) {
            this.mIsActionBarBelowLOLLIPOP = true;
            this.mContentView.post(this);
        } else {
            this.mIsActionBarBelowLOLLIPOP = false;
            postFitsWindowsBelowLOLLIPOP();
        }
    }

    private void fitsWindowsEMUI() {
        View viewFindViewById = this.mDecorView.findViewById(d.f33102b);
        b bVar = this.mBarParams;
        if (!bVar.H || !bVar.I) {
            e.b().d(this);
            viewFindViewById.setVisibility(8);
        } else if (viewFindViewById != null) {
            e.b().a(this);
            e.b().c(this.mActivity.getApplication());
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    private void fitsWindowsKITKAT() {
        int iG;
        int iD;
        if (checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
            setPadding(0, 0, 0, 0);
            return;
        }
        int iK = (this.mBarParams.f33092y && this.mFitsStatusBarType == 4) ? this.mBarConfig.k() : 0;
        if (this.mBarParams.E) {
            iK = this.mBarConfig.k() + this.mActionBarHeight;
        }
        if (this.mBarConfig.m()) {
            b bVar = this.mBarParams;
            if (bVar.H && bVar.I) {
                if (bVar.f33075h) {
                    iG = 0;
                    iD = 0;
                } else if (this.mBarConfig.n()) {
                    iD = this.mBarConfig.d();
                    iG = 0;
                } else {
                    iG = this.mBarConfig.g();
                    iD = 0;
                }
                if (this.mBarParams.f33076i) {
                    if (this.mBarConfig.n()) {
                        iD = 0;
                    } else {
                        iG = 0;
                    }
                } else if (!this.mBarConfig.n()) {
                    iG = this.mBarConfig.g();
                }
            } else {
                iG = 0;
                iD = 0;
            }
        } else {
            iG = 0;
            iD = 0;
        }
        setPadding(0, iK, iG, iD);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).a();
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).d();
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Context context) {
        g.a aVarA = g.a(context);
        if (!aVarA.f33118a || aVarA.f33119b) {
            return com.gyf.immersionbar.a.f(context);
        }
        return 0;
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).g();
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Context context) {
        g.a aVarA = g.a(context);
        if (!aVarA.f33118a || aVarA.f33119b) {
            return com.gyf.immersionbar.a.i(context);
        }
        return 0;
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth((Activity) fragment.getActivity());
    }

    public static int getNotchHeight(@NonNull Activity activity) {
        return NotchUtils.getNotchHeight(activity);
    }

    public static int getNotchHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    public static int getNotchHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    public static void getNotchHeight(@NonNull Activity activity, k kVar) {
        NotchUtils.getNotchHeight(activity, kVar);
    }

    public static void getNotchHeight(@NonNull Fragment fragment, k kVar) {
        if (fragment.getActivity() == null) {
            return;
        }
        getNotchHeight(fragment.getActivity(), kVar);
    }

    public static void getNotchHeight(@NonNull androidx.fragment.app.Fragment fragment, k kVar) {
        if (fragment.getActivity() == null) {
            return;
        }
        getNotchHeight(fragment.getActivity(), kVar);
    }

    private static q getRetriever() {
        return q.i();
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).k();
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Context context) {
        return com.gyf.immersionbar.a.c(context, "status_bar_height");
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).m();
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Context context) {
        return getNavigationBarHeight(context) > 0;
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar((Activity) fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull Activity activity) {
        return NotchUtils.hasNotchScreen(activity);
    }

    public static boolean hasNotchScreen(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull View view) {
        return NotchUtils.hasNotchScreen(view);
    }

    public static boolean hasNotchScreen(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    private void hideBarAboveR() {
        WindowInsetsController windowInsetsController;
        if (Build.VERSION.SDK_INT < 30 || (windowInsetsController = this.mContentView.getWindowInsetsController()) == null) {
            return;
        }
        int i11 = a.f33057a[this.mBarParams.f33077j.ordinal()];
        if (i11 == 1) {
            windowInsetsController.hide(WindowInsets.Type.statusBars());
            windowInsetsController.hide(WindowInsets.Type.navigationBars());
        } else if (i11 == 2) {
            windowInsetsController.hide(WindowInsets.Type.statusBars());
        } else if (i11 == 3) {
            windowInsetsController.hide(WindowInsets.Type.navigationBars());
        } else if (i11 == 4) {
            windowInsetsController.show(WindowInsets.Type.statusBars());
            windowInsetsController.show(WindowInsets.Type.navigationBars());
        }
        windowInsetsController.setSystemBarsBehavior(2);
    }

    private int hideBarBelowR(int i11) {
        if (Build.VERSION.SDK_INT >= 30) {
            return i11;
        }
        int i12 = a.f33057a[this.mBarParams.f33077j.ordinal()];
        if (i12 == 1) {
            i11 |= 518;
        } else if (i12 == 2) {
            i11 |= 1028;
        } else if (i12 == 3) {
            i11 |= 514;
        }
        return i11 | 4096;
    }

    public static void hideStatusBar(@NonNull Window window) {
        window.setFlags(1024, 1024);
    }

    private int initBarAboveLOLLIPOP(int i11) {
        if (!this.mInitialized) {
            this.mBarParams.f33070c = this.mWindow.getNavigationBarColor();
        }
        int i12 = i11 | 1024;
        b bVar = this.mBarParams;
        if (bVar.f33075h && bVar.H) {
            i12 = i11 | 1536;
        }
        this.mWindow.clearFlags(67108864);
        if (this.mBarConfig.m()) {
            this.mWindow.clearFlags(ASTNode.NOJIT);
        }
        this.mWindow.addFlags(Integer.MIN_VALUE);
        b bVar2 = this.mBarParams;
        if (bVar2.f33084q) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mWindow.setStatusBarContrastEnforced(false);
            }
            Window window = this.mWindow;
            b bVar3 = this.mBarParams;
            window.setStatusBarColor(z0.b.d(bVar3.f33068a, bVar3.f33085r, bVar3.f33071d));
        } else {
            this.mWindow.setStatusBarColor(z0.b.d(bVar2.f33068a, 0, bVar2.f33071d));
        }
        b bVar4 = this.mBarParams;
        if (bVar4.H) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mWindow.setNavigationBarContrastEnforced(false);
            }
            Window window2 = this.mWindow;
            b bVar5 = this.mBarParams;
            window2.setNavigationBarColor(z0.b.d(bVar5.f33069b, bVar5.f33086s, bVar5.f33073f));
        } else {
            this.mWindow.setNavigationBarColor(bVar4.f33070c);
        }
        return i12;
    }

    private void initBarBelowLOLLIPOP() {
        this.mWindow.addFlags(67108864);
        setupStatusBarView();
        if (this.mBarConfig.m() || OSUtils.isEMUI3_x()) {
            b bVar = this.mBarParams;
            if (bVar.H && bVar.I) {
                this.mWindow.addFlags(ASTNode.NOJIT);
            } else {
                this.mWindow.clearFlags(ASTNode.NOJIT);
            }
            if (this.mNavigationBarHeight == 0) {
                this.mNavigationBarHeight = this.mBarConfig.d();
            }
            if (this.mNavigationBarWidth == 0) {
                this.mNavigationBarWidth = this.mBarConfig.g();
            }
            setupNavBarView();
        }
    }

    private void initCommonParameter(Window window) {
        this.mWindow = window;
        this.mBarParams = new b();
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        this.mDecorView = viewGroup;
        this.mContentView = (ViewGroup) viewGroup.findViewById(R.id.content);
    }

    private static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isGesture(Fragment fragment) {
        Context context = fragment.getContext();
        if (context == null) {
            return false;
        }
        return isGesture(context);
    }

    public static boolean isGesture(Context context) {
        return g.a(context).f33118a;
    }

    public static boolean isGesture(androidx.fragment.app.Fragment fragment) {
        Context context = fragment.getContext();
        if (context == null) {
            return false;
        }
        return isGesture(context);
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Activity activity) {
        return new com.gyf.immersionbar.a(activity).n();
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    public static boolean isSupportNavigationIconDark() {
        return OSUtils.isMIUI6Later() || Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isSupportStatusBarDarkFont() {
        if (OSUtils.isMIUI6Later()) {
            return true;
        }
        OSUtils.isFlymeOS4Later();
        return true;
    }

    private void postFitsWindowsBelowLOLLIPOP() {
        fitsWindowsKITKAT();
        if (this.mIsFragment || !OSUtils.isEMUI3_x()) {
            return;
        }
        fitsWindowsEMUI();
    }

    private void setBarDarkFontAboveR() {
        if (Build.VERSION.SDK_INT >= 30) {
            setStatusBarDarkFontAboveR();
            setNavigationIconDarkAboveR();
        }
    }

    public static void setFitsSystemWindows(Activity activity) {
        setFitsSystemWindows(activity, true);
    }

    public static void setFitsSystemWindows(Activity activity, boolean z10) {
        if (activity == null) {
            return;
        }
        setFitsSystemWindows(((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0), z10);
    }

    public static void setFitsSystemWindows(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static void setFitsSystemWindows(Fragment fragment, boolean z10) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z10);
    }

    private static void setFitsSystemWindows(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            view.setFitsSystemWindows(z10);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup instanceof DrawerLayout) {
            setFitsSystemWindows(viewGroup.getChildAt(0), z10);
        } else {
            viewGroup.setFitsSystemWindows(z10);
            viewGroup.setClipToPadding(true);
        }
    }

    public static void setFitsSystemWindows(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static void setFitsSystemWindows(androidx.fragment.app.Fragment fragment, boolean z10) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z10);
    }

    private int setNavigationIconDark(int i11) {
        return (Build.VERSION.SDK_INT < 26 || !this.mBarParams.f33079l) ? i11 : i11 | 16;
    }

    private void setNavigationIconDarkAboveR() {
        WindowInsetsController windowInsetsController = this.mContentView.getWindowInsetsController();
        if (this.mBarParams.f33079l) {
            windowInsetsController.setSystemBarsAppearance(16, 16);
        } else {
            windowInsetsController.setSystemBarsAppearance(0, 16);
        }
    }

    private void setPadding(int i11, int i12, int i13, int i14) {
        ViewGroup viewGroup = this.mContentView;
        if (viewGroup != null) {
            viewGroup.setPadding(i11, i12, i13, i14);
        }
        this.mPaddingLeft = i11;
        this.mPaddingTop = i12;
        this.mPaddingRight = i13;
        this.mPaddingBottom = i14;
    }

    private void setSpecialBarDarkMode() {
        if (OSUtils.isMIUI6Later()) {
            SpecialBarFontUtils.setMIUIBarDark(this.mWindow, "EXTRA_FLAG_STATUS_BAR_DARK_MODE", this.mBarParams.f33078k);
            b bVar = this.mBarParams;
            if (bVar.H) {
                SpecialBarFontUtils.setMIUIBarDark(this.mWindow, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE", bVar.f33079l);
            }
        }
        if (OSUtils.isFlymeOS4Later()) {
            b bVar2 = this.mBarParams;
            int i11 = bVar2.C;
            if (i11 != 0) {
                SpecialBarFontUtils.setStatusBarDarkIcon(this.mActivity, i11);
            } else {
                SpecialBarFontUtils.setStatusBarDarkIcon(this.mActivity, bVar2.f33078k);
            }
        }
    }

    private int setStatusBarDarkFont(int i11) {
        return this.mBarParams.f33078k ? i11 | 8192 : i11;
    }

    private void setStatusBarDarkFontAboveR() {
        WindowInsetsController windowInsetsController = this.mContentView.getWindowInsetsController();
        if (!this.mBarParams.f33078k) {
            windowInsetsController.setSystemBarsAppearance(0, 8);
            return;
        }
        if (this.mWindow != null) {
            unsetSystemUiFlag(8192);
        }
        windowInsetsController.setSystemBarsAppearance(8, 8);
    }

    public static void setStatusBarView(Activity activity, int i11, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                Integer num = (Integer) view.getTag(R$id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i11) {
                    view.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(i11));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, 0);
                    }
                    layoutParams.height = i11;
                    view.setLayoutParams(layoutParams);
                }
            }
        }
    }

    public static void setStatusBarView(Activity activity, View... viewArr) {
        setStatusBarView(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setStatusBarView(Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i11, viewArr);
    }

    public static void setStatusBarView(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public static void setStatusBarView(androidx.fragment.app.Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i11, viewArr);
    }

    public static void setStatusBarView(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(Activity activity, final int i11, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        for (final View view : viewArr) {
            if (view != null) {
                final Integer num = (Integer) view.getTag(R$id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i11) {
                    view.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(i11));
                    final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, -2);
                    }
                    int i12 = layoutParams.height;
                    if (i12 == -2 || i12 == -1) {
                        view.post(new Runnable() { // from class: com.gyf.immersionbar.ImmersionBar.1
                            @Override // java.lang.Runnable
                            public void run() {
                                layoutParams.height = (view.getHeight() + i11) - num.intValue();
                                View view2 = view;
                                view2.setPadding(view2.getPaddingLeft(), (view.getPaddingTop() + i11) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                                view.setLayoutParams(layoutParams);
                            }
                        });
                    } else {
                        layoutParams.height = i12 + (i11 - num.intValue());
                        view.setPadding(view.getPaddingLeft(), (view.getPaddingTop() + i11) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                        view.setLayoutParams(layoutParams);
                    }
                }
            }
        }
    }

    public static void setTitleBar(Activity activity, View... viewArr) {
        setTitleBar(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setTitleBar(Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i11, viewArr);
    }

    public static void setTitleBar(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(androidx.fragment.app.Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i11, viewArr);
    }

    public static void setTitleBar(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(Activity activity, int i11, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                Integer num = (Integer) view.getTag(R$id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i11) {
                    view.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(i11));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (marginLayoutParams.topMargin + i11) - num.intValue(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                    view.setLayoutParams(marginLayoutParams);
                }
            }
        }
    }

    public static void setTitleBarMarginTop(Activity activity, View... viewArr) {
        setTitleBarMarginTop(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i11, viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(androidx.fragment.app.Fragment fragment, int i11, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i11, viewArr);
    }

    public static void setTitleBarMarginTop(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    private void setupNavBarView() {
        FrameLayout.LayoutParams layoutParams;
        ViewGroup viewGroup = this.mDecorView;
        int i11 = d.f33102b;
        View viewFindViewById = viewGroup.findViewById(i11);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            viewFindViewById.setId(i11);
            this.mDecorView.addView(viewFindViewById);
        }
        if (this.mBarConfig.n()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.d());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.mBarConfig.g(), -1);
            layoutParams.gravity = GravityCompat.END;
        }
        viewFindViewById.setLayoutParams(layoutParams);
        b bVar = this.mBarParams;
        viewFindViewById.setBackgroundColor(z0.b.d(bVar.f33069b, bVar.f33086s, bVar.f33073f));
        b bVar2 = this.mBarParams;
        if (bVar2.H && bVar2.I && !bVar2.f33076i) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    private void setupStatusBarView() {
        ViewGroup viewGroup = this.mDecorView;
        int i11 = d.f33101a;
        View viewFindViewById = viewGroup.findViewById(i11);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.k());
            layoutParams.gravity = 48;
            viewFindViewById.setLayoutParams(layoutParams);
            viewFindViewById.setVisibility(0);
            viewFindViewById.setId(i11);
            this.mDecorView.addView(viewFindViewById);
        }
        b bVar = this.mBarParams;
        if (bVar.f33084q) {
            viewFindViewById.setBackgroundColor(z0.b.d(bVar.f33068a, bVar.f33085r, bVar.f33071d));
        } else {
            viewFindViewById.setBackgroundColor(z0.b.d(bVar.f33068a, 0, bVar.f33071d));
        }
    }

    public static void showStatusBar(@NonNull Window window) {
        window.clearFlags(1024);
    }

    private void transformView() {
        if (this.mBarParams.f33087t.size() != 0) {
            for (Map.Entry entry : this.mBarParams.f33087t.entrySet()) {
                View view = (View) entry.getKey();
                Map map = (Map) entry.getValue();
                Integer numValueOf = Integer.valueOf(this.mBarParams.f33068a);
                Integer numValueOf2 = Integer.valueOf(this.mBarParams.f33085r);
                for (Map.Entry entry2 : map.entrySet()) {
                    Integer num = (Integer) entry2.getKey();
                    numValueOf2 = (Integer) entry2.getValue();
                    numValueOf = num;
                }
                if (view != null) {
                    if (Math.abs(this.mBarParams.f33088u - 0.0f) == 0.0f) {
                        view.setBackgroundColor(z0.b.d(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.f33071d));
                    } else {
                        view.setBackgroundColor(z0.b.d(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.f33088u));
                    }
                }
            }
        }
    }

    private void updateBarConfig() {
        com.gyf.immersionbar.a aVar = new com.gyf.immersionbar.a(this.mActivity);
        this.mBarConfig = aVar;
        if (!this.mInitialized || this.mIsActionBarBelowLOLLIPOP) {
            this.mActionBarHeight = aVar.a();
        }
    }

    private void updateBarParams() {
        adjustDarkModeParams();
        if (!this.mInitialized || this.mIsFragment) {
            updateBarConfig();
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (this.mIsFragment) {
                immersionBar.mBarParams = this.mBarParams;
            }
            if (this.mIsDialog && immersionBar.mKeyboardTempEnable) {
                immersionBar.mBarParams.F = false;
            }
        }
    }

    public static ImmersionBar with(@NonNull Activity activity) {
        return getRetriever().d(activity, false);
    }

    public static ImmersionBar with(@NonNull Activity activity, @NonNull Dialog dialog) {
        return getRetriever().c(activity, dialog, false);
    }

    public static ImmersionBar with(@NonNull Activity activity, @NonNull Dialog dialog, boolean z10) {
        return getRetriever().c(activity, dialog, z10);
    }

    public static ImmersionBar with(@NonNull Activity activity, boolean z10) {
        return getRetriever().d(activity, z10);
    }

    public static ImmersionBar with(@NonNull DialogFragment dialogFragment) {
        return getRetriever().e(dialogFragment, false);
    }

    public static ImmersionBar with(@NonNull DialogFragment dialogFragment, boolean z10) {
        return getRetriever().e(dialogFragment, z10);
    }

    public static ImmersionBar with(@NonNull Fragment fragment) {
        return getRetriever().e(fragment, false);
    }

    public static ImmersionBar with(@NonNull Fragment fragment, boolean z10) {
        return getRetriever().e(fragment, z10);
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.DialogFragment dialogFragment) {
        return getRetriever().f(dialogFragment, false);
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.DialogFragment dialogFragment, boolean z10) {
        return getRetriever().f(dialogFragment, z10);
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.Fragment fragment) {
        return getRetriever().f(fragment, false);
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.Fragment fragment, boolean z10) {
        return getRetriever().f(fragment, z10);
    }

    public ImmersionBar addTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        this.mTagMap.put(str, this.mBarParams.clone());
        return this;
    }

    public ImmersionBar addViewSupportTransformColor(View view) {
        return addViewSupportTransformColorInt(view, this.mBarParams.f33085r);
    }

    public ImmersionBar addViewSupportTransformColor(View view, int i11) {
        return addViewSupportTransformColorInt(view, androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar addViewSupportTransformColor(View view, int i11, int i12) {
        return addViewSupportTransformColorInt(view, androidx.core.content.b.getColor(this.mActivity, i11), androidx.core.content.b.getColor(this.mActivity, i12));
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str));
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str, String str2) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str), Color.parseColor(str2));
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, int i11) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(this.mBarParams.f33068a), Integer.valueOf(i11));
        this.mBarParams.f33087t.put(view, map);
        return this;
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, int i11, int i12) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(i11), Integer.valueOf(i12));
        this.mBarParams.f33087t.put(view, map);
        return this;
    }

    public ImmersionBar applySystemFits(boolean z10) {
        this.mBarParams.B = !z10;
        setFitsSystemWindows(this.mActivity, z10);
        return this;
    }

    public ImmersionBar autoDarkModeEnable(boolean z10) {
        return autoDarkModeEnable(z10, 0.2f);
    }

    public ImmersionBar autoDarkModeEnable(boolean z10, float f11) {
        b bVar = this.mBarParams;
        bVar.f33080m = z10;
        bVar.f33082o = f11;
        bVar.f33081n = z10;
        bVar.f33083p = f11;
        return this;
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z10) {
        return autoNavigationBarDarkModeEnable(z10, 0.2f);
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z10, float f11) {
        b bVar = this.mBarParams;
        bVar.f33081n = z10;
        bVar.f33083p = f11;
        return this;
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z10) {
        return autoStatusBarDarkModeEnable(z10, 0.2f);
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z10, float f11) {
        b bVar = this.mBarParams;
        bVar.f33080m = z10;
        bVar.f33082o = f11;
        return this;
    }

    public ImmersionBar barAlpha(float f11) {
        b bVar = this.mBarParams;
        bVar.f33071d = f11;
        bVar.f33072e = f11;
        bVar.f33073f = f11;
        bVar.f33074g = f11;
        return this;
    }

    public ImmersionBar barColor(int i11) {
        return barColorInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar barColor(int i11, float f11) {
        return barColorInt(androidx.core.content.b.getColor(this.mActivity, i11), i11);
    }

    public ImmersionBar barColor(int i11, int i12, float f11) {
        return barColorInt(androidx.core.content.b.getColor(this.mActivity, i11), androidx.core.content.b.getColor(this.mActivity, i12), f11);
    }

    public ImmersionBar barColor(String str) {
        return barColorInt(Color.parseColor(str));
    }

    public ImmersionBar barColor(String str, float f11) {
        return barColorInt(Color.parseColor(str), f11);
    }

    public ImmersionBar barColor(String str, String str2, float f11) {
        return barColorInt(Color.parseColor(str), Color.parseColor(str2), f11);
    }

    public ImmersionBar barColorInt(int i11) {
        b bVar = this.mBarParams;
        bVar.f33068a = i11;
        bVar.f33069b = i11;
        return this;
    }

    public ImmersionBar barColorInt(int i11, float f11) {
        b bVar = this.mBarParams;
        bVar.f33068a = i11;
        bVar.f33069b = i11;
        bVar.f33071d = f11;
        bVar.f33073f = f11;
        return this;
    }

    public ImmersionBar barColorInt(int i11, int i12, float f11) {
        b bVar = this.mBarParams;
        bVar.f33068a = i11;
        bVar.f33069b = i11;
        bVar.f33085r = i12;
        bVar.f33086s = i12;
        bVar.f33071d = f11;
        bVar.f33073f = f11;
        return this;
    }

    public ImmersionBar barColorTransform(int i11) {
        return barColorTransformInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar barColorTransform(String str) {
        return barColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar barColorTransformInt(int i11) {
        b bVar = this.mBarParams;
        bVar.f33085r = i11;
        bVar.f33086s = i11;
        return this;
    }

    public ImmersionBar barEnable(boolean z10) {
        this.mBarParams.K = z10;
        return this;
    }

    public ImmersionBar fitsLayoutOverlapEnable(boolean z10) {
        this.mBarParams.B = z10;
        return this;
    }

    void fitsParentBarKeyboard() {
        f fVar;
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar == null || (fVar = immersionBar.mFitsKeyboard) == null) {
            return;
        }
        fVar.b();
        this.mParentBar.mFitsKeyboard.d();
    }

    public ImmersionBar fitsSystemWindows(boolean z10) {
        this.mBarParams.f33092y = z10;
        if (!z10) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        return this;
    }

    public ImmersionBar fitsSystemWindows(boolean z10, int i11) {
        return fitsSystemWindowsInt(z10, androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar fitsSystemWindows(boolean z10, int i11, int i12, float f11) {
        return fitsSystemWindowsInt(z10, androidx.core.content.b.getColor(this.mActivity, i11), androidx.core.content.b.getColor(this.mActivity, i12), f11);
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z10, int i11) {
        return fitsSystemWindowsInt(z10, i11, ViewCompat.MEASURED_STATE_MASK, 0.0f);
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z10, int i11, int i12, float f11) {
        b bVar = this.mBarParams;
        bVar.f33092y = z10;
        bVar.f33089v = i11;
        bVar.f33090w = i12;
        bVar.f33091x = f11;
        if (!z10) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        this.mContentView.setBackgroundColor(z0.b.d(i11, i12, f11));
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(int i11) {
        this.mBarParams.C = androidx.core.content.b.getColor(this.mActivity, i11);
        b bVar = this.mBarParams;
        bVar.D = bVar.C;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(String str) {
        this.mBarParams.C = Color.parseColor(str);
        b bVar = this.mBarParams;
        bVar.D = bVar.C;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColorInt(int i11) {
        b bVar = this.mBarParams;
        bVar.C = i11;
        bVar.D = i11;
        return this;
    }

    public ImmersionBar fullScreen(boolean z10) {
        this.mBarParams.f33075h = z10;
        return this;
    }

    int getActionBarHeight() {
        return this.mActionBarHeight;
    }

    Activity getActivity() {
        return this.mActivity;
    }

    com.gyf.immersionbar.a getBarConfig() {
        if (this.mBarConfig == null) {
            this.mBarConfig = new com.gyf.immersionbar.a(this.mActivity);
        }
        return this.mBarConfig;
    }

    public b getBarParams() {
        return this.mBarParams;
    }

    Fragment getFragment() {
        return this.mFragment;
    }

    int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    int getPaddingRight() {
        return this.mPaddingRight;
    }

    int getPaddingTop() {
        return this.mPaddingTop;
    }

    androidx.fragment.app.Fragment getSupportFragment() {
        return this.mSupportFragment;
    }

    public ImmersionBar getTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        b bVar = this.mTagMap.get(str);
        if (bVar != null) {
            this.mBarParams = bVar.clone();
        }
        return this;
    }

    Window getWindow() {
        return this.mWindow;
    }

    public ImmersionBar hideBar(BarHide barHide) {
        this.mBarParams.f33077j = barHide;
        if (OSUtils.isEMUI3_x()) {
            b bVar = this.mBarParams;
            BarHide barHide2 = bVar.f33077j;
            bVar.f33076i = barHide2 == BarHide.FLAG_HIDE_NAVIGATION_BAR || barHide2 == BarHide.FLAG_HIDE_BAR;
        }
        return this;
    }

    public void init() {
        if (this.mBarParams.K) {
            updateBarParams();
            setBar();
            fitsWindows();
            fitsKeyboard();
            transformView();
            this.mInitialized = true;
        }
    }

    boolean initialized() {
        return this.mInitialized;
    }

    boolean isDialogFragment() {
        return this.mIsDialogFragment;
    }

    boolean isFragment() {
        return this.mIsFragment;
    }

    public ImmersionBar keyboardEnable(boolean z10) {
        return keyboardEnable(z10, this.mBarParams.G);
    }

    public ImmersionBar keyboardEnable(boolean z10, int i11) {
        b bVar = this.mBarParams;
        bVar.F = z10;
        bVar.G = i11;
        this.mKeyboardTempEnable = z10;
        return this;
    }

    public ImmersionBar keyboardMode(int i11) {
        this.mBarParams.G = i11;
        return this;
    }

    public ImmersionBar navigationBarAlpha(float f11) {
        b bVar = this.mBarParams;
        bVar.f33073f = f11;
        bVar.f33074g = f11;
        return this;
    }

    public ImmersionBar navigationBarColor(int i11) {
        return navigationBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar navigationBarColor(int i11, float f11) {
        return navigationBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11), f11);
    }

    public ImmersionBar navigationBarColor(int i11, int i12, float f11) {
        return navigationBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11), androidx.core.content.b.getColor(this.mActivity, i12), f11);
    }

    public ImmersionBar navigationBarColor(String str) {
        return navigationBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarColor(String str, float f11) {
        return navigationBarColorInt(Color.parseColor(str), f11);
    }

    public ImmersionBar navigationBarColor(String str, String str2, float f11) {
        return navigationBarColorInt(Color.parseColor(str), Color.parseColor(str2), f11);
    }

    public ImmersionBar navigationBarColorInt(int i11) {
        this.mBarParams.f33069b = i11;
        return this;
    }

    public ImmersionBar navigationBarColorInt(int i11, float f11) {
        b bVar = this.mBarParams;
        bVar.f33069b = i11;
        bVar.f33073f = f11;
        return this;
    }

    public ImmersionBar navigationBarColorInt(int i11, int i12, float f11) {
        b bVar = this.mBarParams;
        bVar.f33069b = i11;
        bVar.f33086s = i12;
        bVar.f33073f = f11;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(int i11) {
        return navigationBarColorTransformInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar navigationBarColorTransform(String str) {
        return navigationBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarColorTransformInt(int i11) {
        this.mBarParams.f33086s = i11;
        return this;
    }

    public ImmersionBar navigationBarDarkIcon(boolean z10) {
        return navigationBarDarkIcon(z10, 0.2f);
    }

    public ImmersionBar navigationBarDarkIcon(boolean z10, float f11) {
        this.mBarParams.f33079l = z10;
        if (!z10 || isSupportNavigationIconDark()) {
            b bVar = this.mBarParams;
            bVar.f33073f = bVar.f33074g;
        } else {
            this.mBarParams.f33073f = f11;
        }
        return this;
    }

    public ImmersionBar navigationBarEnable(boolean z10) {
        this.mBarParams.H = z10;
        return this;
    }

    public ImmersionBar navigationBarWithEMUI3Enable(boolean z10) {
        if (OSUtils.isEMUI3_x()) {
            b bVar = this.mBarParams;
            bVar.J = z10;
            bVar.I = z10;
        }
        return this;
    }

    public ImmersionBar navigationBarWithKitkatEnable(boolean z10) {
        this.mBarParams.I = z10;
        return this;
    }

    void onConfigurationChanged(Configuration configuration) {
        updateBarConfig();
        if (!OSUtils.isEMUI3_x()) {
            fitsWindows();
        } else if (this.mInitialized && !this.mIsFragment && this.mBarParams.I) {
            init();
        } else {
            fitsWindows();
        }
    }

    void onDestroy() {
        ImmersionBar immersionBar;
        cancelListener();
        if (this.mIsDialog && (immersionBar = this.mParentBar) != null) {
            b bVar = immersionBar.mBarParams;
            bVar.F = immersionBar.mKeyboardTempEnable;
            if (bVar.f33077j != BarHide.FLAG_SHOW_BAR) {
                immersionBar.setBar();
            }
        }
        this.mInitialized = false;
    }

    @Override // com.gyf.immersionbar.ImmersionCallback, com.gyf.immersionbar.n
    public void onNavigationBarChange(boolean z10, NavigationBarType navigationBarType) {
        View viewFindViewById = this.mDecorView.findViewById(d.f33102b);
        if (viewFindViewById != null) {
            this.mBarConfig = new com.gyf.immersionbar.a(this.mActivity);
            int paddingBottom = this.mContentView.getPaddingBottom();
            int paddingRight = this.mContentView.getPaddingRight();
            if (z10) {
                viewFindViewById.setVisibility(0);
                if (!checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
                    if (this.mNavigationBarHeight == 0) {
                        this.mNavigationBarHeight = this.mBarConfig.d();
                    }
                    if (this.mNavigationBarWidth == 0) {
                        this.mNavigationBarWidth = this.mBarConfig.g();
                    }
                    if (!this.mBarParams.f33076i) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        if (this.mBarConfig.n()) {
                            layoutParams.gravity = 80;
                            paddingBottom = this.mNavigationBarHeight;
                            layoutParams.height = paddingBottom;
                            if (this.mBarParams.f33075h) {
                                paddingBottom = 0;
                            }
                            paddingRight = 0;
                        } else {
                            layoutParams.gravity = GravityCompat.END;
                            int i11 = this.mNavigationBarWidth;
                            layoutParams.width = i11;
                            if (this.mBarParams.f33075h) {
                                i11 = 0;
                            }
                            paddingRight = i11;
                            paddingBottom = 0;
                        }
                        viewFindViewById.setLayoutParams(layoutParams);
                    }
                }
                setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
            }
            viewFindViewById.setVisibility(8);
            paddingBottom = 0;
            paddingRight = 0;
            setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
        }
    }

    void onResume() {
        updateBarConfig();
        if (this.mIsFragment || !this.mInitialized || this.mBarParams == null) {
            return;
        }
        if (OSUtils.isEMUI3_x() && this.mBarParams.J) {
            init();
        } else if (this.mBarParams.f33077j != BarHide.FLAG_SHOW_BAR) {
            setBar();
        }
    }

    public ImmersionBar removeSupportAllView() {
        if (this.mBarParams.f33087t.size() != 0) {
            this.mBarParams.f33087t.clear();
        }
        return this;
    }

    public ImmersionBar removeSupportView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        Map map = (Map) this.mBarParams.f33087t.get(view);
        if (map != null && map.size() != 0) {
            this.mBarParams.f33087t.remove(view);
        }
        return this;
    }

    public ImmersionBar reset() {
        this.mBarParams = new b();
        this.mFitsStatusBarType = 0;
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        postFitsWindowsBelowLOLLIPOP();
    }

    void setBar() {
        int navigationIconDark = 256;
        if (OSUtils.isEMUI3_x()) {
            initBarBelowLOLLIPOP();
        } else {
            fitsNotchScreen();
            navigationIconDark = setNavigationIconDark(setStatusBarDarkFont(initBarAboveLOLLIPOP(256)));
            setBarDarkFontAboveR();
        }
        this.mDecorView.setSystemUiVisibility(hideBarBelowR(navigationIconDark));
        setSpecialBarDarkMode();
        hideBarAboveR();
        if (this.mBarParams.L != null) {
            j.b().c(this.mActivity.getApplication());
        }
    }

    public ImmersionBar setOnBarListener(l lVar) {
        if (lVar != null) {
            this.mBarParams.getClass();
            this.mBarParams.getClass();
        } else {
            this.mBarParams.getClass();
        }
        return this;
    }

    public ImmersionBar setOnKeyboardListener(@Nullable m mVar) {
        this.mBarParams.getClass();
        this.mBarParams.getClass();
        return this;
    }

    public ImmersionBar setOnNavigationBarListener(n nVar) {
        if (nVar != null) {
            b bVar = this.mBarParams;
            if (bVar.L == null) {
                bVar.L = nVar;
                j.b().a(this.mBarParams.L);
            }
        } else if (this.mBarParams.L != null) {
            j.b().d(this.mBarParams.L);
            this.mBarParams.L = null;
        }
        return this;
    }

    public ImmersionBar statusBarAlpha(float f11) {
        b bVar = this.mBarParams;
        bVar.f33071d = f11;
        bVar.f33072e = f11;
        return this;
    }

    public ImmersionBar statusBarColor(int i11) {
        return statusBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar statusBarColor(int i11, float f11) {
        return statusBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11), f11);
    }

    public ImmersionBar statusBarColor(int i11, int i12, float f11) {
        return statusBarColorInt(androidx.core.content.b.getColor(this.mActivity, i11), androidx.core.content.b.getColor(this.mActivity, i12), f11);
    }

    public ImmersionBar statusBarColor(String str) {
        return statusBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColor(String str, float f11) {
        return statusBarColorInt(Color.parseColor(str), f11);
    }

    public ImmersionBar statusBarColor(String str, String str2, float f11) {
        return statusBarColorInt(Color.parseColor(str), Color.parseColor(str2), f11);
    }

    public ImmersionBar statusBarColorInt(int i11) {
        this.mBarParams.f33068a = i11;
        return this;
    }

    public ImmersionBar statusBarColorInt(int i11, float f11) {
        b bVar = this.mBarParams;
        bVar.f33068a = i11;
        bVar.f33071d = f11;
        return this;
    }

    public ImmersionBar statusBarColorInt(int i11, int i12, float f11) {
        b bVar = this.mBarParams;
        bVar.f33068a = i11;
        bVar.f33085r = i12;
        bVar.f33071d = f11;
        return this;
    }

    public ImmersionBar statusBarColorTransform(int i11) {
        return statusBarColorTransformInt(androidx.core.content.b.getColor(this.mActivity, i11));
    }

    public ImmersionBar statusBarColorTransform(String str) {
        return statusBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColorTransformEnable(boolean z10) {
        this.mBarParams.f33084q = z10;
        return this;
    }

    public ImmersionBar statusBarColorTransformInt(int i11) {
        this.mBarParams.f33085r = i11;
        return this;
    }

    public ImmersionBar statusBarDarkFont(boolean z10) {
        return statusBarDarkFont(z10, 0.2f);
    }

    public ImmersionBar statusBarDarkFont(boolean z10, float f11) {
        this.mBarParams.f33078k = z10;
        if (!z10 || isSupportStatusBarDarkFont()) {
            b bVar = this.mBarParams;
            bVar.C = bVar.D;
            bVar.f33071d = bVar.f33072e;
        } else {
            this.mBarParams.f33071d = f11;
        }
        return this;
    }

    public ImmersionBar statusBarView(int i11) {
        return statusBarView(this.mActivity.findViewById(i11));
    }

    public ImmersionBar statusBarView(int i11, View view) {
        return statusBarView(view.findViewById(i11));
    }

    public ImmersionBar statusBarView(View view) {
        if (view == null) {
            return this;
        }
        this.mBarParams.A = view;
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 3;
        }
        return this;
    }

    public ImmersionBar supportActionBar(boolean z10) {
        this.mBarParams.E = z10;
        return this;
    }

    public ImmersionBar titleBar(int i11) {
        return titleBar(i11, true);
    }

    public ImmersionBar titleBar(int i11, View view) {
        return titleBar(view.findViewById(i11), true);
    }

    public ImmersionBar titleBar(int i11, View view, boolean z10) {
        return titleBar(view.findViewById(i11), z10);
    }

    public ImmersionBar titleBar(int i11, boolean z10) {
        androidx.fragment.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBar(this.mSupportFragment.getView().findViewById(i11), z10);
        }
        Fragment fragment2 = this.mFragment;
        return (fragment2 == null || fragment2.getView() == null) ? titleBar(this.mActivity.findViewById(i11), z10) : titleBar(this.mFragment.getView().findViewById(i11), z10);
    }

    public ImmersionBar titleBar(View view) {
        return view == null ? this : titleBar(view, true);
    }

    public ImmersionBar titleBar(View view, boolean z10) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 1;
        }
        b bVar = this.mBarParams;
        bVar.f33093z = view;
        bVar.f33084q = z10;
        return this;
    }

    public ImmersionBar titleBarMarginTop(int i11) {
        androidx.fragment.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBarMarginTop(this.mSupportFragment.getView().findViewById(i11));
        }
        Fragment fragment2 = this.mFragment;
        return (fragment2 == null || fragment2.getView() == null) ? titleBarMarginTop(this.mActivity.findViewById(i11)) : titleBarMarginTop(this.mFragment.getView().findViewById(i11));
    }

    public ImmersionBar titleBarMarginTop(int i11, View view) {
        return titleBarMarginTop(view.findViewById(i11));
    }

    public ImmersionBar titleBarMarginTop(View view) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 2;
        }
        this.mBarParams.f33093z = view;
        return this;
    }

    public ImmersionBar transparentBar() {
        b bVar = this.mBarParams;
        bVar.f33068a = 0;
        bVar.f33069b = 0;
        bVar.f33075h = true;
        return this;
    }

    public ImmersionBar transparentNavigationBar() {
        b bVar = this.mBarParams;
        bVar.f33069b = 0;
        bVar.f33075h = true;
        return this;
    }

    public ImmersionBar transparentStatusBar() {
        this.mBarParams.f33068a = 0;
        return this;
    }

    protected void unsetSystemUiFlag(int i11) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility((~i11) & decorView.getSystemUiVisibility());
    }

    public ImmersionBar viewAlpha(float f11) {
        this.mBarParams.f33088u = f11;
        return this;
    }
}
