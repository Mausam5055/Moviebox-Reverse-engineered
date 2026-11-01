.class public final synthetic Lcom/transsion/search_pugc/fragment/hot/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/hot/adapter/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/d;->a:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    iput p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/d;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/d;->a:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    iget v1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/d;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->y(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V

    return-void
.end method
