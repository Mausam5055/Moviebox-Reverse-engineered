.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/u0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lpx/a;

.field public final synthetic c:Lcom/transsion/videofloat/bean/FloatActionType;

.field public final synthetic d:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->b:Lpx/a;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->c:Lcom/transsion/videofloat/bean/FloatActionType;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->d:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->b:Lpx/a;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->c:Lcom/transsion/videofloat/bean/FloatActionType;

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/fragment/u0;->d:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->W0(Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;)V

    return-void
.end method
