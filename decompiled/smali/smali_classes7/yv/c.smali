.class public final Lyv/c;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lyv/a;

.field public static volatile e:Lyv/c;


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyv/a;

    invoke-direct {v0}, Lyv/a;-><init>()V

    sput-object v0, Lyv/c;->d:Lyv/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lyv/c;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Lyv/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyv/c;->a:[Ljava/lang/String;

    const-string v2, "https://test-upgrade-api.palmplaystore.com/"

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyv/c;->a:[Ljava/lang/String;

    const-string v2, "https://app-manage-api.shalltry.com/"

    aput-object v2, v0, v1

    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbw/i;->b:Lbw/h;

    invoke-virtual {v0, p1}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    const-string v1, "KV_UPGRADE_GSLB_COUNTRY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lbw/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyv/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lyv/c;->a:[Ljava/lang/String;

    new-instance v1, Lyv/b;

    invoke-direct {v1, p0, p1}, Lyv/b;-><init>(Lyv/c;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    return-void
.end method
