.class public final Lcom/transsion/member/n0$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/n0;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/n0;


# direct methods
.method constructor <init>(Lcom/transsion/member/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/n0$a;->d:Lcom/transsion/member/n0;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/member/n0$a;->d:Lcom/transsion/member/n0;

    invoke-static {v0}, Lcom/transsion/member/n0;->d(Lcom/transsion/member/n0;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/y0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/transsion/member/y0;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/member/bean/request/MemberPromoCodeRes;

    invoke-virtual {p0, p1}, Lcom/transsion/member/n0$a;->e(Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    return-void
.end method

.method public e(Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V
    .locals 4

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/n0$a;->d:Lcom/transsion/member/n0;

    invoke-static {v0}, Lcom/transsion/member/n0;->d(Lcom/transsion/member/n0;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/y0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, p1}, Lcom/transsion/member/y0;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
