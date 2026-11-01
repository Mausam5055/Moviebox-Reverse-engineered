.class public final Lcom/transsnet/login/r$c;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/r;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/transsnet/login/r;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsnet/login/r;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/r$c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsnet/login/r$c;->e:Lcom/transsnet/login/r;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/login/r$c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/login/r$c;->e:Lcom/transsnet/login/r;

    invoke-static {v2}, Lcom/transsnet/login/r;->y(Lcom/transsnet/login/r;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchUserInfo failed code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", message="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestUserId="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", instance="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "LoginProvider"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/r$c;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsnet/login/r$c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/login/r$c;->e:Lcom/transsnet/login/r;

    invoke-static {v1}, Lcom/transsnet/login/r;->y(Lcom/transsnet/login/r;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchUserInfo returned null, keep current user, requestUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instance="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LoginProvider"

    invoke-virtual {p1, v2, v0, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/r$c;->e:Lcom/transsnet/login/r;

    invoke-static {v0, p1}, Lcom/transsnet/login/r;->B(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method
