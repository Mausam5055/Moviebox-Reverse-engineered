.class Lcom/google/common/collect/Maps$e;
.super Lcom/google/common/collect/o4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->c(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/f;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/base/f;

    invoke-direct {p0, p1}, Lcom/google/common/collect/o4;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$e;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/base/f;

    invoke-interface {v0, p1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
