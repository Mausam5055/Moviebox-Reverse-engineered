.class public final Lcom/cloud/hisavana/sdk/common/util/q0$a$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/util/q0$a;->c(Lcom/cloud/hisavana/sdk/common/util/q0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic g:Lcom/cloud/hisavana/sdk/common/util/q0$b;

.field final synthetic h:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/q0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VastMaterialDownloadUtil"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v7, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->a(Lcom/cloud/hisavana/sdk/common/util/q0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/q0$b;Z)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastMaterialDownloadUtil"

    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xfa

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->g:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$a;->h:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v7, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->a(Lcom/cloud/hisavana/sdk/common/util/q0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/q0$b;Z)V

    return-void
.end method
