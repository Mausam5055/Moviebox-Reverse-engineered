.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:I

.field final synthetic d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;ILcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;Lkotlin/jvm/internal/Ref$BooleanRef;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->c:I

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    iput-object p5, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p6, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->f:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->c:I

    if-gt p2, v1, :cond_0

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->o0(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->f:I

    sub-int/2addr p1, v0

    if-lt p3, p1, :cond_1

    iput-boolean v2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->n0(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;)V

    :cond_1
    return-void
.end method
