.class public final synthetic Lcom/transsion/room/sub/adapter/subscription/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/adapter/subscription/k$b;

.field public final synthetic b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/l;->a:Lcom/transsion/room/sub/adapter/subscription/k$b;

    iput-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/l;->b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    iput-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/l;->c:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/l;->a:Lcom/transsion/room/sub/adapter/subscription/k$b;

    iget-object v1, p0, Lcom/transsion/room/sub/adapter/subscription/l;->b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    iget-object v2, p0, Lcom/transsion/room/sub/adapter/subscription/l;->c:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/room/sub/adapter/subscription/k$b;->E(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method
