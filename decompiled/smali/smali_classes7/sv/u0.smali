.class public final synthetic Lsv/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv/u0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsv/u0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->m(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
