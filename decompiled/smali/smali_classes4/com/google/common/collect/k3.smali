.class public final synthetic Lcom/google/common/collect/k3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Multimaps$a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/k3;->a:Lcom/google/common/collect/Multimaps$a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k3;->a:Lcom/google/common/collect/Multimaps$a$a;

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimaps$a$a;->b(Lcom/google/common/collect/Multimaps$a$a;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
