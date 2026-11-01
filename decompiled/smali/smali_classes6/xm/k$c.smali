.class public final Lxm/k$c;
.super Ljava/lang/Object;

# interfaces
.implements Ldz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lxm/k;->a:Lxm/k;

    invoke-static {p1}, Lxm/k;->i(Lxm/k;)V

    invoke-static {p1}, Lxm/k;->k(Lxm/k;)V

    invoke-static {p1}, Lxm/k;->j(Lxm/k;)V

    return-void
.end method

.method public onLogout()V
    .locals 1

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-static {v0}, Lxm/k;->i(Lxm/k;)V

    invoke-static {v0}, Lxm/k;->k(Lxm/k;)V

    invoke-static {v0}, Lxm/k;->j(Lxm/k;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Ldz/a$a;->c(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method
