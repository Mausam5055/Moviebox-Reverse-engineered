.class public final synthetic Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->g(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
