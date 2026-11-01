.class public final Lox/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lox/b$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lox/b$a;

    invoke-direct {v0}, Lox/b$a;-><init>()V

    sput-object v0, Lox/b$a;->a:Lox/b$a;

    const-string v0, "pip_permission_dialog"

    sput-object v0, Lox/b$a;->b:Ljava/lang/String;

    const-string v0, "key_video_float_permission"

    sput-object v0, Lox/b$a;->c:Ljava/lang/String;

    new-instance v0, Lox/a;

    invoke-direct {v0}, Lox/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lox/b$a;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/videofloat/manager/i;
    .locals 1

    invoke-static {}, Lox/b$a;->e()Lcom/transsion/videofloat/manager/i;

    move-result-object v0

    return-object v0
.end method

.method private static final e()Lcom/transsion/videofloat/manager/i;
    .locals 1

    new-instance v0, Lcom/transsion/videofloat/manager/i;

    invoke-direct {v0}, Lcom/transsion/videofloat/manager/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lox/b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lox/b;
    .locals 1

    sget-object v0, Lox/b$a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lox/b;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lox/b$a;->b:Ljava/lang/String;

    return-object v0
.end method
