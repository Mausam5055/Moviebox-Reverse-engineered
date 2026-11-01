.class public final synthetic Lcom/transsion/postdetail/helper/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/tn/lib/net/bean/BaseDto;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlinx/coroutines/n0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/helper/f;->a:Lcom/tn/lib/net/bean/BaseDto;

    iput-object p2, p0, Lcom/transsion/postdetail/helper/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/helper/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/helper/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/postdetail/helper/f;->e:Lkotlinx/coroutines/n0;

    iput-object p6, p0, Lcom/transsion/postdetail/helper/f;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/helper/f;->a:Lcom/tn/lib/net/bean/BaseDto;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/helper/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/helper/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/helper/f;->e:Lkotlinx/coroutines/n0;

    iget-object v5, p0, Lcom/transsion/postdetail/helper/f;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;

    invoke-static/range {v0 .. v6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->a(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/bean/NegativeFeedbackAction;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
