.class public Lcom/transsion/usercenter/setting/dev/DevActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lfw/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/dev/DevActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lfw/a;",
        "<init>",
        "()V",
        "",
        "G0",
        "F0",
        "()Lfw/a;",
        "",
        "q0",
        "()Z",
        "",
        "i0",
        "()Ljava/lang/String;",
        "isTranslucent",
        "o0",
        "n0",
        "p0",
        "s0",
        "t0",
        "retryLoadData",
        "i",
        "Z",
        "isTestShowEmptyView",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    return-void
.end method

.method private final G0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/usercenter/setting/dev/DevActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->y0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    const-string v1, "beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/usercenter/setting/dev/DevFragment;

    invoke-direct {v1}, Lcom/transsion/usercenter/setting/dev/DevFragment;-><init>()V

    sget v2, Lcom/transsion/usercenter/R$id;->flComments:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method


# virtual methods
.method public F0()Lfw/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lfw/a;->c(Landroid/view/LayoutInflater;)Lfw/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->F0()Lfw/a;

    move-result-object v0

    return-object v0
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/setting/dev/DevActivity;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "\u65e0\u6570\u636e\u7684\u65f6\u5019\u5c55\u793a\u7684\u6807\u9898"

    goto :goto_0

    :cond_0
    const-string v0, "\u65e0\u7f51\u7edc\u7684\u65f6\u5019\u5c55\u793a\u7684\u6807\u9898"

    :goto_0
    return-object v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->f0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 0

    return-void
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public retryLoadData()V
    .locals 2

    sget-object v0, Luh/b;->a:Luh/b$a;

    const-string v1, "\u8054\u7f51\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->s0()V

    return-void
.end method

.method public s0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->G0()V

    :cond_0
    return-void
.end method

.method public t0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->q0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevActivity;->G0()V

    :cond_0
    return-void
.end method
