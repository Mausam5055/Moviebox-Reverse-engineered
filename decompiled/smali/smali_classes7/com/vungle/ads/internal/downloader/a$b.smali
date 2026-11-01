.class public final Lcom/vungle/ads/internal/downloader/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/a$b$b;,
        Lcom/vungle/ads/internal/downloader/a$b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/downloader/a$b$a;


# instance fields
.field private progressPercent:I

.field private sizeBytes:J

.field private startBytes:J

.field private status:I

.field private timestampDownloadStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/downloader/a$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/a$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/downloader/a$b;->Companion:Lcom/vungle/ads/internal/downloader/a$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getStatus$annotations()V
    .locals 0
    .annotation runtime Lcom/vungle/ads/internal/downloader/a$b$b;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getProgressPercent()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/downloader/a$b;->progressPercent:I

    return v0
.end method

.method public final getSizeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/a$b;->sizeBytes:J

    return-wide v0
.end method

.method public final getStartBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/a$b;->startBytes:J

    return-wide v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/downloader/a$b;->status:I

    return v0
.end method

.method public final getTimestampDownloadStart()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/downloader/a$b;->timestampDownloadStart:J

    return-wide v0
.end method

.method public final setProgressPercent(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/downloader/a$b;->progressPercent:I

    return-void
.end method

.method public final setSizeBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/a$b;->sizeBytes:J

    return-void
.end method

.method public final setStartBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/a$b;->startBytes:J

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/downloader/a$b;->status:I

    return-void
.end method

.method public final setTimestampDownloadStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/downloader/a$b;->timestampDownloadStart:J

    return-void
.end method
