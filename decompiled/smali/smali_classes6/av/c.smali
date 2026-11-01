.class public final Lav/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lav/c;

.field private static b:Z

.field private static c:Z

.field private static d:Lkotlin/jvm/functions/Function0;

.field private static e:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lav/c;

    invoke-direct {v0}, Lav/c;-><init>()V

    sput-object v0, Lav/c;->a:Lav/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lav/c;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lav/c;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    sget-boolean v0, Lav/c;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-boolean v0, Lav/c;->b:Z

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lav/c;->c:Z

    sget-object v0, Lav/c;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lav/c;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lav/c;->b:Z

    sget-object v0, Lav/c;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lav/c;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final g(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lav/c;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lav/c;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lav/c;->c:Z

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lav/c;->b:Z

    return-void
.end method
