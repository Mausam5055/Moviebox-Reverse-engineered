.class public final Lcom/transsion/member/adapter/e$b;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/adapter/e;->H1(Landroid/widget/TextView;Lcom/transsion/memberapi/SkuPromotionItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/adapter/e;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/transsion/memberapi/SkuPromotionItem;


# direct methods
.method constructor <init>(JLcom/transsion/member/adapter/e;Landroid/widget/TextView;Lcom/transsion/memberapi/SkuPromotionItem;)V
    .locals 0

    iput-object p3, p0, Lcom/transsion/member/adapter/e$b;->a:Lcom/transsion/member/adapter/e;

    iput-object p4, p0, Lcom/transsion/member/adapter/e$b;->b:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/member/adapter/e$b;->c:Lcom/transsion/memberapi/SkuPromotionItem;

    const-wide/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/member/adapter/e$b;->a:Lcom/transsion/member/adapter/e;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/transsion/member/adapter/e$b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/member/adapter/e;->D1(Lcom/transsion/member/adapter/e;JLandroid/widget/TextView;)V

    iget-object v0, p0, Lcom/transsion/member/adapter/e$b;->a:Lcom/transsion/member/adapter/e;

    iget-object v1, p0, Lcom/transsion/member/adapter/e$b;->c:Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, v1}, Lcom/transsion/member/adapter/e;->C1(Lcom/transsion/member/adapter/e;Lcom/transsion/memberapi/SkuPromotionItem;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/adapter/e$b;->a:Lcom/transsion/member/adapter/e;

    iget-object v1, p0, Lcom/transsion/member/adapter/e$b;->b:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, v1}, Lcom/transsion/member/adapter/e;->D1(Lcom/transsion/member/adapter/e;JLandroid/widget/TextView;)V

    return-void
.end method
