.class public final Lcom/gyf/immersionbar/ImmersionBar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gyf/immersionbar/ImmersionCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private final mActivity:Landroid/app/Activity;

.field private mBarConfig:Lcom/gyf/immersionbar/a;

.field private mBarParams:Lcom/gyf/immersionbar/b;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mFitsKeyboard:Lcom/gyf/immersionbar/f;

.field private mFitsStatusBarType:I

.field private mFragment:Landroid/app/Fragment;

.field private mInitialized:Z

.field private mIsActionBarBelowLOLLIPOP:Z

.field private mIsDialog:Z

.field private mIsDialogFragment:Z

.field private mIsFragment:Z

.field private mKeyboardTempEnable:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarWidth:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

.field private mSupportFragment:Landroidx/fragment/app/Fragment;

.field private final mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gyf/immersionbar/b;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method private adjustDarkModeParams()V
    .locals 6

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v0, Lcom/gyf/immersionbar/b;->a:I

    iget v2, v0, Lcom/gyf/immersionbar/b;->r:I

    iget v0, v0, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v1, v2, v0}, Lz0/b;->d(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->m:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, -0x454546

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-le v0, v5, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, v1, Lcom/gyf/immersionbar/b;->o:F

    invoke-virtual {p0, v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v0, Lcom/gyf/immersionbar/b;->b:I

    iget v2, v0, Lcom/gyf/immersionbar/b;->s:I

    iget v0, v0, Lcom/gyf/immersionbar/b;->f:F

    invoke-static {v1, v2, v0}, Lz0/b;->d(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->n:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-le v0, v5, :cond_2

    move v3, v4

    :cond_2
    iget v0, v1, Lcom/gyf/immersionbar/b;->p:F

    invoke-virtual {p0, v3, v0}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    :cond_3
    return-void
.end method

.method private cancelListener()V
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/e;->d(Lcom/gyf/immersionbar/ImmersionCallback;)V

    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, v1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/j;->d(Lcom/gyf/immersionbar/n;)V

    :cond_1
    return-void
.end method

.method public static checkFitsSystemWindows(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private checkInitWithActivity()V
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_1
    return-void
.end method

.method public static destroy(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/gyf/immersionbar/q;->b(Landroid/app/Activity;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static destroy(Landroid/app/Activity;Landroid/app/Dialog;Z)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gyf/immersionbar/q;->b(Landroid/app/Activity;Landroid/app/Dialog;Z)V

    return-void
.end method

.method private fitsKeyboard()V
    .locals 2

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gyf/immersionbar/f;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/f;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v1, Lcom/gyf/immersionbar/b;->G:I

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/f;->c(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->F:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-nez v1, :cond_3

    new-instance v1, Lcom/gyf/immersionbar/f;

    invoke-direct {v1, v0}, Lcom/gyf/immersionbar/f;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    :cond_3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, v0, Lcom/gyf/immersionbar/b;->G:I

    invoke-virtual {v1, v0}, Lcom/gyf/immersionbar/f;->c(I)V

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    :cond_5
    :goto_0
    return-void
.end method

.method private fitsLayoutOverlap()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->B:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->k()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-eq v3, v0, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v4, v4, Lcom/gyf/immersionbar/b;->A:Landroid/view/View;

    new-array v0, v0, [Landroid/view/View;

    aput-object v4, v0, v1

    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v4, v4, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    new-array v0, v0, [Landroid/view/View;

    aput-object v4, v0, v1

    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v4, v4, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    new-array v0, v0, [Landroid/view/View;

    aput-object v4, v0, v1

    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private fitsNotchScreen()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/d;->a(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private fitsWindows()V
    .locals 1

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsAboveLOLLIPOP()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsBelowLOLLIPOP()V

    :goto_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsLayoutOverlap()V

    return-void
.end method

.method private fitsWindowsAboveLOLLIPOP()V
    .locals 3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->y:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->E:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    add-int/2addr v0, v2

    :cond_2
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void
.end method

.method private fitsWindowsBelowLOLLIPOP()V
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    :goto_0
    return-void
.end method

.method private fitsWindowsEMUI()V
    .locals 3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/d;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->I:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/e;->a(Lcom/gyf/immersionbar/ImmersionCallback;)V

    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/e;->c(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/gyf/immersionbar/e;->d(Lcom/gyf/immersionbar/ImmersionCallback;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fitsWindowsKITKAT()V
    .locals 5

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->y:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->E:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v3, v2, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcom/gyf/immersionbar/b;->I:Z

    if-eqz v3, :cond_7

    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->h:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->d()I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->g()I

    move-result v2

    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v1

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v4, v4, Lcom/gyf/immersionbar/b;->i:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->n()Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->n()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->g()I

    move-result v2

    goto :goto_2

    :cond_7
    move v2, v1

    move v3, v2

    :cond_8
    :goto_2
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->a()I

    move-result p0

    return p0
.end method

.method public static getActionBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getActionBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->d()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/gyf/immersionbar/g$a;->a:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/g$a;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/a;->f(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->g()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarWidth(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/gyf/immersionbar/g$a;->a:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/g$a;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/a;->i(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarWidth(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Activity;)I
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method public static getNotchHeight(Landroid/app/Fragment;Lcom/gyf/immersionbar/k;)V
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method public static getNotchHeight(Landroidx/fragment/app/Fragment;Lcom/gyf/immersionbar/k;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method private static getRetriever()Lcom/gyf/immersionbar/q;
    .locals 1

    invoke-static {}, Lcom/gyf/immersionbar/q;->i()Lcom/gyf/immersionbar/q;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-string v0, "status_bar_height"

    invoke-static {p0, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->m()Z

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasNavigationBar(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/app/Activity;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->hasNotchScreen(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private hideBarAboveR()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/gyf/immersionbar/ImmersionBar$a;->a:[I

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v2, v2, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    :goto_0
    invoke-static {v0, v3}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    :cond_4
    return-void
.end method

.method private hideBarBelowR(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/gyf/immersionbar/ImmersionBar$a;->a:[I

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, v1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    or-int/lit16 p1, p1, 0x202

    goto :goto_0

    :cond_2
    or-int/lit16 p1, p1, 0x404

    goto :goto_0

    :cond_3
    or-int/lit16 p1, p1, 0x206

    :goto_0
    or-int/lit16 p1, p1, 0x1000

    return p1
.end method

.method public static hideStatusBar(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private initBarAboveLOLLIPOP(I)I
    .locals 6

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    iput v1, v0, Lcom/gyf/immersionbar/b;->c:I

    :cond_0
    or-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->h:Z

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, p1, 0x600

    :cond_1
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, p1, Lcom/gyf/immersionbar/b;->q:Z

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-static {p1, v3}, Lcom/gyf/immersionbar/h;->a(Landroid/view/Window;Z)V

    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v4, v1, Lcom/gyf/immersionbar/b;->a:I

    iget v5, v1, Lcom/gyf/immersionbar/b;->r:I

    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v4, v5, v1}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget v4, p1, Lcom/gyf/immersionbar/b;->a:I

    iget p1, p1, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v4, v3, p1}, Lz0/b;->d(IIF)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, p1, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v1, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_5

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-static {p1, v3}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    :cond_5
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v2, v1, Lcom/gyf/immersionbar/b;->b:I

    iget v3, v1, Lcom/gyf/immersionbar/b;->s:I

    iget v1, v1, Lcom/gyf/immersionbar/b;->f:F

    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget p1, p1, Lcom/gyf/immersionbar/b;->c:I

    invoke-virtual {v1, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    return v0
.end method

.method private initBarBelowLOLLIPOP()V
    .locals 3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupStatusBarView()V

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/b;->H:Z

    const/high16 v2, 0x8000000

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->d()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    :cond_2
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->g()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    :cond_3
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupNavBarView()V

    :cond_4
    return-void
.end method

.method private initCommonParameter(Landroid/view/Window;)V
    .locals 1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    new-instance p1, Lcom/gyf/immersionbar/b;

    invoke-direct {p1}, Lcom/gyf/immersionbar/b;-><init>()V

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isGesture(Landroid/app/Fragment;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isGesture(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGesture(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/gyf/immersionbar/g$a;->a:Z

    return p0
.end method

.method public static isGesture(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isGesture(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->n()Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isNavigationAtBottom(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isNavigationAtBottom(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isSupportNavigationIconDark()Z
    .locals 2

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportStatusBarDarkFont()Z
    .locals 1

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private postFitsWindowsBelowLOLLIPOP()V
    .locals 1

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsKITKAT()V

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsEMUI()V

    :cond_0
    return-void
.end method

.method private setBarDarkFontAboveR()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFontAboveR()V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDarkAboveR()V

    :cond_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Activity;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    instance-of v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :goto_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroidx/fragment/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method private setNavigationIconDark(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->l:Z

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x10

    :cond_0
    return p1
.end method

.method private setNavigationIconDarkAboveR()V
    .locals 3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->l:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    invoke-static {v0, v2, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method private setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput p3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput p4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    return-void
.end method

.method private setSpecialBarDarkMode()V
    .locals 3

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->k:Z

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-static {v0, v2, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const-string v2, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->l:Z

    invoke-static {v1, v2, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v0, Lcom/gyf/immersionbar/b;->C:I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->k:Z

    invoke-static {v1, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setStatusBarDarkFont(I)I
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->k:Z

    if-eqz v0, :cond_0

    or-int/lit16 p1, p1, 0x2000

    :cond_0
    return p1
.end method

.method private setStatusBarDarkFontAboveR()V
    .locals 3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->k:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->unsetSystemUiFlag(I)V

    :cond_0
    invoke-static {v0, v2, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_5

    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_4
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_7

    sget v4, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-nez v4, :cond_4

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_4
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v5, :cond_6

    if-ne v7, v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    add-int/2addr v7, v5

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v5, Lcom/gyf/immersionbar/ImmersionBar$1;

    invoke-direct {v5, v4, v2, p1, v3}, Lcom/gyf/immersionbar/ImmersionBar$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;ILjava/lang/Integer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_5

    sget v4, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :cond_4
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method private setupNavBarView()V
    .locals 4

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/d;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/a;->n()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/a;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/a;->g()I

    move-result v3

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800005

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v2, v1, Lcom/gyf/immersionbar/b;->b:I

    iget v3, v1, Lcom/gyf/immersionbar/b;->s:I

    iget v1, v1, Lcom/gyf/immersionbar/b;->f:F

    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->H:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->I:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->i:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setupStatusBarView()V
    .locals 6

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/d;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->k()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v3, v1, Lcom/gyf/immersionbar/b;->q:Z

    if-eqz v3, :cond_1

    iget v2, v1, Lcom/gyf/immersionbar/b;->a:I

    iget v3, v1, Lcom/gyf/immersionbar/b;->r:I

    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/gyf/immersionbar/b;->a:I

    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v3, v2, v1}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static showStatusBar(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private transformView()V
    .locals 7

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v3, v3, Lcom/gyf/immersionbar/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v4, v4, Lcom/gyf/immersionbar/b;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v1, Lcom/gyf/immersionbar/b;->u:F

    const/4 v5, 0x0

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v4, v4, Lcom/gyf/immersionbar/b;->d:F

    invoke-static {v1, v3, v4}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v4, v4, Lcom/gyf/immersionbar/b;->u:F

    invoke-static {v1, v3, v4}, Lz0/b;->d(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private updateBarConfig()V
    .locals 2

    new-instance v0, Lcom/gyf/immersionbar/a;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->a()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    :cond_1
    return-void
.end method

.method private updateBarParams()V
    .locals 2

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->adjustDarkModeParams()V

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    :cond_2
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->F:Z

    :cond_3
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->d(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/gyf/immersionbar/q;->c(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gyf/immersionbar/q;->c(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->d(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/DialogFragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroidx/fragment/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/DialogFragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroidx/fragment/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, v0, Lcom/gyf/immersionbar/b;->r:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v1, Lcom/gyf/immersionbar/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p2, p2, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p2, p2, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applySystemFits(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->B:Z

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-object p0
.end method

.method public autoDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->m:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->o:F

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->n:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->p:F

    return-object p0
.end method

.method public autoNavigationBarDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoNavigationBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoNavigationBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->n:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->p:F

    return-object p0
.end method

.method public autoStatusBarDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoStatusBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoStatusBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->m:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->o:F

    return-object p0
.end method

.method public barAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->d:F

    iput p1, v0, Lcom/gyf/immersionbar/b;->e:F

    iput p1, v0, Lcom/gyf/immersionbar/b;->f:F

    iput p1, v0, Lcom/gyf/immersionbar/b;->g:F

    return-object p0
.end method

.method public barColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    return-object p0
.end method

.method public barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->d:F

    iput p2, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->r:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->s:I

    iput p3, v0, Lcom/gyf/immersionbar/b;->d:F

    iput p3, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public barColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->r:I

    iput p1, v0, Lcom/gyf/immersionbar/b;->s:I

    return-object p0
.end method

.method public barEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->K:Z

    return-object p0
.end method

.method public fitsLayoutOverlapEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->B:Z

    return-object p0
.end method

.method fitsParentBarKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->d()V

    :cond_0
    return-void
.end method

.method public fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->y:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public fitsSystemWindows(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZI)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindows(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindowsInt(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->y:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->v:I

    iput p3, v0, Lcom/gyf/immersionbar/b;->w:I

    iput p4, v0, Lcom/gyf/immersionbar/b;->x:F

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-static {p2, p3, p4}, Lz0/b;->d(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, p1, Lcom/gyf/immersionbar/b;->C:I

    iput v0, p1, Lcom/gyf/immersionbar/b;->D:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, p1, Lcom/gyf/immersionbar/b;->C:I

    iput v0, p1, Lcom/gyf/immersionbar/b;->D:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    iput p1, v0, Lcom/gyf/immersionbar/b;->D:I

    return-object p0
.end method

.method public fullScreen(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->h:Z

    return-object p0
.end method

.method getActionBarHeight()I
    .locals 1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    return v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getBarConfig()Lcom/gyf/immersionbar/a;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gyf/immersionbar/a;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    return-object v0
.end method

.method public getBarParams()Lcom/gyf/immersionbar/b;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    return-object v0
.end method

.method getFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method getPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    return v0
.end method

.method getPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    return v0
.end method

.method getPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    return v0
.end method

.method getPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    return v0
.end method

.method getSupportFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gyf/immersionbar/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, p1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/gyf/immersionbar/b;->i:Z

    :cond_2
    return-object p0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->K:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarParams()V

    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsKeyboard()V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->transformView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    :cond_0
    return-void
.end method

.method initialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    return v0
.end method

.method isDialogFragment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    return v0
.end method

.method isFragment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    return v0
.end method

.method public keyboardEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, v0, Lcom/gyf/immersionbar/b;->G:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->keyboardEnable(ZI)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public keyboardEnable(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->F:Z

    iput p2, v0, Lcom/gyf/immersionbar/b;->G:I

    iput-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    return-object p0
.end method

.method public keyboardMode(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->G:I

    return-object p0
.end method

.method public navigationBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->f:F

    iput p1, v0, Lcom/gyf/immersionbar/b;->g:F

    return-object p0
.end method

.method public navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    return-object p0
.end method

.method public navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->s:I

    iput p3, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public navigationBarColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->s:I

    return-object p0
.end method

.method public navigationBarDarkIcon(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->l:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportNavigationIconDark()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p2, p1, Lcom/gyf/immersionbar/b;->f:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget p2, p1, Lcom/gyf/immersionbar/b;->g:F

    iput p2, p1, Lcom/gyf/immersionbar/b;->f:F

    :goto_0
    return-object p0
.end method

.method public navigationBarEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->H:Z

    return-object p0
.end method

.method public navigationBarWithEMUI3Enable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->J:Z

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->I:Z

    :cond_0
    return-object p0
.end method

.method public navigationBarWithKitkatEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->I:Z

    return-object p0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/b;->I:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 3

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->cancelListener()V

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v2, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput-boolean v2, v1, Lcom/gyf/immersionbar/b;->F:Z

    iget-object v1, v1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    return-void
.end method

.method public onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V
    .locals 4

    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v0, Lcom/gyf/immersionbar/d;->b:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lcom/gyf/immersionbar/a;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    move v0, v2

    move v1, v0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v3, 0x1020002

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->d()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    :cond_2
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->g()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/b;->i:Z

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x50

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->h:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    const v0, 0x800005

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->h:Z

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    move v1, v0

    move v0, v2

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    :cond_8
    return-void
.end method

.method onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSupportAllView()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-object p0
.end method

.method public removeSupportView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    new-instance v0, Lcom/gyf/immersionbar/b;

    invoke-direct {v0}, Lcom/gyf/immersionbar/b;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    return-object p0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    return-void
.end method

.method setBar()V
    .locals 2

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsNotchScreen()V

    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->initBarAboveLOLLIPOP(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFont(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDark(I)I

    move-result v1

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBarDarkFontAboveR()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->initBarBelowLOLLIPOP()V

    :goto_0
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarBelowR(I)I

    move-result v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setSpecialBarDarkMode()V

    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarAboveR()V

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/j;->c(Landroid/app/Application;)V

    :cond_1
    return-void
.end method

.method public setOnBarListener(Lcom/gyf/immersionbar/l;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-object p0
.end method

.method public setOnKeyboardListener(Lcom/gyf/immersionbar/m;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0
    .param p1    # Lcom/gyf/immersionbar/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setOnNavigationBarListener(Lcom/gyf/immersionbar/n;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    if-nez v1, :cond_1

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    move-result-object p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/j;->a(Lcom/gyf/immersionbar/n;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p1, p1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    move-result-object p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/j;->d(Lcom/gyf/immersionbar/n;)V

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public statusBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->d:F

    iput p1, v0, Lcom/gyf/immersionbar/b;->e:F

    return-object p0
.end method

.method public statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    return-object p0
.end method

.method public statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->d:F

    return-object p0
.end method

.method public statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput p2, v0, Lcom/gyf/immersionbar/b;->r:I

    iput p3, v0, Lcom/gyf/immersionbar/b;->d:F

    return-object p0
.end method

.method public statusBarColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransformEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->q:Z

    return-object p0
.end method

.method public statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->r:I

    return-object p0
.end method

.method public statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->k:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportStatusBarDarkFont()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p2, p1, Lcom/gyf/immersionbar/b;->d:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget p2, p1, Lcom/gyf/immersionbar/b;->D:I

    iput p2, p1, Lcom/gyf/immersionbar/b;->C:I

    iget p2, p1, Lcom/gyf/immersionbar/b;->e:F

    iput p2, p1, Lcom/gyf/immersionbar/b;->d:F

    :goto_0
    return-object p0
.end method

.method public statusBarView(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarView(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->A:Landroid/view/View;

    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    return-object p0
.end method

.method public supportActionBar(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->E:Z

    return-object p0
.end method

.method public titleBar(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(IZ)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(ILandroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(IZ)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    iput-boolean p2, v0, Lcom/gyf/immersionbar/b;->q:Z

    return-object p0
.end method

.method public titleBarMarginTop(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    return-object p0
.end method

.method public transparentBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/b;->a:I

    iput v1, v0, Lcom/gyf/immersionbar/b;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->h:Z

    return-object p0
.end method

.method public transparentNavigationBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/b;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->h:Z

    return-object p0
.end method

.method public transparentStatusBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/b;->a:I

    return-object p0
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public viewAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->u:F

    return-object p0
.end method
