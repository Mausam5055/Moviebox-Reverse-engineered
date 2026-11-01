.class public final Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/core/thread/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->c()I

    move-result v0

    return v0
.end method

.method public final b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    return-object v0
.end method
