.class public final synthetic Lcom/transsnet/downloader/fragment/w1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/w1;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/w1;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;JZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
