.class public final Lox/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lox/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lox/e$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lox/e$a;

    invoke-direct {v0}, Lox/e$a;-><init>()V

    sput-object v0, Lox/e$a;->a:Lox/e$a;

    new-instance v0, Lox/d;

    invoke-direct {v0}, Lox/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lox/e$a;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/videofloat/manager/VideoPipManagerImp;
    .locals 1

    invoke-static {}, Lox/e$a;->c()Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/transsion/videofloat/manager/VideoPipManagerImp;
    .locals 1

    new-instance v0, Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-direct {v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lox/e;
    .locals 1

    sget-object v0, Lox/e$a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lox/e;

    return-object v0
.end method
