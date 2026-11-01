.class public final Ltr/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ltr/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/e;

    invoke-direct {v0}, Ltr/e;-><init>()V

    sput-object v0, Ltr/e;->a:Ltr/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;->STREAM:Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    invoke-direct {p0}, Ltr/e;->a()Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;

    move-result-object v0

    sget-object v1, Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;->STREAM:Lcom/transsion/shorttv/_channel/model/ShortTvPlayMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
