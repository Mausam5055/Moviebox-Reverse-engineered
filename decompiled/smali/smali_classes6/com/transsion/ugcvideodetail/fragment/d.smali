.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/d;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/d;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->u0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    return-void
.end method
