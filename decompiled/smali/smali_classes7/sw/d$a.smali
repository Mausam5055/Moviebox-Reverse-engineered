.class public final Lsw/d$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsw/d;->f(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lsw/d;


# direct methods
.method constructor <init>(Lsw/d;)V
    .locals 0

    iput-object p1, p0, Lsw/d$a;->d:Lsw/d;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lsw/d$a;->d:Lsw/d;

    invoke-virtual {p1}, Lsw/d;->d()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/usercenter/message/model/ResponseMessage;

    invoke-virtual {p0, p1}, Lsw/d$a;->e(Lcom/transsion/usercenter/message/model/ResponseMessage;)V

    return-void
.end method

.method public e(Lcom/transsion/usercenter/message/model/ResponseMessage;)V
    .locals 1

    iget-object v0, p0, Lsw/d$a;->d:Lsw/d;

    invoke-virtual {v0}, Lsw/d;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method
