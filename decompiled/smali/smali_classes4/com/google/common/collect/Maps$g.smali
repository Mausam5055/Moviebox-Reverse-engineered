.class Lcom/google/common/collect/Maps$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/Maps$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/f;)Lcom/google/common/collect/Maps$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Lcom/google/common/base/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$g;->a:Lcom/google/common/base/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/common/collect/Maps$g;->a:Lcom/google/common/base/f;

    invoke-interface {p1, p2}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
