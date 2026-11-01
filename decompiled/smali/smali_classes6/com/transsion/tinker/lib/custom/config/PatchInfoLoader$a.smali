.class public final Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

.field public final b:Lou/d;


# direct methods
.method private constructor <init>(Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;Lou/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->a:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    iput-object p2, p0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b:Lou/d;

    return-void
.end method

.method public static a(Lou/d;)Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;
    .locals 2

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->AVAILABLE:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    invoke-direct {v0, v1, p0}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;-><init>(Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;Lou/d;)V

    return-object v0
.end method

.method public static b()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;
    .locals 3

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->NETWORK_ERROR:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;-><init>(Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;Lou/d;)V

    return-object v0
.end method

.method public static c()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;
    .locals 3

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->REVOKED_BY_SERVER:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;-><init>(Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;Lou/d;)V

    return-object v0
.end method
