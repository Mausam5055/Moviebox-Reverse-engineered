.class public final synthetic Lcom/transsion/shorttv_pugc/ui/fragment/download/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/q;->a:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/q;->a:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    check-cast p1, Lcom/transsion/shorttv_pugc/bean/DownloadListBean;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->q0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;Lcom/transsion/shorttv_pugc/bean/DownloadListBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
