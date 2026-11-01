.class public final Lcom/transsion/sunflower/FSNManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sunflower/FSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sunflower/FSNManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/sunflower/FSNManager;
    .locals 1

    invoke-static {}, Lcom/transsion/sunflower/FSNManager;->c()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/transsion/sunflower/d;)Lcom/transsion/sunflower/FSNManager;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/sunflower/FSNManager;->c()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/transsion/sunflower/FSNManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/sunflower/FSNManager;-><init>(Lcom/transsion/sunflower/d;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/transsion/sunflower/FSNManager;->d(Lcom/transsion/sunflower/FSNManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method
