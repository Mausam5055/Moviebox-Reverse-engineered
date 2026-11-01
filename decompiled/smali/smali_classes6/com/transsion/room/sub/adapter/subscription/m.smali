.class public final synthetic Lcom/transsion/room/sub/adapter/subscription/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/adapter/subscription/k$b;

.field public final synthetic b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/m;->a:Lcom/transsion/room/sub/adapter/subscription/k$b;

    iput-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/m;->b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/m;->a:Lcom/transsion/room/sub/adapter/subscription/k$b;

    iget-object v1, p0, Lcom/transsion/room/sub/adapter/subscription/m;->b:Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    invoke-static {v0, v1, p1}, Lcom/transsion/room/sub/adapter/subscription/k$b;->C(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V

    return-void
.end method
