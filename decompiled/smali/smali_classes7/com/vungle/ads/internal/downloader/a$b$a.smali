.class public final Lcom/vungle/ads/internal/downloader/a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/downloader/a$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/vungle/ads/internal/downloader/a$b;)Lcom/vungle/ads/internal/downloader/a$b;
    .locals 3

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/downloader/a$b;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/a$b;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/a$b;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/a$b;->setStatus(I)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/a$b;->getProgressPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/a$b;->setProgressPercent(I)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/a$b;->getTimestampDownloadStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/a$b;->setTimestampDownloadStart(J)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/a$b;->getSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/a$b;->setSizeBytes(J)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/a$b;->getStartBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/a$b;->setStartBytes(J)V

    return-object v0
.end method
