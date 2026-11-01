.class public final synthetic Lcom/transsion/home/adapter/trending/provider/a;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/b;

.field public final synthetic b:Lcom/transsion/home/adapter/trending/adapter/a;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/b;Lcom/transsion/home/adapter/trending/adapter/a;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/a;->a:Lcom/transsion/home/adapter/trending/provider/b;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/a;->b:Lcom/transsion/home/adapter/trending/adapter/a;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/a;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/a;->a:Lcom/transsion/home/adapter/trending/provider/b;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/a;->b:Lcom/transsion/home/adapter/trending/adapter/a;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/a;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/b;->y(Lcom/transsion/home/adapter/trending/provider/b;Lcom/transsion/home/adapter/trending/adapter/a;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
