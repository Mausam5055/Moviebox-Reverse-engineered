.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->g(I)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;
    .locals 4

    sget-object v0, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->o:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$a;

    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/hashtag/model/HashTagTab;

    invoke-virtual {p1}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->b0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-static {v2}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->d0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    :cond_1
    iget-object v3, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-static {v3}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->e0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->a:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    new-instance v2, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;

    invoke-direct {v2, v0, v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;-><init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V

    invoke-virtual {p1, v2}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->F0(Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
