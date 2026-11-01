.class public final Lkw/c$a$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkw/c$a;->e(Lcom/transsion/usercenter/edit/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/edit/a;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/edit/a;)V
    .locals 0

    iput-object p1, p0, Lkw/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lkw/c;->a:Lkw/c$a;

    invoke-static {v0, p1, p2}, Lkw/c$a;->a(Lkw/c$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkw/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/usercenter/edit/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, p1}, Lkw/c$a$b;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 3

    iget-object v0, p0, Lkw/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/usercenter/edit/a;->b(Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method
