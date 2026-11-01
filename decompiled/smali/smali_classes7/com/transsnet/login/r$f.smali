.class public final Lcom/transsnet/login/r$f;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/r;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/r;


# direct methods
.method constructor <init>(Lcom/transsnet/login/r;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/r$f;->d:Lcom/transsnet/login/r;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/transsnet/login/r$f;->d:Lcom/transsnet/login/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout_request_failed code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsnet/login/r;->z(Lcom/transsnet/login/r;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/r$f;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/r$f;->d:Lcom/transsnet/login/r;

    const-string v1, "logout_request_success"

    invoke-static {v0, v1}, Lcom/transsnet/login/r;->z(Lcom/transsnet/login/r;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/r$f;->d:Lcom/transsnet/login/r;

    invoke-static {v0, p1}, Lcom/transsnet/login/r;->A(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    :cond_0
    return-void
.end method
