.class public final Lxm/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxm/k;->q(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/memberapi/MemberTaskItem;


# direct methods
.method constructor <init>(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    iput-object p1, p0, Lxm/k$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 1

    if-nez p1, :cond_1

    new-instance p1, Lxm/c;

    invoke-direct {p1}, Lxm/c;-><init>()V

    iget-object v0, p0, Lxm/k$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lxm/c;->g(I)V

    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    :cond_1
    return-void
.end method
