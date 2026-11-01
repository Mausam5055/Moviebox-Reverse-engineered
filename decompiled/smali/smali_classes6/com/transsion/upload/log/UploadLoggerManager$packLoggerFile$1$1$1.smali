.class public final Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcw/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcw/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Lcw/a;

    iput-object p2, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 7

    const-string v0, "localFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Lcw/a;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcw/a;->a(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "localFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bucket"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload file success url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    iget-object v3, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Lcw/a;

    new-instance v7, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1$onSuccess$1;

    invoke-direct {v7, v5, p2}, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1$onSuccess$1;-><init>(Lcw/a;Ljava/lang/String;)V

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/transsion/upload/log/UploadLoggerManager;->b(Lcom/transsion/upload/log/UploadLoggerManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcw/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$packLoggerFile$1$1$1;->a:Lcw/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcw/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    :cond_0
    return-void
.end method
