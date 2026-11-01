.class public final synthetic Lmu/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmu/i;

.field public final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;


# direct methods
.method public synthetic constructor <init>(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu/g;->a:Lmu/i;

    iput-object p2, p0, Lmu/g;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmu/g;->a:Lmu/i;

    iget-object v1, p0, Lmu/g;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmu/i;->h(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
