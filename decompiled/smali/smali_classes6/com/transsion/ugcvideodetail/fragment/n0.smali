.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/n0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/n0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->k0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
