.class public abstract Lcom/transsion/baseui/activity/BaseMusicFloatActivity;
.super Lcom/transsion/baseui/activity/BaseCommonActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Lcom/transsion/baseui/activity/BaseCommonActivity<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0006J\r\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0006J\u0019\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ\u000f\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/baseui/activity/BaseMusicFloatActivity;",
        "Lg4/a;",
        "T",
        "Lcom/transsion/baseui/activity/BaseCommonActivity;",
        "",
        "<init>",
        "()V",
        "",
        "isMusicFloatingAttach",
        "()Z",
        "",
        "getMarginBottom",
        "()I",
        "getMarginLeft",
        "getMarginRight",
        "getMarginTop",
        "isShowedMusicFloatView",
        "",
        "onResume",
        "showMusicFloating",
        "onCloseMusicFloating",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "getTipViewBottomMargin",
        "isShowMemberPushViewTip",
        "BaseUI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/baseui/music/MusicFloatManager;->i(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getMarginBottom()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTipViewBottomMargin()I
    .locals 2

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isMusicFloatingAttach()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowMemberPushViewTip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowedMusicFloatView()Z
    .locals 1

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/baseui/music/MusicFloatManager;->x(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    return v0
.end method

.method public onCloseMusicFloating()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;->isMusicFloatingAttach()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;->getMarginBottom()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/music/MusicFloatManager;->l(Landroidx/appcompat/app/AppCompatActivity;I)V

    :cond_0
    return-void
.end method

.method public final showMusicFloating()V
    .locals 2

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;->getMarginBottom()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/music/MusicFloatManager;->l(Landroidx/appcompat/app/AppCompatActivity;I)V

    return-void
.end method
