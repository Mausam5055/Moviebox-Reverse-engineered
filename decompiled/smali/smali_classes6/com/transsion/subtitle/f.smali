.class public final synthetic Lcom/transsion/subtitle/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/f;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iput-object p2, p0, Lcom/transsion/subtitle/f;->b:Lcom/transsion/subtitle/VideoSubtitleControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/f;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iget-object v1, p0, Lcom/transsion/subtitle/f;->b:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V

    return-void
.end method
