.class public final synthetic Lcom/transsion/member/adapter/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/adapter/i;

.field public final synthetic b:Lcom/transsion/memberapi/SkuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/adapter/i;Lcom/transsion/memberapi/SkuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/adapter/h;->a:Lcom/transsion/member/adapter/i;

    iput-object p2, p0, Lcom/transsion/member/adapter/h;->b:Lcom/transsion/memberapi/SkuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/adapter/h;->a:Lcom/transsion/member/adapter/i;

    iget-object v1, p0, Lcom/transsion/member/adapter/h;->b:Lcom/transsion/memberapi/SkuItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/member/adapter/i;->B1(Lcom/transsion/member/adapter/i;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)V

    return-void
.end method
