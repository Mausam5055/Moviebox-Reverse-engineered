.class public final synthetic Lcom/transsion/shorttv/subtitle/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field public final synthetic b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/d;->b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/d;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/d;->b:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;->a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    return-void
.end method
