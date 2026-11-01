.class public final synthetic Lcom/google/common/collect/d1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/MultimapBuilder$f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/MultimapBuilder$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d1;->a:Lcom/google/common/collect/MultimapBuilder$f;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d1;->a:Lcom/google/common/collect/MultimapBuilder$f;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$f;->g()Lcom/google/common/collect/x3;

    move-result-object v0

    return-object v0
.end method
