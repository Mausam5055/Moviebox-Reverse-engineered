.class public final Lsr/r$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsr/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field final synthetic b:Lsr/r$a;


# direct methods
.method public constructor <init>(Lsr/r$a;Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lsr/r$a$a;->b:Lsr/r$a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsr/r$a$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lsr/r$a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method
