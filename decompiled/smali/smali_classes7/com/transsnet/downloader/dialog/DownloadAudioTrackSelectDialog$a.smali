.class public final Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;
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

    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/DubsInfoData;Z)Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;
    .locals 3

    new-instance v0, Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;

    invoke-direct {v0}, Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;-><init>()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "extra_dialog_style"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;->N0(Lcom/transsion/moviedetailapi/bean/DubsInfoData;)V

    return-object v0
.end method
