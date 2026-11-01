.class public final Lcom/transsion/subtitle_download/task/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/b;->k(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle_download/task/b;

.field final synthetic b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle_download/task/b;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    iput-object p2, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iput-object p3, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/subtitle_download/task/b;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/subtitle_download/task/b;->i(Lokhttp3/Response;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0x190

    if-gt v0, p1, :cond_1

    const/16 v0, 0x258

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iget-object v1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2, v0, v1}, Lcom/transsion/subtitle_download/task/b;->b(Lcom/transsion/subtitle_download/task/b;Lokhttp3/Response;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->a:Lcom/transsion/subtitle_download/task/b;

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/b$b;->b:Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/subtitle_download/task/b;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/transsion/subtitle_download/task/b$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
