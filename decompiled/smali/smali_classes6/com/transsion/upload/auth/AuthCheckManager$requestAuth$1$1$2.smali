.class final Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1$1$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callBack:Lcom/transsion/upload/auth/a;


# direct methods
.method constructor <init>(Lcom/transsion/upload/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1$1$2;->$callBack:Lcom/transsion/upload/auth/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1$1$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lew/a;->a:Lew/a;

    sget-object v1, Lcom/transsion/upload/auth/AuthCheckManager;->a:Lcom/transsion/upload/auth/AuthCheckManager;

    invoke-static {v1}, Lcom/transsion/upload/auth/AuthCheckManager;->a(Lcom/transsion/upload/auth/AuthCheckManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> requestAuth() --> it = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lew/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/upload/auth/AuthCheckManager;->d(Lcom/transsion/upload/bean/TstTokenEntity;)V

    iget-object v0, p0, Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1$1$2;->$callBack:Lcom/transsion/upload/auth/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/upload/auth/a;->onFail(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/transsion/upload/auth/AuthCheckManager;->c(Lcom/transsion/upload/auth/AuthCheckManager;)V

    return-void
.end method
