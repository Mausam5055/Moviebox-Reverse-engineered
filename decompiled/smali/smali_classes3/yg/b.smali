.class public final Lyg/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg/b$a;
    }
.end annotation


# static fields
.field public static final a:Lyg/b$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyg/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyg/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lyg/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lyg/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lyg/b;->e:Ljava/lang/Boolean;

    sget-object v2, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v2}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "x-md-global-color"

    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lyg/b;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyg/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lyg/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyg/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyg/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lyg/b;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic g(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lyg/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic h(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lyg/b;->d:Ljava/lang/String;

    return-void
.end method
