.class Landroidx/recyclerview/widget/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/k$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/v$c;

.field private final b:Landroidx/recyclerview/widget/s$d;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final d:Landroidx/recyclerview/widget/k$b;

.field e:I

.field private f:Landroidx/recyclerview/widget/RecyclerView$g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/k$b;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/s$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/k$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/k$a;-><init>(Landroidx/recyclerview/widget/k;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->f:Landroidx/recyclerview/widget/RecyclerView$g;

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    invoke-interface {p3, p0}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/k;)Landroidx/recyclerview/widget/v$c;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/v$c;

    iput-object p4, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/s$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/k;->e:I

    iget-object p2, p0, Landroidx/recyclerview/widget/k;->f:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k;->e:I

    return v0
.end method

.method public b(I)J
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/s$d;

    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/s$d;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method c(I)I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/v$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/v$c;->b(I)I

    move-result p1

    return p1
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/v$c;

    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/v$c;->a(I)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method
