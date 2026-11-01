.class public final Lcom/transsion/upgradesdk/net/j;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/transsion/upgradesdk/net/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/upgradesdk/net/j;

    invoke-direct {v0}, Lcom/transsion/upgradesdk/net/j;-><init>()V

    sput-object v0, Lcom/transsion/upgradesdk/net/j;->a:Lcom/transsion/upgradesdk/net/j;

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

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "https://test-upgrade-api.palmplaystore.com/"

    goto :goto_0

    :cond_0
    const-string v0, "https://app-manage-api.shalltry.com/"

    :goto_0
    return-object v0
.end method
