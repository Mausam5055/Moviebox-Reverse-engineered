.class final Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.monopoly.intercept.CountryInWhitelistHandler"
    f = "CountryInWhitelistHandler.kt"
    l = {
        0x18,
        0x1c
    }
    m = "doHandle"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;


# direct methods
.method constructor <init>(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->this$0:Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    iget-object p1, p0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->this$0:Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
