.class public final synthetic Lcom/transsion/shorttv/ui/widget/x0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/x0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/x0;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/x0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/x0;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
