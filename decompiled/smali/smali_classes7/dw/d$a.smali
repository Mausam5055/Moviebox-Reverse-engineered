.class public final Ldw/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldw/d;->l(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldw/d$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Ldw/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcw/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;


# direct methods
.method constructor <init>(Ldw/d;Ljava/lang/String;Lcw/a;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V
    .locals 0

    iput-object p1, p0, Ldw/d$a;->a:Ldw/d;

    iput-object p2, p0, Ldw/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ldw/d$a;->c:Lcw/a;

    iput-object p4, p0, Ldw/d$a;->d:Ljava/lang/String;

    iput-object p5, p0, Ldw/d$a;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ldw/d$a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 p1, 0x2

    const-string v0, ""

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p1, Lew/a;->a:Lew/a;

    iget-object p2, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {p2}, Ldw/a;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onStateChanged() --> CANCELED --> \u53d6\u6d88\u4e86"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lew/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ldw/d$a;->c:Lcw/a;

    if-eqz p1, :cond_4

    iget-object p2, p0, Ldw/d$a;->d:Ljava/lang/String;

    iget-object v1, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {v1}, Ldw/d;->f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    move-result-object v1

    const-string v2, "canceled"

    invoke-interface {p1, p2, v2, v0, v1}, Lcw/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lew/a;->a:Lew/a;

    iget-object p2, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {p2}, Ldw/a;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onStateChanged() --> FAILED"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lew/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Ldw/d$a;->c:Lcw/a;

    if-eqz p1, :cond_4

    iget-object p2, p0, Ldw/d$a;->d:Ljava/lang/String;

    iget-object v1, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {v1}, Ldw/d;->f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    move-result-object v1

    const-string v2, "failed"

    invoke-interface {p1, p2, v2, v0, v1}, Lcw/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lew/a;->a:Lew/a;

    iget-object v0, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {v0}, Ldw/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldw/d$a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onStateChanged() --> COMPLETED --> file path == "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> id = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lew/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ldw/d$a;->c:Lcw/a;

    if-eqz p1, :cond_4

    iget-object p2, p0, Ldw/d$a;->d:Ljava/lang/String;

    iget-object v0, p0, Ldw/d$a;->b:Ljava/lang/String;

    iget-object v1, p0, Ldw/d$a;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "transferObserver.bucket"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0, v1}, Lcw/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b(IJJ)V
    .locals 7

    sget-object v0, Lew/a;->a:Lew/a;

    iget-object v1, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {v1}, Ldw/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onProgressChanged() --> id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> bytesCurrent = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " --> bytesTotal = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lew/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ldw/d$a;->c:Lcw/a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ldw/d$a;->d:Ljava/lang/String;

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcw/a;->a(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 5

    sget-object v0, Lew/a;->a:Lew/a;

    iget-object v1, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {v1}, Ldw/a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onError() --> id = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> ex = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lew/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ldw/d$a;->c:Lcw/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Ldw/d$a;->d:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object p2, p0, Ldw/d$a;->a:Ldw/d;

    invoke-virtual {p2}, Ldw/d;->f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    move-result-object p2

    const-string v1, ""

    invoke-interface {p1, v0, v2, v1, p2}, Lcw/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    :cond_2
    return-void
.end method
