.class public final Lcom/transsion/postdetail/ui/adapter/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/adapter/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g(Lcom/transsion/postdetail/ui/adapter/d$a;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/adapter/d$a;->f()Lso/v;

    move-result-object p1

    iget-object p1, p1, Lso/v;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/adapter/d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/transsion/postdetail/ui/adapter/d$a;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lso/v;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lso/v;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/postdetail/ui/adapter/d$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/postdetail/ui/adapter/d$a;-><init>(Lcom/transsion/postdetail/ui/adapter/d;Lso/v;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/postdetail/ui/adapter/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/adapter/d;->g(Lcom/transsion/postdetail/ui/adapter/d$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/adapter/d;->h(Landroid/view/ViewGroup;I)Lcom/transsion/postdetail/ui/adapter/d$a;

    move-result-object p1

    return-object p1
.end method
