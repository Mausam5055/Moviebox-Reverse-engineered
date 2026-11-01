.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/f0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/f0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->W0(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method
