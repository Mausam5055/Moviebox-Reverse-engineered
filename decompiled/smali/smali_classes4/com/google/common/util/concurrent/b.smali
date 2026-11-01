.class public abstract Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final b:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final c:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final d:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final e:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final f:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final g:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final h:Lcom/google/common/util/concurrent/ListenerCallQueue$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/b$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    new-instance v0, Lcom/google/common/util/concurrent/b$b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b$b;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v1}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/b;->d:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v2}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/b;->e:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/b;->f:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    invoke-static {v1}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/b;->g:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/b;->h:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/b$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$d;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private static b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/b$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method
