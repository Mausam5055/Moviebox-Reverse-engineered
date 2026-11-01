.class public final Lcom/transsion/member/view/CheckInView$f;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/CheckInView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/member/view/CheckInView;

.field final synthetic f:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/CheckInView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$f;->e:Lcom/transsion/member/view/CheckInView;

    iput-object p2, p0, Lcom/transsion/member/view/CheckInView$f;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$f;->e:Lcom/transsion/member/view/CheckInView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$f;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1
.end method
