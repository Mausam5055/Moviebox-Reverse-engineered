.class public final synthetic Lcom/transsion/audio/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/fragment/c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragment/c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-static {v0, p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->o0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
