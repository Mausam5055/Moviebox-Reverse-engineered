.class public final synthetic Lcom/transsion/ad/monopoly/intercept/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/i;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/i;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;->h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method
