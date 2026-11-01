.class public final Lcom/transsion/ad/strategy/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/strategy/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/a;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/a;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/a;->a:Lcom/transsion/ad/strategy/a;

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

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/r;->p()V

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/HotSplashManager;->D()V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/r;->r()V

    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/HotSplashManager;->F()V

    return-void
.end method
