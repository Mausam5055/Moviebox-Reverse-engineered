.class public final Lcom/transsion/payment/lib/PayUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/payment/lib/PayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/PayUtils;

    invoke-direct {v0}, Lcom/transsion/payment/lib/PayUtils;-><init>()V

    sput-object v0, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0xbb8

    :cond_0
    move-wide v1, p1

    const/4 p1, 0x2

    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/payment/lib/PayUtils;->a(JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p5, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    iget v1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    invoke-direct {v0, p0, p5}, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;-><init>(Lcom/transsion/payment/lib/PayUtils;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    iget-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    iget-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    iget-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    iget-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p5

    goto :goto_3

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object p5

    new-instance v2, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$2;

    const/4 v5, 0x0

    invoke-direct {v2, p4, v5}, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    iput p3, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    iput v3, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    invoke-static {p5, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    move-wide v7, p1

    move p1, p3

    move-wide p2, v7

    :goto_2
    :try_start_2
    const-string v2, "Action succeeded"

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p5

    :catch_1
    move-exception p5

    move-wide v7, p1

    move p1, p3

    move-wide p2, v7

    :goto_3
    if-lez p1, :cond_6

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ". Retries left: "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iput-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    iput p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    iput v4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    int-to-long v5, v4

    mul-long/2addr p2, v5

    add-int/lit8 p1, p1, -0x1

    move-wide v7, p2

    move p3, p1

    move-wide p1, v7

    goto :goto_1

    :cond_6
    const-string p1, "All retry attempts exhausted"

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    throw p5
.end method
