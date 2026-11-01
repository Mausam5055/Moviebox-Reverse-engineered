.class public final Lcom/transsnet/downloader/DownloadManagerApi$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/DownloadManagerApi;
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

    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsnet/downloader/DownloadManagerApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->A()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/DownloadManagerApi;

    return-object v0
.end method
