.class final Lcom/wecloud/load/lib/SoLoadService$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wecloud/load/lib/SoLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1

    const-string v0, "successSoNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failSoNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/wecloud/load/lib/SoLoadService$b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$b;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->c:Z

    iget-boolean p1, p1, Lcom/wecloud/load/lib/SoLoadService$b;->c:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->c:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$b;->b:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/wecloud/load/lib/SoLoadService$b;->c:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GroupProcessResult(successSoNames="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failSoNames="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", res="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
