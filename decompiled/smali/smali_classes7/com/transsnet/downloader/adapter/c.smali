.class public final synthetic Lcom/transsnet/downloader/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

.field public final synthetic b:I

.field public final synthetic c:Ln6/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/c;->a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

    iput p2, p0, Lcom/transsnet/downloader/adapter/c;->b:I

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/c;->c:Ln6/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/c;->a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

    iget v1, p0, Lcom/transsnet/downloader/adapter/c;->b:I

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/c;->c:Ln6/a;

    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->f(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
