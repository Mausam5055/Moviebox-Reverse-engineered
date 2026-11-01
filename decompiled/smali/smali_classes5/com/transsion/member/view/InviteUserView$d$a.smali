.class public final Lcom/transsion/member/view/InviteUserView$d$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/InviteUserView$d;->i(Lcom/transsion/member/view/InviteUserView$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/InviteUserView$e;

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/InviteUserView$e;Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iput-object p2, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/member/view/InviteUserView;->access$setNeedShowLoadMoreDismissAnimation$p(Lcom/transsion/member/view/InviteUserView;Z)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v2}, Lcom/transsion/member/view/InviteUserView;->access$getSpaceH$p(Lcom/transsion/member/view/InviteUserView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method
