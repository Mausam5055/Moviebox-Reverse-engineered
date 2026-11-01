.class public final Lcom/transsion/postdetail/ui/adapter/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lso/v;

.field final synthetic b:Lcom/transsion/postdetail/ui/adapter/d;


# direct methods
.method public constructor <init>(Lcom/transsion/postdetail/ui/adapter/d;Lso/v;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/d$a;->b:Lcom/transsion/postdetail/ui/adapter/d;

    invoke-virtual {p2}, Lso/v;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/d$a;->a:Lso/v;

    return-void
.end method


# virtual methods
.method public final f()Lso/v;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/d$a;->a:Lso/v;

    return-object v0
.end method
