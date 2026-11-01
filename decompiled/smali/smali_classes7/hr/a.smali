.class public final Lhr/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lhr/a;

.field private static b:Ljava/lang/String;

.field private static c:Lkotlin/jvm/functions/Function0;

.field private static d:Lkotlin/jvm/functions/Function4;

.field private static e:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhr/a;

    invoke-direct {v0}, Lhr/a;-><init>()V

    sput-object v0, Lhr/a;->a:Lhr/a;

    const-string v0, ""

    sput-object v0, Lhr/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lhr/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lhr/a;->c:Lkotlin/jvm/functions/Function0;

    sput-object v0, Lhr/a;->d:Lkotlin/jvm/functions/Function4;

    sput-object v0, Lhr/a;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lhr/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lhr/a;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public d(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportShow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastShow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lhr/a;->b:Ljava/lang/String;

    sput-object p2, Lhr/a;->c:Lkotlin/jvm/functions/Function0;

    sput-object p3, Lhr/a;->d:Lkotlin/jvm/functions/Function4;

    sput-object p4, Lhr/a;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/share/share/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhr/a;->d:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhr/a;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
