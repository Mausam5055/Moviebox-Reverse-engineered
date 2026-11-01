.class public final Lcom/transsion/upgradesdk/net/f;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/transsion/upgradesdk/net/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/upgradesdk/net/f;

    invoke-direct {v0}, Lcom/transsion/upgradesdk/net/f;-><init>()V

    sput-object v0, Lcom/transsion/upgradesdk/net/f;->a:Lcom/transsion/upgradesdk/net/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lzv/f;

    invoke-direct {v0}, Lzv/f;-><init>()V

    return-object v0
.end method
