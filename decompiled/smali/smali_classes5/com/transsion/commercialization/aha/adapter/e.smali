.class public final synthetic Lcom/transsion/commercialization/aha/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/aha/adapter/d;

.field public final synthetic b:Lcom/transsion/commercialization/aha/adapter/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/aha/adapter/e;->a:Lcom/transsion/commercialization/aha/adapter/d;

    iput-object p2, p0, Lcom/transsion/commercialization/aha/adapter/e;->b:Lcom/transsion/commercialization/aha/adapter/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/aha/adapter/e;->a:Lcom/transsion/commercialization/aha/adapter/d;

    iget-object v1, p0, Lcom/transsion/commercialization/aha/adapter/e;->b:Lcom/transsion/commercialization/aha/adapter/f;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/commercialization/aha/adapter/f;->y(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
