.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/util/concurrent/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/q;

    const-class v1, Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/q;

    return-void
.end method

.method static synthetic a()Lcom/google/common/util/concurrent/q;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/q;

    return-object v0
.end method
