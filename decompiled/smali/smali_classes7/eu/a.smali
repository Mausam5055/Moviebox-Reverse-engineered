.class public final Leu/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/a;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    const-string p1, ""

    iput-object p1, p0, Leu/a;->c:Ljava/lang/String;

    iput-object p1, p0, Leu/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 1

    iget-object v0, p0, Leu/a;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Leu/a;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Leu/a;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Leu/a;->b:Z

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leu/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leu/a;->a:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/a;->e:Z

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leu/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/a;->b:Z

    return-void
.end method
