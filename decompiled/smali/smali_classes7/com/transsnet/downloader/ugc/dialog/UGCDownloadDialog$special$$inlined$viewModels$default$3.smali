.class public final Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/v0$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0002\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/lifecycle/t0;",
        "VM",
        "Landroidx/lifecycle/v0$c;",
        "<anonymous>",
        "()Landroidx/lifecycle/v0$c;",
        "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$3"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $ownerProducer:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_viewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;->$ownerProducer:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/v0$c;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;->$ownerProducer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/m;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/lifecycle/m;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;

    move-result-object v2

    :cond_2
    const-string v0, "(ownerProducer() as? Has\u2026tViewModelProviderFactory"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$special$$inlined$viewModels$default$3;->invoke()Landroidx/lifecycle/v0$c;

    move-result-object v0

    return-object v0
.end method
