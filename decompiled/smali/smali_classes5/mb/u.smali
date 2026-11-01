.class public Lmb/u;
.super Ljava/lang/Object;

# interfaces
.implements Lic/b;


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile b:Lic/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmb/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lic/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmb/u;->c:Ljava/lang/Object;

    iput-object v0, p0, Lmb/u;->a:Ljava/lang/Object;

    iput-object p1, p0, Lmb/u;->b:Lic/b;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmb/u;->a:Ljava/lang/Object;

    sget-object v1, Lmb/u;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmb/u;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmb/u;->b:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmb/u;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lmb/u;->b:Lic/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
