.class public final Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Jcg/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sj"
.end annotation


# instance fields
.field final EjP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/Dq;",
            ">;"
        }
    .end annotation
.end field

.field private HiB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Sj:I

.field TKC:I

.field sP:I

.field private vS:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC:I

    return-void
.end method

.method private static Sj(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p0, p1

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->vS:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->HiB:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj:I

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    .locals 0

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/component/Jcg/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/Jcg/Sj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/Jcg/Sj;-><init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;Lcom/bytedance/sdk/component/Jcg/Sj$1;)V

    return-object v0
.end method

.method public TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC:I

    return-object p0
.end method

.method public sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP:I

    return-object p0
.end method
