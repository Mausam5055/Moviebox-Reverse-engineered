.class public final Lcom/transsion/publish/adapter/n0;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private a:Lcom/google/android/material/imageview/ShapeableImageView;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/publish/R$id;->ivCover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/n0;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    sget v0, Lcom/transsion/publish/R$id;->tvSubjectTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/n0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/transsion/publish/R$id;->tvSubjectYear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/n0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/transsion/publish/R$id;->iv_publish_subject_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/publish/adapter/n0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/n0;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object v0
.end method

.method public final g()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/n0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final h()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/n0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final i()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/n0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method
