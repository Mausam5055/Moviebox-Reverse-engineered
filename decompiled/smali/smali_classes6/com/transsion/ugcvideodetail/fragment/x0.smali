.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/x0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/x0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/x0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->b1(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    return-void
.end method
