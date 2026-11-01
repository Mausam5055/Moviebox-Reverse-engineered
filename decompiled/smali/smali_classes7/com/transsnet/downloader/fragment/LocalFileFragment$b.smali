.class public final Lcom/transsnet/downloader/fragment/LocalFileFragment$b;
.super Llj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/LocalFileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/LocalFileFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;->a:Lcom/transsnet/downloader/fragment/LocalFileFragment;

    invoke-direct {p0}, Llj/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Llj/a;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;->a:Lcom/transsnet/downloader/fragment/LocalFileFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->loadDefaultData()V

    return-void
.end method
