.class public final Lop/f;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lop/f;->a:Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lop/f;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lop/f;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lop/f;->a:Landroid/view/View;

    return-object v0
.end method
