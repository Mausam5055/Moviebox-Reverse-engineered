.class public final synthetic Lcom/transsion/subtitle_download/task/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/subtitle_download/task/i;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/String;Lcom/transsion/subtitle_download/task/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/h;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iput-object p2, p0, Lcom/transsion/subtitle_download/task/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/subtitle_download/task/h;->c:Lcom/transsion/subtitle_download/task/i;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/h;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iget-object v1, p0, Lcom/transsion/subtitle_download/task/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/subtitle_download/task/h;->c:Lcom/transsion/subtitle_download/task/i;

    invoke-static {v0, v1, v2}, Lcom/transsion/subtitle_download/task/i;->m(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/String;Lcom/transsion/subtitle_download/task/i;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
