.class public final synthetic Lcom/transsion/subtitle_download/task/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/subtitle_download/task/f;->n(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
