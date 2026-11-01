.class public final synthetic Lcom/transsion/search/fragment/hot/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/hot/adapter/d;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/hot/adapter/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/adapter/e;->a:Lcom/transsion/search/fragment/hot/adapter/d;

    iput p2, p0, Lcom/transsion/search/fragment/hot/adapter/e;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/adapter/e;->a:Lcom/transsion/search/fragment/hot/adapter/d;

    iget v1, p0, Lcom/transsion/search/fragment/hot/adapter/e;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/d$b;->y(Lcom/transsion/search/fragment/hot/adapter/d;ILandroid/view/View;)V

    return-void
.end method
