.class public final synthetic Lcom/transsion/search_pugc/fragment/result/provider/p;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

.field public final synthetic b:Lcom/transsion/search_pugc/fragment/result/provider/s;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->a:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/provider/p;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/result/provider/s;->z(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
