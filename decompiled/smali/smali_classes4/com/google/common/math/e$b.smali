.class public final Lcom/google/common/math/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/e$b;->a:D

    iput-wide p3, p0, Lcom/google/common/math/e$b;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/common/math/e$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/e$b;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/google/common/math/e;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    invoke-static {p1, p2}, Lcom/google/common/math/c;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/common/math/e$b;->b:D

    iget-wide v2, p0, Lcom/google/common/math/e$b;->a:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    new-instance v2, Lcom/google/common/math/e$d;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/common/math/e$d;-><init>(DD)V

    return-object v2

    :cond_0
    new-instance p1, Lcom/google/common/math/e$e;

    iget-wide v0, p0, Lcom/google/common/math/e$b;->a:D

    invoke-direct {p1, v0, v1}, Lcom/google/common/math/e$e;-><init>(D)V

    return-object p1
.end method
