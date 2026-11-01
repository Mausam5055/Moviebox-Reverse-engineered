.class public abstract Lcom/transsion/baseui/fragment/LazyFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0005R\u0016\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lg4/a;",
        "T",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "<init>",
        "()V",
        "",
        "j0",
        "onResume",
        "onDestroyView",
        "",
        "isVisibleToUser",
        "setUserVisibleHint",
        "(Z)V",
        "hidden",
        "onHiddenChanged",
        "lazyLoadData",
        "lazyLoadWithoutNet",
        "isLoaded",
        "Z",
        "isCallResume",
        "isCallUserVisibleHint",
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


# instance fields
.field private isCallResume:Z

.field private isCallUserVisibleHint:Z

.field private isLoaded:Z

.field private isVisibleToUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    return-void
.end method

.method private final j0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isLoaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallResume:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isLoaded:Z

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->lazyLoadData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->lazyLoadWithoutNet()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraditionLazyFragment --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " lazyInit:!!!!!!!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract lazyLoadData()V
.end method

.method public lazyLoadWithoutNet()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isLoaded:Z

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isVisibleToUser:Z

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallUserVisibleHint:Z

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallResume:Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isVisibleToUser:Z

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->j0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallResume:Z

    iget-boolean v1, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallUserVisibleHint:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isVisibleToUser:Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->j0()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    iput-boolean p1, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isVisibleToUser:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/baseui/fragment/LazyFragment;->isCallUserVisibleHint:Z

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->j0()V

    return-void
.end method
