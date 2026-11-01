.class final Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/transsion/upload/bean/LoggerBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lcom/transsion/upload/bean/LoggerBean;",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sourcePath:Ljava/lang/String;

.field final synthetic $uploadCallback:Lcw/a;

.field final synthetic $zipFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcw/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcw/a;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$uploadCallback:Lcw/a;

    iput-object p2, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$sourcePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$zipFileName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/upload/bean/LoggerBean;

    invoke-virtual {p0, p1}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->invoke(Lcom/transsion/upload/bean/LoggerBean;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/transsion/upload/bean/LoggerBean;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportUploadLogsResult code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/upload/bean/LoggerBean;->getLogId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$uploadCallback:Lcw/a;

    if-eqz v1, :cond_1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcw/a$a;->a(Lcw/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$sourcePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$zipFileName:Ljava/lang/String;

    sget-object v1, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    invoke-static {v1, p1, v0}, Lcom/transsion/upload/log/UploadLoggerManager;->a(Lcom/transsion/upload/log/UploadLoggerManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;->$uploadCallback:Lcw/a;

    if-eqz v2, :cond_3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcw/a$a;->a(Lcw/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
