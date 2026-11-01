.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/v0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/v0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/fragment/v0;->b:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/v0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/v0;->b:Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->a1(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
