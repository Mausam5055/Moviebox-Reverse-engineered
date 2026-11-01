.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lok/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;->c(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lok/b$a;->a(Lok/b;Z)V

    return-void
.end method

.method public onFail()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> interception() --> onFail() --> \u5931\u8d25\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    move-result-object v3

    new-instance v4, Lcom/transsnet/downloader/fragment/n3;

    invoke-direct {v4, v1}, Lcom/transsnet/downloader/fragment/n3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    invoke-virtual {v3, v0, v2, v4}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
