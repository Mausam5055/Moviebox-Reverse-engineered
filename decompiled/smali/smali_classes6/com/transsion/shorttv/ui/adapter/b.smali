.class public final Lcom/transsion/shorttv/ui/adapter/b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private final a:Lms/e0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lms/e0;->a(Landroid/view/View;)Lms/e0;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/b;->a:Lms/e0;

    return-void
.end method


# virtual methods
.method public final f()Lms/e0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/b;->a:Lms/e0;

    return-object v0
.end method
