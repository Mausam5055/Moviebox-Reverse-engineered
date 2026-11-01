.class public final synthetic Lcom/transsion/search/fragment/hot/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/hot/adapter/c;

.field public final synthetic b:Lcom/transsion/search/bean/GroupInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/hot/adapter/c;Lcom/transsion/search/bean/GroupInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/adapter/b;->a:Lcom/transsion/search/fragment/hot/adapter/c;

    iput-object p2, p0, Lcom/transsion/search/fragment/hot/adapter/b;->b:Lcom/transsion/search/bean/GroupInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/adapter/b;->a:Lcom/transsion/search/fragment/hot/adapter/c;

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/adapter/b;->b:Lcom/transsion/search/bean/GroupInfo;

    invoke-static {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/c;->B1(Lcom/transsion/search/fragment/hot/adapter/c;Lcom/transsion/search/bean/GroupInfo;Landroid/view/View;)V

    return-void
.end method
