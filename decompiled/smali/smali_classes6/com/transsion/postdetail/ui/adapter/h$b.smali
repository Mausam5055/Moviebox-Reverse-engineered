.class public final Lcom/transsion/postdetail/ui/adapter/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/adapter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lso/x;

.field final synthetic b:Lcom/transsion/postdetail/ui/adapter/h;


# direct methods
.method public constructor <init>(Lcom/transsion/postdetail/ui/adapter/h;Lso/x;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/h$b;->b:Lcom/transsion/postdetail/ui/adapter/h;

    invoke-virtual {p2}, Lso/x;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/h$b;->a:Lso/x;

    return-void
.end method


# virtual methods
.method public final f()Lso/x;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/h$b;->a:Lso/x;

    return-object v0
.end method
