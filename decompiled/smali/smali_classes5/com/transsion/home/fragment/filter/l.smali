.class public final synthetic Lcom/transsion/home/fragment/filter/l;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;

.field public final synthetic b:Lcom/transsion/home/adapter/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;Lcom/transsion/home/adapter/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/l;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/filter/l;->b:Lcom/transsion/home/adapter/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/l;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/filter/l;->b:Lcom/transsion/home/adapter/a;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->A0(Lcom/transsion/home/fragment/filter/FilterFragment;Lcom/transsion/home/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
