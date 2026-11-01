.class final Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/transsion/mpush/api/LocalPushMessage;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/transsion/mpush/api/LocalPushMessage;I)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    iput p2, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    iget-object v1, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    iget-object v3, p1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    iget p1, p1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a:Lcom/transsion/mpush/api/LocalPushMessage;

    iget v1, p0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimedMessage(message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pushSeconds="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
