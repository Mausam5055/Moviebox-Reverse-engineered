.class Lcom/google/common/base/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/o;->g(Lcom/google/common/base/b;)Lcom/google/common/base/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Lcom/google/common/base/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/o$a;->a:Lcom/google/common/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/o$a;->b(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Lcom/google/common/base/o$c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Lcom/google/common/base/o$c;
    .locals 1

    new-instance v0, Lcom/google/common/base/o$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/o$a$a;-><init>(Lcom/google/common/base/o$a;Lcom/google/common/base/o;Ljava/lang/CharSequence;)V

    return-object v0
.end method
