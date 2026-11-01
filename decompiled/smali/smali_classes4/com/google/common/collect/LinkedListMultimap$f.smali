.class Lcom/google/common/collect/LinkedListMultimap$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedListMultimap$g;

.field b:Lcom/google/common/collect/LinkedListMultimap$g;

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    return-void
.end method
