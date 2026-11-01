.class Lcom/google/common/hash/LongAddables$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/hash/h;
    .locals 2

    new-instance v0, Lcom/google/common/hash/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/LongAddables$PureJavaLongAddable;-><init>(Lcom/google/common/hash/LongAddables$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/LongAddables$b;->a()Lcom/google/common/hash/h;

    move-result-object v0

    return-object v0
.end method
