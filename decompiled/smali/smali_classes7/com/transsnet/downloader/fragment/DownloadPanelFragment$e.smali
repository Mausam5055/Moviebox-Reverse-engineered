.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/adapter/u0$b;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$e;->a:Lcom/transsnet/downloader/adapter/u0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$e;->a:Lcom/transsnet/downloader/adapter/u0$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    :cond_0
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    return-void
.end method
