.class public final Lcom/tn/lib/thread/ThreadPool$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/lib/thread/ThreadPool$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->c()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/thread/ThreadPool;

    return-object v0
.end method
