.class public final synthetic Lcom/transsion/subtitle/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

.field public final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/s;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/s;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/s;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/s;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-static {v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->t0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
