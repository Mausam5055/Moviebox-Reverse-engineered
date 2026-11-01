.class public final Lmw/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmw/b;->e(Lcom/transsion/usercenter/edit/api/RequstUserEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmw/b;


# direct methods
.method constructor <init>(Lmw/b;)V
    .locals 0

    iput-object p1, p0, Lmw/b$a;->a:Lmw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmw/b$a;->a:Lmw/b;

    invoke-virtual {v0}, Lmw/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmw/b$a;->a:Lmw/b;

    invoke-virtual {v0}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/edit/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/usercenter/edit/b;->onEditProfile(Z)V

    :cond_0
    iget-object v0, p0, Lmw/b$a;->a:Lmw/b;

    invoke-virtual {v0}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/edit/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/usercenter/edit/b;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lmw/b$a;->c(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    const-string p1, "bucket"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lmw/b$a;->a:Lmw/b;

    invoke-virtual {p1}, Lmw/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmw/b$a;->a:Lmw/b;

    invoke-virtual {p1}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/edit/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/transsion/usercenter/edit/b;->onEditProfile(Z)V

    :cond_0
    return-void
.end method
