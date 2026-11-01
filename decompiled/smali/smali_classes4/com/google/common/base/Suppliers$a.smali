.class Lcom/google/common/base/Suppliers$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final d:Lcom/google/common/base/q;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Lcom/google/common/base/q;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/r;

    invoke-direct {v0}, Lcom/google/common/base/r;-><init>()V

    sput-object v0, Lcom/google/common/base/Suppliers$a;->d:Lcom/google/common/base/q;

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Suppliers$a;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/google/common/base/Suppliers$a;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic b()Ljava/lang/Void;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    sget-object v1, Lcom/google/common/base/Suppliers$a;->d:Lcom/google/common/base/q;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    invoke-interface {v2}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/base/Suppliers$a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->b:Lcom/google/common/base/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/common/base/Suppliers$a;->d:Lcom/google/common/base/q;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/Suppliers$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
