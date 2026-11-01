.class public abstract Lcom/hisavana/mediation/config/ConfigContentHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/ConfigContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hisavana/mediation/config/ConfigContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hisavana/mediation/config/ConfigContentHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hisavana/mediation/config/ConfigContentHelper;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper$1;)V

    sput-object v0, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a:Lcom/hisavana/mediation/config/ConfigContentHelper;

    return-void
.end method

.method public static synthetic a()Lcom/hisavana/mediation/config/ConfigContentHelper;
    .locals 1

    sget-object v0, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a:Lcom/hisavana/mediation/config/ConfigContentHelper;

    return-object v0
.end method
