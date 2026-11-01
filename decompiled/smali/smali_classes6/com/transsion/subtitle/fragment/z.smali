.class public final synthetic Lcom/transsion/subtitle/fragment/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

.field public final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/z;->a:Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/z;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/z;->a:Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/z;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-static {v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
