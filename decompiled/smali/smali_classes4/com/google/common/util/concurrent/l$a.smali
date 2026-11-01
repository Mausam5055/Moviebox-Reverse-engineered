.class public abstract Lcom/google/common/util/concurrent/l$a;
.super Lcom/google/common/util/concurrent/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/r;


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/l;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/r;

    iput-object p1, p0, Lcom/google/common/util/concurrent/l$a;->a:Lcom/google/common/util/concurrent/r;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/l$a;->m()Lcom/google/common/util/concurrent/r;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic l()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/l$a;->m()Lcom/google/common/util/concurrent/r;

    move-result-object v0

    return-object v0
.end method

.method protected final m()Lcom/google/common/util/concurrent/r;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l$a;->a:Lcom/google/common/util/concurrent/r;

    return-object v0
.end method
