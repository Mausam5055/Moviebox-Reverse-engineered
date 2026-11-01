.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lqv/r;

.field final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lqv/r;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->a:Lqv/r;

    return-void
.end method


# virtual methods
.method public a()Lqv/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->a:Lqv/r;

    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDetailViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPreviousPageVideoId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPreviousTrackId$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$isDownloadImmediately$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Z

    move-result v0

    return v0
.end method

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getData$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getLoginApi(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$a;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setSubscriptionInitiatedByThisView$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    return-void
.end method
