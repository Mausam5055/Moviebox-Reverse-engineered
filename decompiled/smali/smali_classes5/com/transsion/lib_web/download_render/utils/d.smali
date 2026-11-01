.class public final Lcom/transsion/lib_web/download_render/utils/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/utils/d;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/download_render/utils/d;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/utils/d;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

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

    sget-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    return v0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v1, "DR_"

    const-string v2, "net connected"

    invoke-virtual {v0, v1, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v1, "DR_"

    const-string v2, "net disConnected"

    invoke-virtual {v0, v1, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/lib_web/download_render/utils/d;->b:Z

    return-void
.end method
