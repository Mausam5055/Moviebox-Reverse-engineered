.class public final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;-><init>()V

    invoke-static {}, Landroidx/core/os/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
