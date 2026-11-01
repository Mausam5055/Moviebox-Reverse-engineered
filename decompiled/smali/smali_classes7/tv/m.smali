.class public final synthetic Ltv/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ltv/n;

.field public final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/m;->a:Ltv/n;

    iput-object p2, p0, Ltv/m;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltv/m;->a:Ltv/n;

    iget-object v1, p0, Ltv/m;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-static {v0, v1}, Ltv/n;->d(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
