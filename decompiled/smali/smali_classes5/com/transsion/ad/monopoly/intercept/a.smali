.class public abstract Lcom/transsion/ad/monopoly/intercept/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/monopoly/intercept/a;Lcom/transsion/ad/monopoly/intercept/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/intercept/a;->f(Lcom/transsion/ad/monopoly/intercept/a;)V

    return-void
.end method

.method private final f(Lcom/transsion/ad/monopoly/intercept/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final c()Lcom/transsion/ad/monopoly/intercept/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;
    .locals 3

    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const/4 v1, 0x1

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
