.class public final Lop/g;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lop/g;->a:Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lop/g;->b:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/publish/R$id;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    iput-object p1, p0, Lop/g;->c:Lcom/tn/lib/widget/TnTextView;

    return-void
.end method


# virtual methods
.method public final f()Lcom/tn/lib/widget/TnTextView;
    .locals 1

    iget-object v0, p0, Lop/g;->c:Lcom/tn/lib/widget/TnTextView;

    return-object v0
.end method

.method public final g()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lop/g;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lop/g;->a:Landroid/view/View;

    return-object v0
.end method
