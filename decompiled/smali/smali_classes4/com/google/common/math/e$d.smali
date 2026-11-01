.class final Lcom/google/common/math/e$d;
.super Lcom/google/common/math/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:D

.field final b:D

.field c:Lcom/google/common/math/e;


# direct methods
.method constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/e;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/e$d;->a:D

    iput-wide p3, p0, Lcom/google/common/math/e$d;->b:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/e$d;->c:Lcom/google/common/math/e;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/e$d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/e$d;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "y = %g * x + %g"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
