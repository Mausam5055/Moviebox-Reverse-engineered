.class public final Lmw/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmw/b;->f()V
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

    iput-object p1, p0, Lmw/b$b;->a:Lmw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmw/b$b;->a:Lmw/b;

    invoke-virtual {v0}, Lmw/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmw/b$b;->a:Lmw/b;

    invoke-virtual {v0}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/edit/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/usercenter/edit/b;->onEditProfile(Z)V

    :cond_0
    iget-object v0, p0, Lmw/b$b;->a:Lmw/b;

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

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, p1, p2, p3}, Lmw/b$b;->c(Lcom/transsnet/loginapi/bean/UserInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/transsnet/loginapi/bean/UserInfo;ZLjava/lang/String;)V
    .locals 0

    const-string p2, "bucket"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lmw/b$b;->a:Lmw/b;

    invoke-virtual {p2}, Lmw/a;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmw/b$b;->a:Lmw/b;

    invoke-virtual {p2}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/usercenter/edit/b;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/transsion/usercenter/edit/b;->onUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmw/b$b;->a:Lmw/b;

    invoke-virtual {p1}, Lmw/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/edit/b;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/usercenter/edit/b;->onUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
