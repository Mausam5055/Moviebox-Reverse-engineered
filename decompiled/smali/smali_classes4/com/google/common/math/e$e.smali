.class final Lcom/google/common/math/e$e;
.super Lcom/google/common/math/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field final a:D

.field b:Lcom/google/common/math/e;


# direct methods
.method constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/e;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/e$e;->a:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/e$e;->b:Lcom/google/common/math/e;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/google/common/math/e$e;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "x = %g"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
