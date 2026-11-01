.class public final Lof/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof/b$a;
    }
.end annotation


# instance fields
.field private final a:Lof/a;


# direct methods
.method public constructor <init>(Lof/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lof/b;->a:Lof/a;

    return-void
.end method

.method static synthetic a(Lof/b;)Lof/a;
    .locals 0

    iget-object p0, p0, Lof/b;->a:Lof/a;

    return-object p0
.end method


# virtual methods
.method public b([S)[S
    .locals 5

    new-instance v0, Lhf/i;

    array-length v1, p1

    invoke-direct {v0, v1}, Lhf/i;-><init>(I)V

    new-instance v1, Lhf/c;

    invoke-direct {v1}, Lhf/c;-><init>()V

    new-instance v2, Lhf/f;

    invoke-direct {v2, v0, v1}, Lhf/f;-><init>(Lhf/i;Lhf/c;)V

    new-instance v3, Lhf/d;

    new-instance v4, Lhf/h;

    invoke-direct {v4, p1}, Lhf/h;-><init>([S)V

    invoke-direct {v3, v4}, Lhf/d;-><init>(Lhf/h;)V

    :try_start_0
    new-instance p1, Lof/b$a;

    invoke-direct {p1, p0, v1}, Lof/b$a;-><init>(Lof/b;Lhf/e;)V

    invoke-virtual {v3, p1}, Lhf/d;->a(Lhf/e;)V

    new-instance p1, Lof/b$a;

    invoke-direct {p1, p0, v2}, Lof/b$a;-><init>(Lof/b;Lhf/e;)V

    invoke-virtual {v3, p1}, Lhf/d;->a(Lhf/e;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lhf/i;->g()[S

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
