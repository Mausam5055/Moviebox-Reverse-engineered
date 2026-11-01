.class public final Lpc/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/perf/application/a$a;


# static fields
.field private static final a:Lsc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lpc/f;->a:Lsc/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    invoke-static {}, Lpc/e;->c()Lpc/e;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lpc/f;->a:Lsc/a;

    const-string v2, "FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
