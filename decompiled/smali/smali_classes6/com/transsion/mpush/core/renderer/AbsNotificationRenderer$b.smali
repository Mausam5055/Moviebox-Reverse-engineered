.class public final Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushImageLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/mpush/api/LocalPushMessage;

.field final synthetic b:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    iput-object p2, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->b:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;

    iput-object p3, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 13

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u6e32\u67d3\u5c42\u3011\u56fe\u7247\u52a0\u8f7d\u5931\u8d25\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v6, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->b:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;

    iget-object v7, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->A(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 14

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u6e32\u67d3\u5c42\u3011\u56fe\u7247\u52a0\u8f7d\u6210\u529f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u56fe\u7247\u5c3a\u5bf8\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->b:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;

    iget-object v8, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v10, p1

    invoke-static/range {v7 .. v13}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->A(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method
