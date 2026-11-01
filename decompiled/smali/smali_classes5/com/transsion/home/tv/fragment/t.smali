.class public final synthetic Lcom/transsion/home/tv/fragment/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/transsion/home/tv/fragment/t;->b:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/t;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/transsion/home/tv/fragment/t;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->B0(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
