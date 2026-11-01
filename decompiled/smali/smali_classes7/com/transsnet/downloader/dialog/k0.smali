.class public final synthetic Lcom/transsnet/downloader/dialog/k0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/k0;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/k0;->a:Lcom/transsnet/downloader/dialog/TransferGuideDialog;

    invoke-static {v0}, Lcom/transsnet/downloader/dialog/TransferGuideDialog;->n0(Lcom/transsnet/downloader/dialog/TransferGuideDialog;)V

    return-void
.end method
