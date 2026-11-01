.class public final Lcom/cloud/hisavana/sdk/common/util/q0$a$b;
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
.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/util/q0$b;

.field final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/cloud/hisavana/sdk/common/util/q0$b;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->f:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->f:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v7, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v3, 0x1

    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->a(Lcom/cloud/hisavana/sdk/common/util/q0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/q0$b;Z)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 7

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->f:Lcom/cloud/hisavana/sdk/common/util/q0$b;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q0$a$b;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->a(Lcom/cloud/hisavana/sdk/common/util/q0$a;ZZZZLcom/cloud/hisavana/sdk/common/util/q0$b;Z)V

    return-void
.end method
