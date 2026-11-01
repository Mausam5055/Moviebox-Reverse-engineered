.class public Lcom/transsion/api/gateway/dns/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/transsion/api/gateway/dns/c;

.field public static a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/api/gateway/dns/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/transsion/api/gateway/dns/c;
    .locals 2

    sget-object v0, Lcom/transsion/api/gateway/dns/c;->INSTANCE:Lcom/transsion/api/gateway/dns/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/api/gateway/dns/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/dns/c;->INSTANCE:Lcom/transsion/api/gateway/dns/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/api/gateway/dns/c;

    invoke-direct {v1}, Lcom/transsion/api/gateway/dns/c;-><init>()V

    sput-object v1, Lcom/transsion/api/gateway/dns/c;->INSTANCE:Lcom/transsion/api/gateway/dns/c;

    sget-object v1, Lcom/transsion/api/gateway/dns/c;->INSTANCE:Lcom/transsion/api/gateway/dns/c;

    invoke-virtual {v1}, Lcom/transsion/api/gateway/dns/c;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/api/gateway/dns/c;->INSTANCE:Lcom/transsion/api/gateway/dns/c;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 8

    new-instance v0, Lcom/transsion/api/gateway/dns/b;

    const-string v1, "apigateway.tmctool.com"

    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/dns/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/api/gateway/dns/b;

    invoke-direct {v2, v1}, Lcom/transsion/api/gateway/dns/b;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/api/gateway/config/d;->a:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x1bb

    if-ge v5, v3, :cond_0

    aget-object v7, v1, v5

    invoke-virtual {v0, v7, v6}, Lcom/transsion/api/gateway/dns/b;->a(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/api/gateway/config/c;->a:[Ljava/lang/String;

    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v2, v5, v6}, Lcom/transsion/api/gateway/dns/b;->a(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/api/gateway/dns/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/api/gateway/dns/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
